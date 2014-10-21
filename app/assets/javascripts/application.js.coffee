# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#/* Set the defaults for DataTables initialisation */
$.extend true, $.fn.dataTable.defaults,
  sDom: "<'row'<'col-xs-6'l><'col-xs-6'f>r>" + "t" + "<'row'<'col-xs-6'i><'col-xs-6'p>>"
  oLanguage:
    sLengthMenu: "_MENU_ records per page"


# Default class modification 
$.extend $.fn.dataTableExt.oStdClasses,
  sWrapper: "dataTables_wrapper form-inline"
  sFilterInput: "form-control input-sm"
  sLengthSelect: "form-control input-sm"


# In 1.10 we use the pagination renderers to draw the Bootstrap paging,
# rather than  custom plug-in
if $.fn.dataTable.Api
  $.fn.dataTable.defaults.renderer = "bootstrap"
  $.fn.dataTable.ext.renderer.pageButton.bootstrap = (settings, host, idx, buttons, page, pages) ->
    api = new $.fn.dataTable.Api(settings)
    classes = settings.oClasses
    lang = settings.oLanguage.oPaginate
    btnDisplay = undefined
    btnClass = undefined
    attach = (container, buttons) ->
      i = undefined
      ien = undefined
      node = undefined
      button = undefined
      clickHandler = (e) ->
        e.preventDefault()
        api.page(e.data.action).draw false  if e.data.action isnt "ellipsis"

      i = 0
      ien = buttons.length

      while i < ien
        button = buttons[i]
        if $.isArray(button)
          attach container, button
        else
          btnDisplay = ""
          btnClass = ""
          switch button
            when "ellipsis"
              btnDisplay = "&hellip;"
              btnClass = "disabled"
            when "first"
              btnDisplay = lang.sFirst
              btnClass = button + ((if page > 0 then "" else " disabled"))
            when "previous"
              btnDisplay = lang.sPrevious
              btnClass = button + ((if page > 0 then "" else " disabled"))
            when "next"
              btnDisplay = lang.sNext
              btnClass = button + ((if page < pages - 1 then "" else " disabled"))
            when "last"
              btnDisplay = lang.sLast
              btnClass = button + ((if page < pages - 1 then "" else " disabled"))
            else
              btnDisplay = button + 1
              btnClass = (if page is button then "active" else "")
          if btnDisplay
            node = $("<li>",
              class: classes.sPageButton + " " + btnClass
              "aria-controls": settings.sTableId
              tabindex: settings.iTabIndex
              id: (if idx is 0 and typeof button is "string" then settings.sTableId + "_" + button else null)
            ).append($("<a>",
              href: ""
            ).html(btnDisplay)).appendTo(container)
            settings.oApi._fnBindAction node,
              action: button
            , clickHandler
        i++

    attach $(host).empty().html("<ul class=\"pagination\"/>").children("ul"), buttons
else
  $.fn.dataTable.defaults.sPaginationType = "bootstrap"
  
  # API method to get paging information 
  $.fn.dataTableExt.oApi.fnPagingInfo = (oSettings) ->
    iStart: oSettings._iDisplayStart
    iEnd: oSettings.fnDisplayEnd()
    iLength: oSettings._iDisplayLength
    iTotal: oSettings.fnRecordsTotal()
    iFilteredTotal: oSettings.fnRecordsDisplay()
    iPage: (if oSettings._iDisplayLength is -1 then 0 else Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength))
    iTotalPages: (if oSettings._iDisplayLength is -1 then 0 else Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength))

  
  # Bootstrap style pagination control 
  $.extend $.fn.dataTableExt.oPagination,
    bootstrap:
      fnInit: (oSettings, nPaging, fnDraw) ->
        oLang = oSettings.oLanguage.oPaginate
        fnClickHandler = (e) ->
          e.preventDefault()
          fnDraw oSettings  if oSettings.oApi._fnPageChange(oSettings, e.data.action)

        $(nPaging).append "<ul class=\"pagination\">" + "<li class=\"prev disabled\"><a href=\"\">&larr; " + oLang.sPrevious + "</a></li>" + "<li class=\"next disabled\"><a href=\"\">" + oLang.sNext + " &rarr; </a></li>" + "</ul>"
        els = $("a", nPaging)
        $(els[0]).bind "click.DT",
          action: "previous"
        , fnClickHandler
        $(els[1]).bind "click.DT",
          action: "next"
        , fnClickHandler

      fnUpdate: (oSettings, fnDraw) ->
        iListLength = 5
        oPaging = oSettings.oInstance.fnPagingInfo()
        an = oSettings.aanFeatures.p
        i = undefined
        ien = undefined
        j = undefined
        sClass = undefined
        iStart = undefined
        iEnd = undefined
        iHalf = Math.floor(iListLength / 2)
        if oPaging.iTotalPages < iListLength
          iStart = 1
          iEnd = oPaging.iTotalPages
        else if oPaging.iPage <= iHalf
          iStart = 1
          iEnd = iListLength
        else if oPaging.iPage >= (oPaging.iTotalPages - iHalf)
          iStart = oPaging.iTotalPages - iListLength + 1
          iEnd = oPaging.iTotalPages
        else
          iStart = oPaging.iPage - iHalf + 1
          iEnd = iStart + iListLength - 1
        i = 0
        ien = an.length

        while i < ien
          
          # Remove the middle elements
          $("li:gt(0)", an[i]).filter(":not(:last)").remove()
          
          # Add the new list items and their event handlers
          j = iStart
          while j <= iEnd
            sClass = (if (j is oPaging.iPage + 1) then "class=\"active\"" else "")
            $("<li " + sClass + "><a href=\"\">" + j + "</a></li>").insertBefore($("li:last", an[i])[0]).bind "click", (e) ->
              e.preventDefault()
              oSettings._iDisplayStart = (parseInt($("a", this).text(), 10) - 1) * oPaging.iLength
              fnDraw oSettings

            j++
          
          # Add / remove disabled classes from the static elements
          if oPaging.iPage is 0
            $("li:first", an[i]).addClass "disabled"
          else
            $("li:first", an[i]).removeClass "disabled"
          if oPaging.iPage is oPaging.iTotalPages - 1 or oPaging.iTotalPages is 0
            $("li:last", an[i]).addClass "disabled"
          else
            $("li:last", an[i]).removeClass "disabled"
          i++


#* TableTools Bootstrap compatibility
#* Required TableTools 2.1+
if $.fn.DataTable.TableTools
  
  # Set the classes that TableTools uses to something suitable for Bootstrap
  $.extend true, $.fn.DataTable.TableTools.classes,
    container: "DTTT btn-group"
    buttons:
      normal: "btn btn-default"
      disabled: "disabled"

    collection:
      container: "DTTT_dropdown dropdown-menu"
      buttons:
        normal: ""
        disabled: "disabled"

    print:
      info: "DTTT_print_info modal"

    select:
      row: "active"

  
  # Have the collection use a bootstrap compatible dropdown
  $.extend true, $.fn.DataTable.TableTools.DEFAULTS.oTags,
    collection:
      container: "ul"
      button: "li"
      liner: "a"


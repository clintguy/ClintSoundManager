{"filter":false,"title":"application.js","tooltip":"/app/assets/javascripts/application.js","undoManager":{"mark":2,"position":2,"stack":[[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":17,"column":0},"end":{"row":17,"column":27}},"text":"//= require bootstrap-alert"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":16,"column":21},"end":{"row":17,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":19,"column":0},"end":{"row":19,"column":15}},"text":"$(function () {"},{"action":"insertText","range":{"start":{"row":19,"column":15},"end":{"row":20,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":20,"column":0},"end":{"row":27,"column":0}},"lines":["  var alert = $('.alert');","  if (alert.length > 0) {","    alert.show().animate({height: alert.outerHeight()}, 200);","    window.setTimeout(function() {","      alert.slideUp();","    }, 3000);","  }"]},{"action":"insertText","range":{"start":{"row":27,"column":0},"end":{"row":27,"column":3}},"text":"});"}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":12,"column":23},"end":{"row":12,"column":23},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1414271446054,"hash":"ba9dd1879129c4ce4c597a1d335192fce22e4721"}
{"filter":false,"title":"users_controller.rb","tooltip":"/app/controllers/users_controller.rb","undoManager":{"mark":52,"position":52,"stack":[[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":45},"end":{"row":1,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":1,"column":0},"end":{"row":1,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":1,"column":2},"end":{"row":2,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":2,"column":0},"end":{"row":2,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":2},"end":{"row":3,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":3,"column":0},"end":{"row":3,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":3,"column":2},"end":{"row":4,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":4,"column":0},"end":{"row":4,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":2},"end":{"row":2,"column":12}},"text":"  def show"},{"action":"insertText","range":{"start":{"row":2,"column":12},"end":{"row":3,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":3,"column":0},"end":{"row":4,"column":0}},"lines":["    @user = User.find(params[:id])"]},{"action":"insertText","range":{"start":{"row":4,"column":0},"end":{"row":4,"column":5}},"text":"  end"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":2,"column":2},"end":{"row":2,"column":4}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":3,"column":34},"end":{"row":4,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":4,"column":0},"end":{"row":4,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":4,"column":4},"end":{"row":4,"column":12}},"text":"debugger"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":4,"column":0},"end":{"row":4,"column":12}},"text":"    debugger"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":3,"column":34},"end":{"row":4,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":8,"column":0},"end":{"row":8,"column":5}},"text":"  end"},{"action":"removeLines","range":{"start":{"row":7,"column":0},"end":{"row":8,"column":0}},"nl":"\n","lines":["  def new"]},{"action":"insertText","range":{"start":{"row":7,"column":0},"end":{"row":7,"column":9}},"text":"  def new"},{"action":"insertText","range":{"start":{"row":7,"column":9},"end":{"row":8,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":8,"column":0},"end":{"row":9,"column":0}},"lines":["    @user = User.new"]},{"action":"insertText","range":{"start":{"row":9,"column":0},"end":{"row":9,"column":5}},"text":"  end"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":9,"column":5},"end":{"row":10,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":10,"column":0},"end":{"row":10,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":10,"column":2},"end":{"row":11,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":11,"column":0},"end":{"row":11,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":11,"column":2},"end":{"row":11,"column":14}},"text":"  def create"},{"action":"insertText","range":{"start":{"row":11,"column":14},"end":{"row":12,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":12,"column":0},"end":{"row":17,"column":0}},"lines":["    @user = User.new(params[:user])    # Not the final implementation!","    if @user.save","      # Handle a successful save.","    else","      render 'new'"]},{"action":"insertText","range":{"start":{"row":17,"column":0},"end":{"row":17,"column":7}},"text":"    end"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":11,"column":2},"end":{"row":11,"column":4}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":17,"column":2},"end":{"row":17,"column":3}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":17,"column":2},"end":{"row":17,"column":3}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":17,"column":5},"end":{"row":18,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":18,"column":0},"end":{"row":18,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":16,"column":18},"end":{"row":17,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":17,"column":0},"end":{"row":17,"column":6}},"text":"      "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":17,"column":6},"end":{"row":17,"column":7}},"text":"e"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":17,"column":7},"end":{"row":17,"column":8}},"text":"n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":17,"column":8},"end":{"row":17,"column":9}},"text":"d"},{"action":"removeText","range":{"start":{"row":17,"column":4},"end":{"row":17,"column":6}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":18,"column":5},"end":{"row":19,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":19,"column":0},"end":{"row":19,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":19,"column":2},"end":{"row":20,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":20,"column":0},"end":{"row":20,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":20,"column":2},"end":{"row":21,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":21,"column":0},"end":{"row":21,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":20,"column":2},"end":{"row":20,"column":11}},"text":"  private"},{"action":"insertText","range":{"start":{"row":20,"column":11},"end":{"row":21,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":21,"column":0},"end":{"row":25,"column":0}},"lines":["","    def user_params","      params.require(:user).permit(:name, :email, :password,","                                   :password_confirmation)"]},{"action":"insertText","range":{"start":{"row":25,"column":0},"end":{"row":25,"column":7}},"text":"    end"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":20,"column":3},"end":{"row":20,"column":4}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":20,"column":2},"end":{"row":20,"column":3}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":34},"end":{"row":24,"column":35}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":32},"end":{"row":24,"column":34}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":30},"end":{"row":24,"column":32}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":28},"end":{"row":24,"column":30}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":26},"end":{"row":24,"column":28}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":24},"end":{"row":24,"column":26}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":22},"end":{"row":24,"column":24}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":20},"end":{"row":24,"column":22}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":18},"end":{"row":24,"column":20}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":16},"end":{"row":24,"column":18}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":14},"end":{"row":24,"column":16}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":12},"end":{"row":24,"column":14}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":10},"end":{"row":24,"column":12}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":8},"end":{"row":24,"column":10}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":6},"end":{"row":24,"column":8}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":4},"end":{"row":24,"column":6}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":2},"end":{"row":24,"column":4}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":24,"column":0},"end":{"row":24,"column":2}},"text":"  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":23,"column":60},"end":{"row":24,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":23,"column":60},"end":{"row":23,"column":61}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":21},"end":{"row":12,"column":34}},"text":"params[:user]"},{"action":"insertText","range":{"start":{"row":12,"column":21},"end":{"row":12,"column":32}},"text":"user_params"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":33},"end":{"row":12,"column":68}},"text":"    # Not the final implementation!"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":14,"column":6},"end":{"row":14,"column":33}},"text":"# Handle a successful save."},{"action":"insertText","range":{"start":{"row":14,"column":6},"end":{"row":14,"column":23}},"text":"redirect_to @user"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":13,"column":17},"end":{"row":14,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":14,"column":0},"end":{"row":14,"column":6}},"text":"      "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":14,"column":6},"end":{"row":14,"column":52}},"text":"flash[:success] = \"Welcome to the Sample App!\""}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":11,"column":12},"end":{"row":11,"column":12},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":38,"mode":"ace/mode/ruby"}},"timestamp":1414224660024,"hash":"2a6baf0ad6465c718745f213478efde66ea0d22f"}
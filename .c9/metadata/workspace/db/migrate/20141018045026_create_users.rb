{"filter":false,"title":"20141018045026_create_users.rb","tooltip":"/db/migrate/20141018045026_create_users.rb","undoManager":{"mark":0,"position":0,"stack":[[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":0},"end":{"row":0,"column":43}},"text":"class CreateUsers < ActiveRecord::Migration"},{"action":"insertText","range":{"start":{"row":0,"column":43},"end":{"row":1,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":1,"column":0},"end":{"row":9,"column":0}},"lines":["  def change","    create_table :users do |t|","      t.string :name","      t.string :email","","      t.timestamps","    end","  end"]},{"action":"insertText","range":{"start":{"row":9,"column":0},"end":{"row":9,"column":3}},"text":"end"}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":9,"column":3},"end":{"row":9,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1414458250066,"hash":"5e9aaa1ec5b759dbd7facdb180fba08c2232c361"}
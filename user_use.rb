user1 = User.new
user1.firstname = 'Cyril'
user1.save

user2 = User.create(:firstname => '...')
user2.destroy

all_user = User.find :all

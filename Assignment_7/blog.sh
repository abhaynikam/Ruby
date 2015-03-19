rails new blog

cd blog/

rails g model Person name:string email:string type:string

cd app/models/
touch user.rb 
echo "class User < Person;
	has_many :posts
end" >> user.rb

touch admin.rb 
echo "class Admin < Person;
	has_many :accounts
end" >> admin.rb

cd ..

cd ..

rails g model Post content:string description:text user:references

rails g model Account account_num:integer admin:references

rake db:migrate

rails c

#adding post for new user
user = User.create(name:"Vaibhav",email:"vaibhav@weboniselab.com")
tmp = user.posts.build(content:"ROR blog",description:"ROR")
tmp.save

user = User.create(name:"Dnyaneshwar",email:"dnyaneshwar@weboniselab.com")
tmp = user.posts.build(content:"Ruby blog",description:"Ruby")
tmp.save

user = User.create(name:"Sudeep",email:"sudeep@weboniselab.com")
tmp = user.posts.build(content:"Java blog",description:"Java")
tmp.save

user = User.create(name:"Akash",email:"akash@weboniselab.com")
tmp = user.posts.build(content:"My SQL blog",description:"My SQL")
tmp.save

user = User.create(name:"Tejaswini",email:"tejaswini@weboniselab.com")
tmp = user.posts.build(content:"Monogo DB blog",description:"Monogo DB")
tmp.save

user = User.create(name:"Pallavi",email:"pallavi@weboniselab.com")
tmp = user.posts.build(content:"Data Structure blog",description:"Data Structure")
tmp.save

#adding new account for admin
admin = Admin.create(name:"Abhay",email:"abhay@weboniselab.com")
tmp = admin.accounts.build(account_num:101)
tmp.save

#finding user and adding post
user =  User.find_by(id:2)
tmp = user.posts.build(content:"Data structure blog",description:"Data Structure")
tmp.save

#finding admin and adding account
admin = Admin.find_by(id:7)
tmp = admin.accounts.build(account_num:102)
tmp.save

User.all
Admin.all
Post.all
Account.all
Person.all
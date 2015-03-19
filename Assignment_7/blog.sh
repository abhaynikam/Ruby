rails new new_sti

cd sti_app/

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

User.create(name:"Vaibhav",email:"vaibhav@weboniselab.com")
User.create(name:"Dnyaneshwar",email:"dnyaneshwar@weboniselab.com")
User.create(name:"Sudeep",email:"sudeep@weboniselab.com")
User.create(name:"Akash",email:"akash@weboniselab.com")
User.create(name:"Tejaswini",email:"tejaswini@weboniselab.com")

Admin.create(name:"Abhay",email:"abhay@weboniselab.com")

Post.create(content:"ROR blog",description:"ROR",user_id:1)
Post.create(content:"Ruby blog",description:"Ruby",user_id:1)
Post.create(content:"Java blog",description:"Java",user_id:1)
Post.create(content:"My SQL blog",description:"My SQL",user_id:2)
Post.create(content:"Monogo DB blog",description:"Monogo DB",user_id:3)

Account.create(account_num:839054264125,admin_id:6)

User.all
Admin.all
Post.all
Account.all
Person.all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# params = {"email"=>"cwilliams@strongview.com", "price"=>"1"}

client = Client.create(name: "svdemo2", ms_username: "allyapi", ms_password: "strongview", ms_api_host: "svdemo2.strongviewdemo.com")
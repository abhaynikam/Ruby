module Display
	def search_product
		puts "Enter the Product Id:"
		prod_id = gets.chomp
		file1 = CSV.read('inventory.csv',headers:true)
		file1.each do |row|
			if(row['id'] == prod_id)
				puts row.to_s
			end
		end
	end

	def list_product
		file = File.open("inventory.csv","r+")
		puts file.read
		file.close
	end
end


class ShopKeeper
	include Display
	require 'csv'
	def set_product_details
		puts "Product Details:"
		
		puts "Product Name: "
		@prod_name =  gets.chomp.to_s
		puts "Product Price: "
		@prod_price =  gets.chomp.to_s
		puts "Product Stock Item: "
		@prod_stock =  gets.chomp.to_s
		puts "Product Company Name: "
		@prod_company_name =  gets.chomp.to_s
	end

	def prod_id
		file1 = CSV.read('inventory.csv',headers:true)
		file1.each do |row|
			@prod_id = row['id']	
		end
		@prod_id = @prod_id.to_i + 1
		@prod_id
	end

	def prod_name
		@prod_name
	end

	def prod_price
		@prod_price
	end

	def prod_stock
		@prod_stock
	end

	def prod_company_name
		@prod_company_name
	end

	def add_product
		file = CSV.open('inventory.csv',"a+")
		file << [prod_id,@prod_name,@prod_price,@prod_stock,@prod_company_name]
		puts "added"
		file.close
	end

	def remove_product
		puts "Enter the Product Id:"
		pro_id = gets.chomp
		file1 = CSV.read('inventory.csv',headers:true)
		file2 = File.open('temp.csv','w')
		count = 0
		file1.each do |row|
			if(row['id'] == pro_id)
				file1.delete(count)
				file2.write(file1)
			end
			count = count+1
		end
		file1.delete('inventory.csv')
		File.rename("temp.csv","inventory.csv")
		file2.close

		
	end

	def edit_product
		puts "Enter the Product Id:"
		prod_id = gets.chomp
		file1 = CSV.read('inventory.csv',headers:true)
		file2 = File.open('temp.csv',"w")
		file1.each do |row|
			if(row['id'] == prod_id)
				print "inside"
				row['name'] = @prod_name
				row['price'] = @prod_price
				row['stock'] = @prod_stock
				row['company_name'] = @prod_company_name
			end
		end
		file2.write(file1)
		file1.delete('inventory.csv')
		File.rename("temp.csv","inventory.csv")
		file2.close
	end
end

class User
	include Display
	require 'csv'
	def set_user_details
		puts "Users Details:"
		puts "Product ID: "
		@prod_id =  gets.chomp.to_s
		puts "User Name: "
		@user_name =  gets.chomp.to_s
		puts "Card Number: "
		@card_num =  gets.chomp.to_s
		puts "CVV: "
		@cvv =  gets.chomp.to_s
		
	end

	def prod_id
		@prod_id
	end

	def user_name
		@user_name
	end

	def card_num
		@card_num
	end

	def cvv
		@cvv
	end

	def add_user
		file = CSV.open('order.csv',"a+")
		file << [@user_name,@card_num,@cvv]
		file.close
	end

	def is_in_stock
		puts "Enter the Product Id:"
		prod_id = gets.chomp
		file1 = CSV.read('inventory.csv',headers:true)
		file2 = File.open('temp.csv',"w")
		file1.each do |row|
			if(row['id'] == prod_id)
				if(row['stock'] != '0')
					row['stock'] = row['stock'].to_i - 1 
				else
					puts "Product not in STOCK!!! You cannot buy it"
				end
			end
		end
		file2.write(file1)
		file1.delete('inventory.csv')
		File.rename("temp.csv","inventory.csv")
		file2.close
	end

end

obj = ShopKeeper.new
obj1 = User.new

while(true)
	puts "Enter Option:\n1.Shopkeeper\n2.User\n3.Exit\nOpiton:"
	option = gets.chomp.to_i

	case option
	when 1
		while(true)
			puts "Enter Options:\n1.Add Product\n2.Delete Product\n3.List Product\n4.Search Product\n5.Edit Product\n6.Exit\nOption:"
			s_option = gets.chomp.to_i
		
			case s_option
			when 1
				obj.set_product_details
				obj.add_product
			when 2 
				obj.remove_product
			when 3
				obj.list_product
			when 4
				obj.search_product
			when 5
				obj.set_product_details
				obj.edit_product
			when 6
				break
			end
		end
	when 2
		while(true)
			puts "Enter Options:\n1.Search Product\n2.List Product\n3.Buy Product\n4.Exit"
			u_option = gets.chomp.to_i

			case u_option
			when 1
				obj1.search_product
			when 2 
				obj1.list_product
			when 3
				obj1.add_user
				obj1.is_in_stock
			when 4
				break
			end
		end
	when 3
		break
	end
end



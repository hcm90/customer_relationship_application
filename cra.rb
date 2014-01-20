require_relative 'contact'
require_relative 'rolodex'

class CRA

	attr_accessor :name, :age, :email
	attr_reader :pass

	def initialize
		@rolodex = Rolodex.new
		@rolodex.new_contact("Base", 23, "email@gmail.com")
		main_menu
	end

 	def print_main_menu
 		puts "[1] Add a new contact"
 		puts "[2] Modify an existing contact"
 		puts "[3] Delete a contact"
 		puts "[4] Display all the contacts"
 		puts "[5] Display an attribute"
 		puts "[6] Exit"
 		puts "Enter a number: "
 	end

 	def main_menu
 		print_main_menu
 		user_selected = gets.to_i
 		call_option(user_selected)
 	end

	def call_option(user_selected)
  		add_new_contact if user_selected == 1
  		modify_existing_contact if user_selected == 2
  		delete_contact if user_selected == 3
  		display_contact if user_selected == 4
  		display_attr if user_selected == 5
  		exit if user_selected == 6
  		# To be clear, the methods add_new_contact and modify_existing_contact
  		# haven't been defined yet
  	end

	def add_new_contact
		puts "Enter name:"
		name = gets.chomp.capitalize
		puts "Enter age:"
		age = gets.chomp
		puts "Enter email"
		email = gets.chomp.downcase
		contact = @rolodex.new_contact(name, age, email)
		puts "\e[H\e[2J"
		puts "Customer has been added:"
		@rolodex.display_contact(contact)
		main_menu
	end

	def modify_existing_contact
		puts "Specify name:"
		name = gets.chomp.downcase
        contact = @rolodex.find_by_name(name)
        if pass == "true"
        puts "Customer found. Which attribute would you like to change? (name/age/email)"
        attrib = gets.chomp.downcase
        puts "What shall be the new value of this customer's #{attrib}?"
        newattrib = gets.chomp
        @rolodex.modify_attrib(contact, attrib, newattrib)
		#puts "Enter name:"
		#name = gets.chomp
		#contact = @rolodex.find_by_name(name)
		puts "\e[H\e[2J"
		puts "Revised customer data:"
		@rolodex.display_contact(contact)
		end
		main_menu
	end

	def delete_contact
		puts "Please enter the name of the contact you wish to delete:"
		name = gets.chomp.downcase
        #contact = find_by_name(name)
        contact = @rolodex.find_by_name(name)
        @rolodex.deletecontact(contact)
        main_menu
    end

    def display_contact
    	@rolodex.display_all_contacts
    	main_menu
    end

 end


cra = CRA.new


 


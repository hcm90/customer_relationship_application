require_relative 'contact'

class Rolodex

attr_accessor :name, :age, :email
attr_reader :pass

	def initialize
		@contacts = []
		@id = 1000
	end

	def new_contact(name, age, email)
		@id += 1
		@contacts << Contact.new(@id, name, age, email)
		@contacts.last
	end

	# def find_contact(id)
	# 	@contacts.each do |c|
	# 		return c if c.id == id
	# 	end
	# end

	def display_contact(contact)
	 	puts "Name: #{contact.name}"
	 	puts "Age: #{contact.age}"
	 	puts "Email: #{contact.email}"
	end

	def display_all_contacts
		@contacts.each do |contact|
			display_contact(contact)
		end
	end

	def find_by_name(name)
		#@contacts.each {|contact| return contact if contact.name.capitalize == name.capitalize}
		#{}"No such contact exists"
		@contacts.each do |contact|
		 	if contact.name.downcase == name.downcase
		 		pass == "true"
		 		contact = contact
		 		display_contact(contact)
		 	else
		 		puts "Name is not in database."
		 		pass == "false"
		 	end
		end
	end

	def display_attrib(contact, attrib)
		if attrib == "name"
			contact.name
		elsif attrib == "age"
				contact.age
		elsif attrib == "email"
				contact.email
		end
	end

	def modify_attrib(contact, attrib, newattrib)
		contact.name == newattrib if attrib == "name"
		contact.age == newattrib.to_i if attrib == "age"
		contact.email == newattrib if attrib == "email"
	end

	def deletecontact(contact)
		@contacts.delete(contact)
	end


end

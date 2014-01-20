=begin
This is a customer management application which stores the customers' names, emails, addresses, and id numbers.
(USER STORY)
1. As a user, I should be able to create a new contact.
2. As a user, I should be able to modify a contact.
etc, etc.

What properties should we include?
	- name?
	- email?
	- address?
	address	
You can't use an index. If you delete an entry, you'll reset the index value for each customer.
Thus, each customer will need to be assigned an id.

Defining our Mental Model

Contact
	- ID
	- Name
	- Address
	- Age
	- Email

Rolodex
	- List of contacts

When we define a class, we are creating the recipe.
The instance of the class is the meal.

=end

class Contact
	attr_accessor :name, :age, :email
	attr_reader :id # Sets up a method for the object. This is why the .each method works in the Rolodex class!!!
# Suppose we didn't use attr_accessor. You won't have a way to expose the data in the instance variable to the world.
# attr_accessor is a macro which converts the specified symbols into methods for use.
	def initialize(id, name, age, email)
		@id = id #@ makes an instance variable. This is how objects remember their data in an application.
		@name = name
		@age = age
		@email = email

	end

end
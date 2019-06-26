# your code goes here
require 'pry'
class Person

	attr_reader :name
	attr_accessor :bank_account, :happiness, :hygiene

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end 

	def happiness
		if @happiness < 0
			@happiness = 0
		elsif @happiness > 10
			@happiness = 10
		else
			@happiness
		end
	end

	def hygiene
		if @hygiene < 0
			@hygiene = 0
		elsif @hygiene > 10
			@hygiene = 10
		else 
			@hygiene
		end
	end

	def happy?
		if @happiness > 7
			true
		else
			false
		end
	end

	def clean?
		if @hygiene > 7
			true
		else 
			false 
		end
	end
	
	def get_paid(salary)
		@bank_account += salary
		"all about the benjamins"
	end

	def take_bath
		#take hygiene & increase by 4
		get_clean = self.hygiene + 4
		self.hygiene = get_clean
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		get_dirty = self.hygiene - 3
		self.hygiene = get_dirty

		get_happy = self.happiness + 2
		self.happiness = get_happy
		"♪ another one bites the dust ♫"

	end

	def call_friend(friend)
		phone_call = self.happiness + 3
		self.happiness = phone_call
		friend.happiness = friend.happiness + 3
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(friend, topic)
		if topic == "politics"
			return "blah blah partisan blah lobbyist"
			politics_call = self.happiness - 2
			self.happiness = politics_call

			friend_feeling = friend.happiness - 2
			friend.happiness = friend_feeling
		end
	end





end
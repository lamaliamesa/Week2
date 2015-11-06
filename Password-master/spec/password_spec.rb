require_relative '../models/password.rb'
require 'rspec'


RSpec.describe PasswordChecker do 
	before :each do
		@passwordchecker = PasswordChecker.new
	end

	describe '#is_bigger_than_7?' do
		it 'checks for the input string to be longer than 7 characters' do
			expect(@passwordchecker.is_bigger_than_7? "espectro123").to eq(true)
		end

		it 'checks for the input string to be less than 7 and returns false' do
			expect(@passwordchecker.is_bigger_than_7? "spectre").to eq(false)
		end
	end

	describe '#letter_number_symbol?' do
		it 'checks for the input to include at least 1 letter, 1 number, and 1 symbol' do
			expect(@passwordchecker.letter_number_symbol? "esPectro123%").to eq(true)
		end

		it 'checks for the input to not include at least 1 letter, 1 number, and 1 symbol. false' do
			expect(@passwordchecker.letter_number_symbol? "espectro123").to eq(false)
		end
		it 'checks for uppercase' do
			expect(@passwordchecker.letter_number_symbol?"Espectro123%").to eq (true)
		end
		it 'checks for no uppercase' do
			expect(@passwordchecker.letter_number_symbol?"espectro123%").to eq (false)
		end
		it 'checks for downcase' do
			expect(@passwordchecker.letter_number_symbol?"ESPECTRO123%").to eq (false)
		end


	end

	describe '#no_domain_no_email?' do
		it 'returns true' do
			expect(@passwordchecker.no_domain_no_email? "espectro123%","rafa@ironhack.com").to eq(true)
		end

		it 'returns false because person name' do
			expect(@passwordchecker.no_domain_no_email? "1234rafa","rafa@ironhack.com").to eq(false)
		end

		it 'returns false because domain name' do
			expect(@passwordchecker.no_domain_no_email? "1234ironhack","rafa@ironhack.com").to eq(false)
		end
	end

	describe '#check_password' do
		it 'returns true if the password passes all conditions' do
			expect(@passwordchecker.check_password('rafa@ironhack.com','Espectro123%')).to eq(true)
		end

		it 'returns false if ANY of the conditions are valid' do
			expect(@passwordchecker.check_password('rafa@ironhack.com','Espectrorafa123%')).to eq(false)
		end
	end
end
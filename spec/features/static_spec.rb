require 'rails_helper'

describe 'navigate' do
	describe 'homepage' do
		it 'can be reached successfully' do
			visit root_path
			expect(page.status_code).to  eq(200)
		end
	end

	# describe 'homepage' do
	# 	it 'can be reached successfully' do
	# 		visit static_homepage_url
	# 		expect(page.status_code).to  eq(200)
	# 	end
	# end
	
end
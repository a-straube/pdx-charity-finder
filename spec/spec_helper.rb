require('rspec')
require('pg')
require('organization')
require('organization_type')

DB = PG.connect({:dbname => "pdx_charity_finder_test"})

RSpec.configure do |config|
	config.after(:each) do
		DB.exec("DELETE FROM organizations *;")
		DB.exec("DELETE FROM organization_types *;")
	end
end
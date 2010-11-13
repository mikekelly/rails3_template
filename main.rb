run "rm -Rf README public/index.html public/javascripts/* test app/views/layouts/* app/helpers/*"

gem "formtastic", :git => "git://github.com/justinfrench/formtastic.git", :branch => "rails3"
gem 'flutie'

gem "devise"
gem "cancan"

#gem 'will_paginate', '>=3.0.pre'
#gem 'friendly_id', '~>3.1'

#gem 'rspec', '>=2.0.0.alpha.11', :group => :test
#gem 'rspec-rails', '>=2.0.0.alpha.11', :group => :test
#gem 'remarkable', '>=4.0.0.alpha4', :group => :test
#gem "factory_girl_rails" # BUG => , :group => :test

#gem 'cucumber', ">=0.6.3", :group => :cucumber
#gem 'cucumber-rails', ">=0.3.2", :group => :cucumber
#gem 'capybara', ">=0.3.6", :group => :cucumber
#gem 'database_cleaner', ">=0.5.0", :group => :cucumber

#gem 'spork', ">=0.8.4", :group => :cucumber
#gem "pickle", :git => "git://github.com/codegram/pickle.git", :group => :cucumber

#gem 'inploy'

#gem 'rails3-generators', :git => "git://github.com/indirect/rails3-generators.git"

# application  <<-GENERATORS 
# config.generators do |g|
#   g.template_engine :erubis
#   g.test_framework  :rspec, :fixture => true, :views => false
#   g.fixture_replacement :factory_girl, :dir => "spec/support/factories"
# end
# GENERATORS

run "bundle install"

#generate "rspec:install"
#generate "cucumber:install --capybara --rspec" # --spork"
#generate "friendly_id"

generate "formtastic:install"
run "rake flutie:install"

get "https://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/rails.js"
get "https://github.com/mikekelly/rails3_template/raw/master/screen.css" ,"public/stylesheets/screen.css"
get "https://github.com/mikekelly/rails3_template/raw/master/application.html.erb" ,"app/views/layouts/application.html.erb"
get "https://github.com/mikekelly/rails3_template/raw/master/application_helper.rb" ,"app/helpers/application_helper.rb" 
#get "https://github.com/mikekelly/infoether-framework/raw/master/public/stylesheets" ,"app/views/layouts/application.html.erb"  
#get "https://github.com/dcrec1/rails3_template/raw/master/factory_girl.rb", "features/support/factory_girl.rb"

git :init
git :add => '.'
git :commit => '-am "Initial commit"'
 
puts "!! Fact x Importance = News !!"

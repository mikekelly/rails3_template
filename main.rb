run "rm -Rf README public/index.html public/javascripts/* test app/views/layouts/* app/helpers/*"

gem "mongoid", "2.0.0.rc.6"
gem "bson_ext", "~>1.2"

gem "flutie", "~>1.1"
gem "devise"
#gem "cancan"

gem "jquery-rails", ">= 0.2.6"

gem "rspec-rails", "~>2.4", :group => :development

gem "rspec", :group =>:test
gem "cucumber-rails", :group => :test
gem "factory_girl_rails", :group => :test
gem "capybara", :group => :test
gem "database_cleaner", :group => :test


run "bundle install"

application  <<-GENERATORS
  config.generators do |g|
    g.template_engine :erb
    g.orm :mongoid
  end
GENERATORS

generate "mongoid:config"

generate "rspec:install"
generate "cucumber:install --capybara --rspec"

generate "jquery:install"

generate "devise:install"

run "rake flutie:install"

run "wget --no-check-certificate 'https://github.com/mikekelly/rails3_template/raw/master/screen.css' -O public/stylesheets/screen.css"
run "wget --no-check-certificate 'https://github.com/mikekelly/rails3_template/raw/master/application.html.erb' -O app/views/layouts/application.html.erb"
run "wget --no-check-certificate 'https://github.com/mikekelly/rails3_template/raw/master/application_helper.rb' -O app/helpers/application_helper.rb"

git :init
git :add => '.'
git :commit => '-am "Initial commit"'
 
puts "!! Fact x Importance = News !!"

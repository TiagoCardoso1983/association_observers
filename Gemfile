source 'https://rubygems.org'
gemspec

group :development do
  gem "yard",       "0.8.2.1", :require => false
end

group :test do
  gem "delayed_job_active_record", :require => false
  gem "resque",                    :require => false
  gem "sidekiq",                   :require => false unless RUBY_VERSION == "1.8.7"
end

gem 'activerecord'
gem 'datamapper'
gem 'dm-mysql-adapter'

platforms :ruby do
  gem 'mysql2'

end


platforms :jruby do
  gem 'jruby-openssl'
  gem 'activerecord-jdbc-adapter'
  gem 'activerecord-jdbcsqlite3-adapter'
  gem 'jdbc-mysql'
end

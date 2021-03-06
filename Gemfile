source 'https://rubygems.org'

# Standard Rails gems
gem 'rails', '4.1.8'
gem 'sass-rails', '4.0.4'
gem 'uglifier', '2.5.3'
gem 'coffee-rails', '4.1.0'
gem 'jquery-rails', '3.1.2'
gem 'turbolinks', '2.5.2'
gem 'jbuilder', '2.2.5'
gem 'bcrypt', '3.1.9'
gem 'aws-sdk'
gem "mini_magick"

gem 'jquery-turbolinks'


gem "compass-rails", "~> 1.1.2"

# Necessary for Windows OS (won't install on *nix systems)
gem 'tzinfo-data', platforms: [:mingw, :mswin]

# Kaminari: https://github.com/amatsuda/kaminari
gem 'kaminari', '0.16.1'

# Friendly_id: https://github.com/norman/friendly_id
gem 'friendly_id', '5.0.4'

# Font-awesome: https://github.com/FortAwesome/font-awesome-sass
gem 'font-awesome-sass', '4.2.2'

gem "paperclip", :git => "http://github.com/thoughtbot/paperclip.git"

gem 'instagram'

gem 'newrelic_rpm'

gem 'aws-sdk-core'

gem 'cloudinary'

gem 'mandrill-api'

gem 'carrierwave'

gem 'oridomi-rails'


gem 'bootscaf', group: :development

gem 'oembed'

# Bootstrap 3: https://github.com/twbs/bootstrap-sass
gem 'bootstrap-sass', '3.3.1.0'

gem "prawn"

gem 'rmagick', '2.13.2', :git=>'http://github.com/rmagick/rmagick.git'

#gema que dá uns erros mais uteis
group :development, :production do
  gem "better_errors"
  gem "binding_of_caller"
end

# Figaro: https://github.com/laserlemon/figaro
group :development, :test do
  gem 'figaro', '1.0.0'
end

# SQLite 3
group :development, :test do
  gem 'sqlite3', '1.3.10'
end

# Devise: https://github.com/plataformatec/devise
gem 'devise', '3.4.1'

# Rails 12factor for Heroku: https://github.com/heroku/rails_12factor
group :production do
  gem 'rails_12factor'
end

# PostgreSQL gem for Heroku
group :production do
  gem 'pg'
end

# Unicorn: http://unicorn.bogomips.org
group :production do
  gem 'unicorn'
end
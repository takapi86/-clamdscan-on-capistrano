lock "~> 3.14.0"

set :application, "app"
set :repo_url, "https://github.com/takapi86/clamdscan-on-capistrano.git"
set :deploy_to, '/var/www/app'
set :user, 'www-data'
set :group, 'www-data'

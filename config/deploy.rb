lock "~> 3.14.0"

set :application, "app"
set :repo_url, "https://github.com/takapi86/clamdscan-on-capistrano.git"
set :deploy_to, '/var/www/app'
set :user, 'www-data'
set :group, 'www-data'

namespace :clamd do
  desc 'clamdscan'
  task :scan do
    on roles(:all) do
      execute :clamdscan, "--remove", release_path
    end
  end
end

before 'deploy:publishing', 'clamd:scan'

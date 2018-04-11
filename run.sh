bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec puma -p 4000 -w 1 -t 1:1


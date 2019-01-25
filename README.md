# NEWSFEED
Newsfeed is a Ruby on Rails application which can deliver you daily mails based on the topics you select during subscribing to it.

## Technology used
* Watir: for scrapping from Quora
* SideKiq: for backgrounding
* SideKiq-Cron: for cron jobs
* HAML
* Bootstrap 4
* MySQL, Redis for SideKiq queue

# How to use it in local?
* Make sure you have MySQL and Redis server installed, if not please do it first.
* Clone it in your local and run ```bundle install```
* Run ```rails db:migration``` to run the migrations alongwith the collations.
* Run ```rails s``` and ```bundle exec sidekiq```.
* Setup the mailer in environments file.
* Go to 'localhost:whatever_port/users/new' and enter the details after which you will get confirmation mail on the entered 
  e-mail ID with the link to confirm your subscription.


# Contributions are welcomed. Please add your pull requests for that.

# team-reaper-roomatematch.com
Match me with the roomate of my dreams

### Authors
Vincent Davis - vdavis@siu.edu

Donald Williams - wmanman63@siu.edu

Jerry Haynes - haynes.jerry18@siu.edu

Angel Galeana angel.galeanajr@siu.edu

<<<<<<< Updated upstream
## Installation
Be sure to have your github setup up on your laptop. Here's some [useful commands to remember](https://github.com/SIU-CS/team-reaper-production/wiki/Git-Commands)
#### Install Ruby
We are using ruby version 2.4.1, the easiest way to install it is with [rvm](https://rvm.io) or the ruby version manager. The content you see bellow is meant to work by just copying and pasting the whole thing into your terminal.
```bash
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB \
\curl -sSL https://get.rvm.io | bash -s stable \
rvm install 2.4.1 \
gem install bundler
```
=======
Angel Galeana angel.galeanajr@siu.edu
>>>>>>> Stashed changes

#### Install Rails With The Applications

Go ahead and fetch the latest stuff from github and after ```cd team-reaper-production/``` into the team-reaper-production folder.

Run bundle install, to install rails and any other ruby gems that the application needs
```bash
bundle install
```

### Setup Database and Users Account
Once the previous step is done set up your local sqlite3 database
```bash
rake db:setup
```
Now start up the application!!!
```bash
rails s
```

Open your webrowser and type ```127.0.0.1:3000``` to view the application. Go ahead and setup your account. It should send you an email to confirm you account.

#### Setup User Admin Account

This part is simple just change directories into the team-reaper-production folder unless already there. ```cd team-reaper-production/```

Type
```bash
rails c
```
This will allow you to change things in the database easily. Once in type what's below to give yourself admin although not needed
```
u = User.first
u.role_ids=1
u.save
exit
```

# Welcome to Master Key!

    A property management app that allows a user to signup, login and logout. A User can create edit and delete a property.

    Work in process, add: 
        - repair requests
        - tenant information
        - important documentation
        - payment schedule


## Installation Backend

Must be linked up with [Master Key Client](https://github.com/cparisi1290/master-key-client) to display app in browser.
        
    Clone this repo

    Run bundle install

    Run rails s

    Open your browser to localhost:3001

## Installation Frontend

    Clone the frontend repo - linked above

    Change directories into top level of app

    In terminal, write: npm install 
    
    Still in terminal, write: npm start 

    Open browser to localhost:3000


## Database Creation in Backend
    rails db:create
    rails db:migrate

## Database Server Run
    enable_extension "plpgsql"
    
    To start up the postgre sql server, input code into terminal:
    
    1) sudo apt-get update

    2) sudo apt-get install postgresql postgresql-contrib
    
    3) ls /etc/postgresql/13/main/

    4) service postgresql status - to check the staus of the server
    
    If it's a down status:
    5) sudo /etc/init.d/postgresql start - then check status to make sure status is ok and it's up and running

## Ruby version
    ruby 2.6.1p33

## System dependencies
    bcrypt (~> 3.1.7)
    bootsnap (>= 1.4.4)
    byebug
    fast_jsonapi
    listen (~> 3.3)
    pg (~> 1.1)
    puma (~> 5.0)
    rack-cors
    rails (~> 6.1.3, >= 6.1.3.1)
    spring
    tzinfo-data

## Contributing

 This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct. Bug reports and pull requests are found on GitHub [here](https://github.com/cparisi1290/master-key-backend).


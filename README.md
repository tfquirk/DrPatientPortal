# DOCFINDER README

Created by: Timothy Quirk and Vincent Chan

Here you will find the back-end for DocFinder, which is a Ruby on Rails API which allows us to persist all users and appointments requested between doctors and patients. 

Our project is meant to be a ZocDoc clone. The project uses a React.js front-end which can be found here.


## Setup / Install

After cloning the repository from github, cd into the DocFinder directory:

Install the necessary gems with 'bundle install' in your terminal.

Run the server to start your back-end, but using the following command:
'rails s -p 8000'

This will run your API on port 8000, which the demo is setup to use. Your API will not have any doctors in the database, however, you may add them if you so choose. We used the BetterDoc API to seed our database, and if you request and API key from BetterDoctor, you will be able to run the seed file, which is already set up for you to just add your API key into it.

## Demo

[![alt text][image]][reference link]

[image]: https://i9.ytimg.com/vi/D4BzOjFP_ag/mq3.jpg?sqp=CIzGk-UF&rs=AOn4CLDVnqSW3fFfr_XUBhOOwqoPXLL8xg "DocFinder Demo Video"
[reference link]: https://youtu.be/D4BzOjFP_ag

Please click on the image above if you would like to see a video demo of the DocFinder.

## Overview  

Patients are able to sort doctors by specialty and location, and request an appointment with a doctor they choose. 


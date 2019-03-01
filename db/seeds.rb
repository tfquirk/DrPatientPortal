require 'rest-client'
require 'byebug'
require 'json'

#### MUST ADD API-KEY WHERE API IS

puts "Let's Seed This Thing!"
#internal Medicine
response = RestClient.get('https://api.betterdoctor.com/2016-03-01/doctors?specialty_uid=internist&location=40.712%2C-74.006%2C10&user_location=40.712%2C-74.006&skip=0&limit=50&user_key=API')
data = JSON.parse(response)

puts "Starting Loop..."
# Doctor.destroy_all
counter = 0
50.times do
  puts "Loop [#{counter}]"

  # if counter == 11
  #   byebug
  # end

  puts "Parsing Counter Data: [#{counter}]"

  # try {
  #   whaever.code()
  #   doctorsInfoasdf
  #   doctorsInfoasdfasdf
  #
  # } catch (err) {
  #   handleresolvingerror
  # }

  begin
    specialty = "Internal Medicine" #hard coded

    doctorsInfo = data["data"]
    practice = data["data"][counter]["practices"][0]

    website = practice["website"] # potentially no website
    accepts_patients = practice["accepts_new_patients"] # potentially no patients
    #
    city = practice["visit_address"]["city"] # potentially no practice["visit_address"]
    state = practice["visit_address"]["state_long"]
    street = practice["visit_address"]["street"]
    zip = practice["visit_address"]["zip"]
    #
    phone = practice["phones"][0]["number"]
    #
    profile = data["data"][counter]["profile"]
    firstName = profile["first_name"]
    lastName = profile["last_name"]
    gender = profile["gender"]
    bio = profile["bio"]
    #

    license_state = practice["visit_address"]["state_long"]
    license_number = data["data"][counter]["licenses"][0]["number"]

    puts "Finished Parsing Counter Data: [#{counter}]"

    puts "Making Doctor [#{counter}]"
    Doctor.create(first_name: firstName, last_name: lastName, bio: bio, specialty: specialty, license_state: license_state, license_number: license_number,
     accepts_new_patients: accepts_patients, city: city, state: state, street: street, zip: zip, website: website)
    puts "Doctor [#{counter}] Made!"
  rescue
    puts "Let's just skip this one... [#{counter}]"
    # a lot of times you do multiple rescues, one for each possible error
  end

  counter+=1
end
puts "End of Loop"

# #___________________________________________________________________________________
# # Dentist
#
response = RestClient.get('https://api.betterdoctor.com/2016-03-01/doctors?specialty_uid=dentist&location=40.712%2C-74.006%2C10&user_location=40.712%2C-74.006&skip=0&limit=50&user_key=API')
data = JSON.parse(response)

counter = 0
50.times do
  puts "Loop [#{counter}]"

  puts "Parsing Counter Data: [#{counter}]"

  begin
    specialty = "Dentist" #hard coded

    doctorsInfo = data["data"]
    practice = data["data"][counter]["practices"][0]

    website = practice["website"] # potentially no website
    accepts_patients = practice["accepts_new_patients"] # potentially no patients
    #
    city = practice["visit_address"]["city"] # potentially no practice["visit_address"]
    state = practice["visit_address"]["state_long"]
    street = practice["visit_address"]["street"]
    zip = practice["visit_address"]["zip"]
    #
    phone = practice["phones"][0]["number"]
    #
    profile = data["data"][counter]["profile"]
    firstName = profile["first_name"]
    lastName = profile["last_name"]
    gender = profile["gender"]
    bio = profile["bio"]
    #

    license_state = practice["visit_address"]["state_long"]
    license_number = data["data"][counter]["licenses"][0]["number"]

    puts "Finished Parsing Counter Data: [#{counter}]"

    puts "Making Doctor [#{counter}]"
    Doctor.create(first_name: firstName, last_name: lastName, bio: bio, specialty: specialty, license_state: license_state, license_number: license_number,
     accepts_new_patients: accepts_patients, city: city, state: state, street: street, zip: zip, website: website)
    puts "Doctor [#{counter}] Made!"
  rescue
    puts "Let's just skip this one... [#{counter}]"
    # a lot of times you do multiple rescues, one for each possible error
  end

  counter+=1
end
puts "End of Loop"

#___________________________________________________________________________________
# Psychiatrist
#
response = RestClient.get('https://api.betterdoctor.com/2016-03-01/doctors?specialty_uid=psychiatrist&location=40.712%2C-74.006%2C10&user_location=40.712%2C-74.006&skip=0&limit=50&user_key=API')
data = JSON.parse(response)

counter = 0
50.times do
  puts "Loop [#{counter}]"

  puts "Parsing Counter Data: [#{counter}]"

  begin
    specialty = "Psychiatry" #hard coded

    doctorsInfo = data["data"]
    practice = data["data"][counter]["practices"][0]

    website = practice["website"] # potentially no website
    accepts_patients = practice["accepts_new_patients"] # potentially no patients
    #
    city = practice["visit_address"]["city"] # potentially no practice["visit_address"]
    state = practice["visit_address"]["state_long"]
    street = practice["visit_address"]["street"]
    zip = practice["visit_address"]["zip"]
    #
    phone = practice["phones"][0]["number"]
    #
    profile = data["data"][counter]["profile"]
    firstName = profile["first_name"]
    lastName = profile["last_name"]
    gender = profile["gender"]
    bio = profile["bio"]
    #

    license_state = practice["visit_address"]["state_long"]
    license_number = data["data"][counter]["licenses"][0]["number"]

    puts "Finished Parsing Counter Data: [#{counter}]"

    puts "Making Doctor [#{counter}]"
    Doctor.create(first_name: firstName, last_name: lastName, bio: bio, specialty: specialty, license_state: license_state, license_number: license_number,
     accepts_new_patients: accepts_patients, city: city, state: state, street: street, zip: zip, website: website)
    puts "Doctor [#{counter}] Made!"
  rescue
    puts "Let's just skip this one... [#{counter}]"
    # a lot of times you do multiple rescues, one for each possible error
  end

  counter+=1
end
puts "End of Loop"

# # ophthalmologist___________________________________________________________________________________
# #___________________________________________________________________________________
#

response = RestClient.get('https://api.betterdoctor.com/2016-03-01/doctors?specialty_uid=ophthalmologist&location=40.712%2C-74.006%2C10&user_location=40.712%2C-74.006&skip=0&limit=50&user_key=API')
data = JSON.parse(response)

counter = 0
50.times do
  puts "Loop [#{counter}]"

  puts "Parsing Counter Data: [#{counter}]"

  begin
    specialty = "Ophthalmology" #hard coded

    doctorsInfo = data["data"]
    practice = data["data"][counter]["practices"][0]

    website = practice["website"] # potentially no website
    accepts_patients = practice["accepts_new_patients"] # potentially no patients
    #
    city = practice["visit_address"]["city"] # potentially no practice["visit_address"]
    state = practice["visit_address"]["state_long"]
    street = practice["visit_address"]["street"]
    zip = practice["visit_address"]["zip"]
    #
    phone = practice["phones"][0]["number"]
    #
    profile = data["data"][counter]["profile"]
    firstName = profile["first_name"]
    lastName = profile["last_name"]
    gender = profile["gender"]
    bio = profile["bio"]
    #

    license_state = practice["visit_address"]["state_long"]
    license_number = data["data"][counter]["licenses"][0]["number"]

    puts "Finished Parsing Counter Data: [#{counter}]"

    puts "Making Doctor [#{counter}]"
    Doctor.create(first_name: firstName, last_name: lastName, bio: bio, specialty: specialty, license_state: license_state, license_number: license_number,
     accepts_new_patients: accepts_patients, city: city, state: state, street: street, zip: zip, website: website)
    puts "Doctor [#{counter}] Made!"
  rescue
    puts "Let's just skip this one... [#{counter}]"
    # a lot of times you do multiple rescues, one for each possible error
  end

  counter+=1
end
puts "End of Loop"



# # Family Med___________________________________________________________________________________
# #___________________________________________________________________________________
#

response = RestClient.get('https://api.betterdoctor.com/2016-03-01/doctors?specialty_uid=family-practitioner&location=40.712%2C-74.006%2C10&user_location=40.712%2C-74.006&skip=0&limit=50&user_key=API')
data = JSON.parse(response)

counter = 0
50.times do
  puts "Loop [#{counter}]"

  puts "Parsing Counter Data: [#{counter}]"

  begin
    specialty = "Family Medicine" #hard coded

    doctorsInfo = data["data"]
    practice = data["data"][counter]["practices"][0]

    website = practice["website"] # potentially no website
    accepts_patients = practice["accepts_new_patients"] # potentially no patients
    #
    city = practice["visit_address"]["city"] # potentially no practice["visit_address"]
    state = practice["visit_address"]["state_long"]
    street = practice["visit_address"]["street"]
    zip = practice["visit_address"]["zip"]
    #
    phone = practice["phones"][0]["number"]
    #
    profile = data["data"][counter]["profile"]
    firstName = profile["first_name"]
    lastName = profile["last_name"]
    gender = profile["gender"]
    bio = profile["bio"]
    #

    license_state = practice["visit_address"]["state_long"]
    license_number = data["data"][counter]["licenses"][0]["number"]

    puts "Finished Parsing Counter Data: [#{counter}]"

    puts "Making Doctor [#{counter}]"
    Doctor.create(first_name: firstName, last_name: lastName, bio: bio, specialty: specialty, license_state: license_state, license_number: license_number,
     accepts_new_patients: accepts_patients, city: city, state: state, street: street, zip: zip, website: website)
    puts "Doctor [#{counter}] Made!"
  rescue
    puts "Let's just skip this one... [#{counter}]"
    # a lot of times you do multiple rescues, one for each possible error
  end

  counter+=1
end
puts "End of Loop"

# # emergency-medicine-doctor___________________________________________________________________________________
# #___________________________________________________________________________________
#
#
response = RestClient.get('https://api.betterdoctor.com/2016-03-01/doctors?specialty_uid=emergency-medicine-doctor&location=40.712%2C-74.006%2C10&user_location=40.712%2C-74.006&skip=0&limit=50&user_key=API')
data = JSON.parse(response)

counter = 0
50.times do
  puts "Loop [#{counter}]"

  puts "Parsing Counter Data: [#{counter}]"

  begin
    specialty = "Emergency Medicine" #hard coded

    doctorsInfo = data["data"]
    practice = data["data"][counter]["practices"][0]

    website = practice["website"] # potentially no website
    accepts_patients = practice["accepts_new_patients"] # potentially no patients
    #
    city = practice["visit_address"]["city"] # potentially no practice["visit_address"]
    state = practice["visit_address"]["state_long"]
    street = practice["visit_address"]["street"]
    zip = practice["visit_address"]["zip"]
    #
    phone = practice["phones"][0]["number"]
    #
    profile = data["data"][counter]["profile"]
    firstName = profile["first_name"]
    lastName = profile["last_name"]
    gender = profile["gender"]
    bio = profile["bio"]
    #

    license_state = practice["visit_address"]["state_long"]
    license_number = data["data"][counter]["licenses"][0]["number"]

    puts "Finished Parsing Counter Data: [#{counter}]"

    puts "Making Doctor [#{counter}]"
    Doctor.create(first_name: firstName, last_name: lastName, bio: bio, specialty: specialty, license_state: license_state, license_number: license_number,
     accepts_new_patients: accepts_patients, city: city, state: state, street: street, zip: zip, website: website)
    puts "Doctor [#{counter}] Made!"
  rescue
    puts "Let's just skip this one... [#{counter}]"
    # a lot of times you do multiple rescues, one for each possible error
  end

  counter+=1
end
puts "End of Loop"

# # physical-therapist___________________________________________________________________________________
# #___________________________________________________________________________________


response = RestClient.get('https://api.betterdoctor.com/2016-03-01/doctors?specialty_uid=physical-therapist&location=40.712%2C-74.006%2C10&user_location=40.712%2C-74.006&skip=0&limit=50&user_key=API')
data = JSON.parse(response)

counter = 0
50.times do
  puts "Loop [#{counter}]"

  puts "Parsing Counter Data: [#{counter}]"

  begin
    specialty = "Physical Therapy" #hard coded

    doctorsInfo = data["data"]
    practice = data["data"][counter]["practices"][0]

    website = practice["website"] # potentially no website
    accepts_patients = practice["accepts_new_patients"] # potentially no patients
    #
    city = practice["visit_address"]["city"] # potentially no practice["visit_address"]
    state = practice["visit_address"]["state_long"]
    street = practice["visit_address"]["street"]
    zip = practice["visit_address"]["zip"]
    #
    phone = practice["phones"][0]["number"]
    #
    profile = data["data"][counter]["profile"]
    firstName = profile["first_name"]
    lastName = profile["last_name"]
    gender = profile["gender"]
    bio = profile["bio"]
    #

    license_state = practice["visit_address"]["state_long"]
    license_number = data["data"][counter]["licenses"][0]["number"]

    puts "Finished Parsing Counter Data: [#{counter}]"

    puts "Making Doctor [#{counter}]"
    Doctor.create(first_name: firstName, last_name: lastName, bio: bio, specialty: specialty, license_state: license_state, license_number: license_number,
     accepts_new_patients: accepts_patients, city: city, state: state, street: street, zip: zip, website: website)
    puts "Doctor [#{counter}] Made!"
  rescue
    puts "Let's just skip this one... [#{counter}]"
    # a lot of times you do multiple rescues, one for each possible error
  end

  counter+=1
end
puts "End of Loop"

# # Pediatrics___________________________________________________________________________________
# #___________________________________________________________________________________
#

response = RestClient.get('https://api.betterdoctor.com/2016-03-01/doctors?specialty_uid=pediatrician&location=40.712%2C-74.006%2C10&user_location=40.712%2C-74.006&skip=0&limit=50&user_key=API')
data = JSON.parse(response)

counter = 0
50.times do
  puts "Loop [#{counter}]"

  puts "Parsing Counter Data: [#{counter}]"

  begin
    specialty = "Pediatrics" #hard coded

    doctorsInfo = data["data"]
    practice = data["data"][counter]["practices"][0]

    website = practice["website"] # potentially no website
    accepts_patients = practice["accepts_new_patients"] # potentially no patients
    #
    city = practice["visit_address"]["city"] # potentially no practice["visit_address"]
    state = practice["visit_address"]["state_long"]
    street = practice["visit_address"]["street"]
    zip = practice["visit_address"]["zip"]
    #
    phone = practice["phones"][0]["number"]
    #
    profile = data["data"][counter]["profile"]
    firstName = profile["first_name"]
    lastName = profile["last_name"]
    gender = profile["gender"]
    bio = profile["bio"]
    #

    license_state = practice["visit_address"]["state_long"]
    license_number = data["data"][counter]["licenses"][0]["number"]

    puts "Finished Parsing Counter Data: [#{counter}]"

    puts "Making Doctor [#{counter}]"
    Doctor.create(first_name: firstName, last_name: lastName, bio: bio, specialty: specialty, license_state: license_state, license_number: license_number,
     accepts_new_patients: accepts_patients, city: city, state: state, street: street, zip: zip, website: website)
    puts "Doctor [#{counter}] Made!"
  rescue
    puts "Let's just skip this one... [#{counter}]"
    # a lot of times you do multiple rescues, one for each possible error
  end

  counter+=1
end
puts "End of Loop"

# # obstetrics-gynecologist___________________________________________________________________________________
# #___________________________________________________________________________________
#

response = RestClient.get('https://api.betterdoctor.com/2016-03-01/doctors?specialty_uid=obstetrics-gynecologist&location=40.712%2C-74.006%2C10&user_location=40.712%2C-74.006&skip=0&limit=50&user_key=API')
data = JSON.parse(response)

counter = 0
50.times do
  puts "Loop [#{counter}]"

  puts "Parsing Counter Data: [#{counter}]"

  begin
    specialty = "Obstetrics & Gynecology" #hard coded

    doctorsInfo = data["data"]
    practice = data["data"][counter]["practices"][0]

    website = practice["website"] # potentially no website
    accepts_patients = practice["accepts_new_patients"] # potentially no patients
    #
    city = practice["visit_address"]["city"] # potentially no practice["visit_address"]
    state = practice["visit_address"]["state_long"]
    street = practice["visit_address"]["street"]
    zip = practice["visit_address"]["zip"]
    #
    phone = practice["phones"][0]["number"]
    #
    profile = data["data"][counter]["profile"]
    firstName = profile["first_name"]
    lastName = profile["last_name"]
    gender = profile["gender"]
    bio = profile["bio"]
    #

    license_state = practice["visit_address"]["state_long"]
    license_number = data["data"][counter]["licenses"][0]["number"]

    puts "Finished Parsing Counter Data: [#{counter}]"

    puts "Making Doctor [#{counter}]"
    Doctor.create(first_name: firstName, last_name: lastName, bio: bio, specialty: specialty, license_state: license_state, license_number: license_number,
     accepts_new_patients: accepts_patients, city: city, state: state, street: street, zip: zip, website: website)
    puts "Doctor [#{counter}] Made!"
  rescue
    puts "Let's just skip this one... [#{counter}]"
    # a lot of times you do multiple rescues, one for each possible error
  end

  counter+=1
end
puts "End of Loop"

# # pain-medicine-physiatrist___________________________________________________________________________________
# #___________________________________________________________________________________
#

response = RestClient.get('https://api.betterdoctor.com/2016-03-01/doctors?specialty_uid=pain-medicine-physiatrist&location=40.712%2C-74.006%2C10&user_location=40.712%2C-74.006&skip=0&limit=50&user_key=API')
data = JSON.parse(response)

counter = 0
50.times do
  puts "Loop [#{counter}]"

  puts "Parsing Counter Data: [#{counter}]"

  begin
    specialty = "Pain Medicine" #hard coded

    doctorsInfo = data["data"]
    practice = data["data"][counter]["practices"][0]

    website = practice["website"] # potentially no website
    accepts_patients = practice["accepts_new_patients"] # potentially no patients
    #
    city = practice["visit_address"]["city"] # potentially no practice["visit_address"]
    state = practice["visit_address"]["state_long"]
    street = practice["visit_address"]["street"]
    zip = practice["visit_address"]["zip"]
    #
    phone = practice["phones"][0]["number"]
    #
    profile = data["data"][counter]["profile"]
    firstName = profile["first_name"]
    lastName = profile["last_name"]
    gender = profile["gender"]
    bio = profile["bio"]
    #

    license_state = practice["visit_address"]["state_long"]
    license_number = data["data"][counter]["licenses"][0]["number"]

    puts "Finished Parsing Counter Data: [#{counter}]"

    puts "Making Doctor [#{counter}]"
    Doctor.create(first_name: firstName, last_name: lastName, bio: bio, specialty: specialty, license_state: license_state, license_number: license_number,
     accepts_new_patients: accepts_patients, city: city, state: state, street: street, zip: zip, website: website)
    puts "Doctor [#{counter}] Made!"
  rescue
    puts "Let's just skip this one... [#{counter}]"
    # a lot of times you do multiple rescues, one for each possible error
  end

  counter+=1
end
puts "End of Loop"

# general-surgeon___________________________________________________________________________________
#___________________________________________________________________________________


response = RestClient.get('https://api.betterdoctor.com/2016-03-01/doctors?specialty_uid=general-surgeon&location=40.712%2C-74.006%2C10&user_location=40.712%2C-74.006&skip=0&limit=50&user_key=API')
data = JSON.parse(response)

counter = 0
50.times do
  puts "Loop [#{counter}]"

  puts "Parsing Counter Data: [#{counter}]"

  begin
    specialty = "Surgery" #hard coded

    doctorsInfo = data["data"]
    practice = data["data"][counter]["practices"][0]

    website = practice["website"] # potentially no website
    accepts_patients = practice["accepts_new_patients"] # potentially no patients
    #
    city = practice["visit_address"]["city"] # potentially no practice["visit_address"]
    state = practice["visit_address"]["state_long"]
    street = practice["visit_address"]["street"]
    zip = practice["visit_address"]["zip"]
    #
    phone = practice["phones"][0]["number"]
    #
    profile = data["data"][counter]["profile"]
    firstName = profile["first_name"]
    lastName = profile["last_name"]
    gender = profile["gender"]
    bio = profile["bio"]
    #

    license_state = practice["visit_address"]["state_long"]
    license_number = data["data"][counter]["licenses"][0]["number"]

    puts "Finished Parsing Counter Data: [#{counter}]"

    puts "Making Doctor [#{counter}]"
    Doctor.create(first_name: firstName, last_name: lastName, bio: bio, specialty: specialty, license_state: license_state, license_number: license_number,
     accepts_new_patients: accepts_patients, city: city, state: state, street: street, zip: zip, website: website)
    puts "Doctor [#{counter}] Made!"
  rescue
    puts "Let's just skip this one... [#{counter}]"
    # a lot of times you do multiple rescues, one for each possible error
  end

  counter+=1
end
puts "End of Loop"

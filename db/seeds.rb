states = [
  { state_name: 'Rajasthan', short_name: 'RJ' },
  { state_name: 'Tamil Nadu', short_name: 'TN' },
  { state_name: 'Kerala', short_name: 'KL' },
  { state_name: 'Karnataka', short_name: 'KA' },
  { state_name: 'West Bengal', short_name: 'WB' },
  { state_name: 'Gujarat', short_name: 'GJ' },
  { state_name: 'Odisha', short_name: 'OD' },
  { state_name: 'Punjab', short_name: 'PB' },
  { state_name: 'Assam', short_name: 'AS' },
  { state_name: 'Bihar', short_name: 'BR' }
]

states.each do |state_attrs|
  State.create!(state_attrs)
end

districts = [
  { district_name: 'Jaipur', state_id: State.find_by(state_name: 'Rajasthan').id },
  { district_name: 'Udaipur', state_id: State.find_by(state_name: 'Rajasthan').id },
  { district_name: 'Chennai', state_id: State.find_by(state_name: 'Tamil Nadu').id },
  { district_name: 'Madurai', state_id: State.find_by(state_name: 'Tamil Nadu').id },
  { district_name: 'Kochi', state_id: State.find_by(state_name: 'Kerala').id },
  { district_name: 'Thiruvananthapuram', state_id: State.find_by(state_name: 'Kerala').id },
  { district_name: 'Bengaluru', state_id: State.find_by(state_name: 'Karnataka').id },
  { district_name: 'Mysuru', state_id: State.find_by(state_name: 'Karnataka').id },
  { district_name: 'Kolkata', state_id: State.find_by(state_name: 'West Bengal').id },
  { district_name: 'Darjeeling', state_id: State.find_by(state_name: 'West Bengal').id },
  { district_name: 'Ahmedabad', state_id: State.find_by(state_name: 'Gujarat').id },
  { district_name: 'Surat', state_id: State.find_by(state_name: 'Gujarat').id },
  { district_name: 'Bhubaneswar', state_id: State.find_by(state_name: 'Odisha').id },
  { district_name: 'Puri', state_id: State.find_by(state_name: 'Odisha').id },
  { district_name: 'Amritsar', state_id: State.find_by(state_name: 'Punjab').id },
  { district_name: 'Patiala', state_id: State.find_by(state_name: 'Punjab').id },
  { district_name: 'Guwahati', state_id: State.find_by(state_name: 'Assam').id },
  { district_name: 'Jorhat', state_id: State.find_by(state_name: 'Assam').id },
  { district_name: 'Patna', state_id: State.find_by(state_name: 'Bihar').id },
  { district_name: 'Gaya', state_id: State.find_by(state_name: 'Bihar').id }
]

districts.each do |district_attrs|
  District.create!(district_attrs)
end

heritage_sites = [
  # Rajasthan
  { title: 'Hawa Mahal', ticket_price: 80, description: 'A palace in Jaipur, known as the Palace of Winds.', district_id: District.find_by(district_name: 'Jaipur').id },
  { title: 'City Palace Udaipur', ticket_price: 120, description: 'A majestic palace located on the banks of Lake Pichola.', district_id: District.find_by(district_name: 'Udaipur').id },
  
  # Tamil Nadu
  { title: 'Marina Beach', ticket_price: 0, description: 'The longest natural urban beach in India, located in Chennai.', district_id: District.find_by(district_name: 'Chennai').id },
  { title: 'Meenakshi Temple', ticket_price: 50, description: 'A historic temple in Madurai known for its towering gopurams.', district_id: District.find_by(district_name: 'Madurai').id },
  
  # Kerala
  { title: 'Mattancherry Palace', ticket_price: 40, description: 'Also known as the Dutch Palace, located in Kochi.', district_id: District.find_by(district_name: 'Kochi').id },
  { title: 'Padmanabhaswamy Temple', ticket_price: 30, description: 'A famous temple in Thiruvananthapuram, one of the richest temples in the world.', district_id: District.find_by(district_name: 'Thiruvananthapuram').id },
  
  # Karnataka
  { title: 'Mysore Palace', ticket_price: 70, description: 'The royal palace of Mysuru, one of the most famous tourist attractions in India.', district_id: District.find_by(district_name: 'Mysuru').id },
  { title: 'Lalbagh Botanical Garden', ticket_price: 20, description: 'A renowned botanical garden in Bengaluru.', district_id: District.find_by(district_name: 'Bengaluru').id },
  
  # West Bengal
  { title: 'Victoria Memorial', ticket_price: 100, description: 'A large marble building in Kolkata, dedicated to Queen Victoria.', district_id: District.find_by(district_name: 'Kolkata').id },
  { title: 'Darjeeling Himalayan Railway', ticket_price: 150, description: 'A UNESCO World Heritage Site, offering scenic train rides.', district_id: District.find_by(district_name: 'Darjeeling').id },
  
  # Gujarat
  { title: 'Sabarmati Ashram', ticket_price: 0, description: 'The home of Mahatma Gandhi, located in Ahmedabad.', district_id: District.find_by(district_name: 'Ahmedabad').id },
  { title: 'Dumas Beach', ticket_price: 0, description: 'A popular urban beach along the Arabian Sea in Surat.', district_id: District.find_by(district_name: 'Surat').id },
  
  # Odisha
  { title: 'Konark Sun Temple', ticket_price: 90, description: 'A 13th-century temple dedicated to the Sun God, located in Konark.', district_id: District.find_by(district_name: 'Puri').id },
  { title: 'Lingaraj Temple', ticket_price: 50, description: 'A temple dedicated to Lord Shiva, located in Bhubaneswar.', district_id: District.find_by(district_name: 'Bhubaneswar').id },
  
  # Punjab
  { title: 'Golden Temple', ticket_price: 0, description: 'The holiest Gurdwara and most important pilgrimage site of Sikhism, located in Amritsar.', district_id: District.find_by(district_name: 'Amritsar').id },
  { title: 'Qila Mubarak', ticket_price: 40, description: 'A historical fort located in Patiala.', district_id: District.find_by(district_name: 'Patiala').id },
  
  # Assam
  { title: 'Kamakhya Temple', ticket_price: 50, description: 'A renowned temple dedicated to the goddess Kamakhya, located in Guwahati.', district_id: District.find_by(district_name: 'Guwahati').id },
  { title: 'Majuli Island', ticket_price: 30, description: 'The world\'s largest river island, located in Assam.', district_id: District.find_by(district_name: 'Jorhat').id },
  
  # Bihar
  { title: 'Mahabodhi Temple', ticket_price: 60, description: 'A UNESCO World Heritage Site, the place where Buddha attained enlightenment, located in Gaya.', district_id: District.find_by(district_name: 'Gaya').id },
  { title: 'Golghar', ticket_price: 20, description: 'A granary located in Patna, offering panoramic views of the city.', district_id: District.find_by(district_name: 'Patna').id }
]

heritage_sites.each do |heritage_attrs|
  HeritageModel.create!(heritage_attrs)
end

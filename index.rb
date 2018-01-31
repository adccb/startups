
companies = [ 
  'uber', 'paypal', 'google', 'lyft', 'facebook',
  'instagram', 'twitter', 'mastodon', 'slack',
  'apple', 'airbnb', 'pagerduty', 'twilio', 'tinder',
  'okcupid', 'gmail', 'trello', 'jira', 'hipchat',
  'github', 'bitbucket',
]

people = [
  'teachers', 'cops', 'bus drivers', 'bartenders',
  'executives', 'gamers', 'chefs', 'musicians',
  'farmers'
]

words = File.read('/usr/share/dict/words')
  .split("\n")
  .select { |word| word.size <= 6 && /er$/.match(word) }
  .map { |word| word.gsub /er$/, 'r' }

puts 
puts "#{ words.sample }:"
puts "#{ companies.sample } for #{ people.sample }"


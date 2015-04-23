require('sinatra')
require('sinatra/reloader')
require('./lib/allergy_checker')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  score = params.fetch('allergy_score').to_i
  @allergies = score.allergies
  erb(:results)
end

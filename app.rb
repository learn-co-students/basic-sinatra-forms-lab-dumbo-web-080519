require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  get '/team' do
    @team_hash = {
      'Team Name: ' => params['team_name'],
      'Coach: ' => params['coach_name'],
      'Point Guard: ' => params['pg_name'],
      'Shooting Guard: ' => params['sg_name'],
      'Small Forward: ' => params['sf_name'],
      'Power Forward: ' => params['pf_name'],
      'Center: ' => params['c_name']
    }
    erb :team
  end

end

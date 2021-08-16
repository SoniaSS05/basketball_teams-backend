class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    #APPLICATION ROUTES

    #team Index
    if req.path == ('/teams') && req.get?
      return [200, { 'Content-Type' => 'application/json' }, [Team.all.to_json ]]
    end

    #player Index
    if req.path == ('/player') && req.get?
      return [200, { 'Content-Type' => 'application/json' }, [Player.all.to_json ]]
    end

    #Game Index
    if req.path == ('/game') && req.get?
      return [200, { 'Content-Type' => 'application/json' }, [Game.all.to_json ]]
    end

    #Position Index
    if req.path == ('/position') && req.get?
      return [200, { 'Content-Type' => 'application/json' }, [Position.all.to_json ]]
    end

    #team Delete
    if req.path.match('/team/') && req.delete?
      id = req.path.split('/')[2]
      puts id
      binding.pry
      begin
        team = Team.find(id)
        team.destroy
        return[200, { 'Content-Type' => 'application/json' }, [{message: "Team destroyed"}.to_json]]
      rescue
        return [404, { 'Content-Type' => 'application/json' }, [{message: "Team not deleted"}.to_json]]
      end
    end


    #player Create
    if req.path == ('/player') && req.post?
      body = JSON.parse(req.body.read)
      new_player = Player.create(body)
    
      return [201, { 'Content-Type' => 'application/json' }, [new_player.to_json ]]
    end

    #team Create
    if req.path == ('/team') && req.post?
      body = JSON.parse(req.body.read)
      new_team = Team.create(body)
      return [201, { 'Content-Type' => 'application/json' }, [new_team.to_json ]]
    end

    #player Show
    if req.path.match('/player/') && req.get?
      id = req.path.split('/')[2]
      begin
        player = Player.find(id)
        return [200, { 'Content-Type' => 'application/json' }, [player.to_json]]
      rescue 
        return [404, { 'Content-Type' => 'application/json' }, [{message: "Player not found"}.to_json]]
      end
    end

    #player Update
    if req.path.match('/player/') && req.patch?
      id = req.path.split('/')[2]
      body= JSON.parse(req.body.read)
      begin
        player = Player.find(id)
        player.update(body)
        return [201, { 'Content-Type' => 'application/json' }, [player.to_json]]
      rescue 
        return [404, { 'Content-Type' => 'application/json' }, [{message: "Player not found - not updated"}.to_json]]
      end
    end

    #player Delete
    if req.path.match('/player/') && req.delete?
      puts "entre aqui"
      id = req.path.split('/')[2]
      begin
        player = Player.find(id)
        puts player
        player.destroy
        return[200, { 'Content-Type' => 'application/json' }, [{message: "Player destroyed"}.to_json]]
      rescue
        return [404, { 'Content-Type' => 'application/json' }, [{message: "Player not deleted"}.to_json]]
      end
    end

    #Game Create


    #Game Show
    if req.path.match('/game/') && req.get?
      id = req.path.split('/')[2]
      begin
        game = Game.find(id)
        return [200, { 'Content-Type' => 'application/json' }, [game.to_json]]
      rescue 
        return [404, { 'Content-Type' => 'application/json' }, [{message: "Game not found"}.to_json]]
      end
    end

    #Game Update
    if req.path.match('/game/') && req.put?
      id = req.path.split('/')[2]
      body= JSON.parse(req.body.read)
      begin
        game = Game.find(id)
        game_update = game.update(body)
        return [201, { 'Content-Type' => 'application/json' }, [game_update.to_json]]
      rescue 
        return [404, { 'Content-Type' => 'application/json' }, [{message: "Game not found - not updated"}.to_json]]
      end
    end

    #Game Delete
    if req.path.match('/game/') && req.delete?
      id = req.path.split('/')[2]
      begin
        game = Game.find(id)
        game.destroy
        return[200, { 'Content-Type' => 'application/json' }, [{message: "Game destroyed"}.to_json]]
      rescue
        return [404, { 'Content-Type' => 'application/json' }, [{message: "Game not deleted"}.to_json]]
      end
    end

    #performance Create


    #performance Show
    if req.path.match('/performance/') && req.get?
      id = req.path.split('/')[2]
      begin
        performance = Performance.find(id)
        return [200, { 'Content-Type' => 'application/json' }, [performance.to_json]]
      rescue ActiveRecord::RecordNotFound
        return [404, { 'Content-Type' => 'application/json' }, [{message: "Performance not found"}.to_json]]
      end
    end

    #performance Update


    #performance Delete
    if req.path.match('/performance/') && req.delete?
      id = req.path.split('/')[2]
      begin
        performance = Performance.find(id)
        performance.destroy
        return[200, { 'Content-Type' => 'application/json' }, [{message: "Performance destroyed"}.to_json]]
      rescue
        return [404, { 'Content-Type' => 'application/json' }, [{message: "Performance not deleted"}.to_json]]
      end
    end
    res.finish
  end
end

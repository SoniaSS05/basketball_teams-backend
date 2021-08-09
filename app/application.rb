class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    #APPLICATION ROUTES

    #team Index
    if req.path.match('/teams') && req.get?
      return [200, { 'Content-Type' => 'application/json' }, [Team.all.to_json ]]
    end

    #player Create


    #player Show


    #player Update


    #player Delete


    #Game Create


    #Game Show


    #Game Update


    #Game Delete


    #performance Create


    #performance Show


    #performance Update


    #performance Delete

  
    


    #
    #if req.path.match(/test/) 
      #return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    #else
      #res.write "Path Not Found"

    #end

    res.finish
  end

end

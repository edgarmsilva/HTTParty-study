class Startup
    include HTTParty
    require_relative '../hooks/startup_hook.rb'
    base_uri 'http://5b49f9b0ff11b100149bf42b.mockapi.io/cm'

    def initialize(body)
        @options = {:body => body}
        @options2 = {}
        @options3 = {:body => {
                            "nome": "TesteEd Alterado",
                            "cidade": "Recife Alterado"
                            }
                    }
       
    end

    def postStartup
        self.class.post("/startup", @options)
    end

    def getStartup(id)
        self.class.get("/startup/#{id}", @options2)
        
    end

    def putStartup(id)
        self.class.put("/startup/#{id}", @options3)
        
    end

    def deleteStartup(id)
        self.class.delete("/startup/#{id}", @options)
        
    end

end
Dado("o endereço da API para manter o cadastro de Startup") do
    @url_base = 'http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup'
end

Quando("realizar uma requisição para cadastrar uma startup") do
    # @response = HTTParty.post(@url_base, :body => {"nome":@nome, "cidade":@cidade})
    @response = @startup.postStartup
end

Então("a API irá retornar os dados do cadastro da startup respondendo o código {int}") do |code|
    
    expect(@response.code).to eql code
    puts "Response Code     : #{@response.code}"
    expect(@response.message).to eql("Created")
    puts "Response message  : #{@response.message}"
    # puts "response headers : #{response.headers.inspect}"

    puts "ID                : #{@response["id"]}"
    puts "Data              : #{@response["data"]}"
    puts "Nome              : #{@response["nome"]}"
    puts "Conta             : #{@response["conta"]}"
    puts "Cidade            : #{@response["cidade"]}"

end

Quando("realizar uma requisição passando o ID da startup") do
    @id = 2
    @get = @startup.getStartup(@id)
end

Então("a API irá retornar os dados do cadastro da startup correspondente respondendo o código {int}") do |respcode|
    
    expect(@get.code).to eql respcode
    expect(@get.message).to eql "OK"
    expect(@get["id"]).to eql @id.to_s
    puts "Response Code     : #{@get.code}"
    puts "ID                : #{@get["id"]}"
    puts "Data              : #{@get["data"]}"
    puts "Nome              : #{@get["nome"]}"
    puts "Conta             : #{@get["conta"]}"
    puts "Cidade            : #{@get["cidade"]}"
    puts "Status Code       : #{@get.code}"

end

Quando("realizar uma requisição para alterar a startup") do
    @idbusca = 2
    @put = @startup.putStartup(@idbusca)

end

Então("a API irá retornar os dados do cadastro da startup alterados respondendo o código {int}") do |respcode2|
   

   
    puts "Response Code     : #{@put.code}"
    puts "ID                : #{@put["id"]}"
    puts "Data              : #{@put["data"]}"
    puts "Nome              : #{@put["nome"]}"
    puts "Conta             : #{@put["conta"]}"
    puts "Cidade            : #{@put["cidade"]}"
    puts "Status Code       : #{@put.code}"

    expect(@put.code).to eql respcode2
    expect(@put.message).to eql "OK"
    expect(@put["id"]).to eql @idbusca.to_s
end

Quando("realizar uma requisição para excluir uma startup") do
pending # Write code here that turns the phrase above into concrete actions
end

Então("a API irá retornar os dados da exclusão respondendo o código {int}") do |int|
pending # Write code here that turns the phrase above into concrete actions
end
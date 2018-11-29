Before '@startup' do

    @nome = Faker::Company.name
    @cidade = Faker::Address.city

    body = {
        "nome": @nome,
        "cidade": @cidade
    }

    newbody = {
        "nome": "TesteEd002",
        "cidade": "Recife002"
    }

    

    @body = JSON.generate(body)

    @startup = Startup.new(@body)
end
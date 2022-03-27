class CompanyNameGenerator < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    name = Faker::Company.name
    bs = Faker::Company.bs
    <<-HTML
      <!DOCTYPE html> 
      <html>
        <style>
          h1, h2 {
            font-family: Georgia, Times New Roman, Times, serif;
            color: forestgreen;
            margin: 0;
          }
        </style>
        <title>Company name generator</title>
        <body>
          <h1>#{name}</h1>
          <h2>#{bs}</h2>
        </body>
      </html>
    HTML
  end
end

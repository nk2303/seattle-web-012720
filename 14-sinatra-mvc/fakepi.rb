require 'sinatra'

get '/' do
    "Hello World"
end

get "/dogs" do
    "<html>
    <head>
        <deta charset='utf-8'/>
    </head>
    <body>
        #{"🐕" * 500}
    </body>
    </html>
    "
end 

get "/cats" do
    "<html>
    <head>
        <deta charset='utf-8'/>
    </head>
    <body>
        #{"🐈" * 1000}
    </body>
    </html>
    "
end 

get "/birbs" do
    "<html>
    <head>
        <deta charset='utf-8'/>
    </head>
    <body>
        #{"🐦" * 1500}
    </body>
    </html>
    "
end 
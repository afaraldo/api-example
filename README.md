# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

ruby-3.0.0

* System dependencies

Run bundle install

* Configuration

* Database creation

rake db:create

* Database initialization

rake db:seed

* How to run the test suite

rspec

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

rails s

* Test

1) curl -g "http://localhost:3000/report/most_sold_product"

Should return the three most sold products by category

[
    {"product_name":"Producto#4","category_name":"Categoria#0","total":73,"rank":1,"id":null},
    {"product_name":"Producto#2","category_name":"Categoria#0","total":65,"rank":2,"id":null},
    {"product_name":"Producto#0","category_name":"Categoria#0","total":61,"rank":3,"id":null},
    {"product_name":"Producto#4","category_name":"Categoria#1","total":68,"rank":1,"id":null},
    {"product_name":"Producto#1","category_name":"Categoria#1","total":60,"rank":2,"id":null},
    {"product_name":"Producto#2","category_name":"Categoria#1","total":58,"rank":3,"id":null},
    {"product_name":"Producto#3","category_name":"Categoria#2","total":74,"rank":1,"id":null},
    {"product_name":"Producto#1","category_name":"Categoria#2","total":69,"rank":2,"id":null},
    {"product_name":"Producto#2","category_name":"Categoria#2","total":52,"rank":3,"id":null},
    {"product_name":"Producto#3","category_name":"Categoria#3","total":63,"rank":1,"id":null},
    {"product_name":"Producto#0","category_name":"Categoria#3","total":62,"rank":2,"id":null},
    {"product_name":"Producto#2","category_name":"Categoria#3","total":60,"rank":3,"id":null},
    {"product_name":"Producto#1","category_name":"Categoria#4","total":67,"rank":1,"id":null},
    {"product_name":"Producto#4","category_name":"Categoria#4","total":63,"rank":2,"id":null},
    {"product_name":"Producto#2","category_name":"Categoria#4","total":54,"rank":3,"id":null}
]

1.1 ) curl -g "http://localhost:3000/report/most_sold_product?product_id=2"
1.2 ) curl -g "http://localhost:3000/report/most_sold_product?category_id=2"
1.3 ) curl -g "http://localhost:3000/report/most_sold_product?date_lteq=2022-08-18&date_gteq=2022-08-19"

2) curl -g "http://localhost:3000/purchases?q[date_gteq]=2022-08-18&q[date_lteq]=2022-08-19"

[
    {"id":7,"date":"2022-08-18T02:53:28.518Z","number":7,"created_at":"2022-08-26T02:53:28.521Z","updated_at":"2022-08-26T02:53:28.521Z"},
    {"id":8,"date":"2022-08-18T02:53:28.546Z","number":8,"created_at":"2022-08-26T02:53:28.549Z","updated_at":"2022-08-26T02:53:28.549Z"},
    {"id":19,"date":"2022-08-18T02:53:28.825Z","number":19,"created_at":"2022-08-26T02:53:28.828Z","updated_at":"2022-08-26T02:53:28.828Z"},
    {"id":57,"date":"2022-08-18T02:53:29.848Z","number":57,"created_at":"2022-08-26T02:53:29.851Z","updated_at":"2022-08-26T02:53:29.851Z"},
    {"id":58,"date":"2022-08-18T02:53:29.872Z","number":58,"created_at":"2022-08-26T02:53:29.875Z","updated_at":"2022-08-26T02:53:29.875Z"},
    {"id":63,"date":"2022-08-18T02:53:29.997Z","number":63,"created_at":"2022-08-26T02:53:30.000Z","updated_at":"2022-08-26T02:53:30.000Z"},
    {"id":86,"date":"2022-08-18T02:53:30.616Z","number":86,"created_at":"2022-08-26T02:53:30.618Z","updated_at":"2022-08-26T02:53:30.618Z"},
    {"id":98,"date":"2022-08-18T02:53:30.941Z","number":98,"created_at":"2022-08-26T02:53:30.944Z","updated_at":"2022-08-26T02:53:30.944Z"},
    {"id":106,"date":"2022-08-18T02:53:31.149Z","number":106,"created_at":"2022-08-26T02:53:31.151Z","updated_at":"2022-08-26T02:53:31.151Z"},
    {"id":108,"date":"2022-08-18T02:53:31.198Z","number":108,"created_at":"2022-08-26T02:53:31.201Z","updated_at":"2022-08-26T02:53:31.201Z"},
    {"id":117,"date":"2022-08-18T02:53:31.445Z","number":117,"created_at":"2022-08-26T02:53:31.448Z","updated_at":"2022-08-26T02:53:31.448Z"}
    ]


3) curl -g "http://localhost:3000/purchases?q[date_gteq]=2022-08-18&q[date_lteq]=2022-08-19&page=1&per_page=3"

[
    {"id":7,"date":"2022-08-18T02:53:28.518Z","number":7,"created_at":"2022-08-26T02:53:28.521Z","updated_at":"2022-08-26T02:53:28.521Z"},
    {"id":8,"date":"2022-08-18T02:53:28.546Z","number":8,"created_at":"2022-08-26T02:53:28.549Z","updated_at":"2022-08-26T02:53:28.549Z"},
    {"id":19,"date":"2022-08-18T02:53:28.825Z","number":19,"created_at":"2022-08-26T02:53:28.828Z","updated_at":"2022-08-26T02:53:28.828Z"}
]



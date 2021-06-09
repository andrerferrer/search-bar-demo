## Goal
This is an app to teach how to implement a search bar in Rails using the [simple_form gem](https://github.com/heartcombo/simple_form).

Check my other demos [here](https://github.com/andrerferrer/dedemos/).

## Disclaimer
We'll not talk about searching engines here. 

## How to
### 1. Start with some data to work with
In this case we have City and Restaurant models.
[Check them here](https://github.com/andrerferrer/search-bar-demo/tree/master/app/models).
Also, [check the seeds](https://github.com/andrerferrer/search-bar-demo/blob/master/db/seeds.rb).

### 2. Follow the Mantra

1. Routes 
```ruby
Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: :index
end
```

2. Controller
```ruby
class RestaurantsController < ApplicationController
  def index
    if params[:search]
      @restaurants = City.find_by(name: params[:search][:query]).restaurants
    else
      @restaurants = Restaurant.all
    end
  end
end
```

3. Views (with `simple_form` )
```erb
<%= simple_form_for :search, url: root_path, method: :get do |f| %>
    <%= f.input :query, label: false, placeholder: "Which city?" %>
    <%= f.submit "Search" %>
<% end %>
```

### If you want to check it locally
```sh
repo_name="search-bar-demo"
gh_repository="git@github.com:andrerferrer/$repo_name.git"
git clone $gh_repository demo
cd demo
bundle install
yarn install
rails db:create db:migrate db:seed
rails s

# now you can go to http://localhost:3000/ and check it out
```

Good luck, have fun!

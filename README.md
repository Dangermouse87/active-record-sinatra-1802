## Active Record Sinatra boilerplate

###Before (OOP app)

```
         ___________________________________________________________
        |                                                          |
        |   3.App                  )\._.,--...,'``.                |
        |                        /,   _.. \   _\  (`._ ,.          |
        |                       `._.-(,_..'--(,_..'`-.;.'          |
        |                        |    4.Router    |                |
        |                        |________________|                |
        |                                |                         |
        |                         _______\/_______                 |
        |     _________          |                |                |
        |    | 1.Model |         |  5.Controller  |                |
        |    |_________|         |________________|                |
        |            \             /            \                  |
        |             \___________\/_        ___\/______________   |
 ___    |             |              |      |                   |  |
|CSV|<--------------->| 2.Repository |      | 6.View(puts,gets) |  |
'---'   |             |______________|      |___________________|  |
        |__________________________________________________________|
```

###Now (ActiveRecord x Sinatra)

```
               ________________________________________________________
              |   Sinatra             )\._.,--...,'``.                |
              |   1. bundle install /,   _.. \   _\  (`._ ,.          |
              |                    `._.-(,_..'--(,_..'`-.;.'          |
              |                        |  6. app.rb =   |             |                      
              |                        |    Router +    |             |                      
              |                        |   Controller   |             |
              |                        |________________|             |
 ________     |                        /            \                 |
|DB:     |    |            ___________\/_        ___\/______________  |
|2. crea |    |           |              |      |                   | |
|3. migr |<-------------->|   5.Model    |      | 7. View(html.erb) | |
|        |    |           |______________|      |___________________| |
|4. seed |    |_______________________________________________________|
'--------' 
```

### Plan:

- 🔲 Rehearse OOP before/after ActiveRecord
- 🔲 As a user I can list all the pokemons
- 🔲 As a user I can see one pokemon's details


### Steps

- 1 - Create Database
- 2 - Create Migration with a timestamp
- 3 - Create Table with desired attributes
- 4 - Add migration
- 5 - Create the model
- 6 - Seed the database with instances of Pokemon from an api
- 7 - configure the sinatra views for the list of Pokemon
- 8 - display the pokemon in the views.

*** Extra ***

- 9 - configure sinatra to display details of individual pokemon
- 10 - display the individual details on a different page

### Use

You guys are free to clone this repo and play around with it to get a further idea.

Just remember to: 

- bundle install
- rake db:drop
- rake db:create
- rake db:migrate
- rake db:seed

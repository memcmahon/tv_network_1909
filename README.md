# TV Network

## Spec Harness Instructions (For Instructors)

In order to run the spec harness, first create a directory with a `students.txt` file.

In `students.txt`, put a list of your students Github handles.  For example:

```
aziobrow
dionew1
memcmahon
s-espinosa
```

From the command line, run the following script, replacing `<repository_name` with the name of the challenge repo:

```
for i in `cat students.txt`; do
  git clone git@github.com:$i/<repository_name> $i
  cd $i
  git pull origin spec # this will cause a merge commit message
  rspec
  echo
  echo
  read -p 'Press Enter to continue'
  cd ..
done
```

For each student, you will need to create or `:q` out of a merge commit message!

## Instructions

* Fork this Repository
* Clone your forked repo to your computer.
* Complete the activity below.
* Push your solution to your forked repo
* Submit a pull request from your repository to this repository
  * Put your name in your PR!

## Iteration 1

Use TDD to create a `Character` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/character'
# => true

pry(main)> kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})    
# => #<Character:0x00007f98a4ba8dc8...>

pry(main)> kitt.name
# => "KITT"

pry(main)> kitt.actor
# => "William Daniels"

pry(main)> kitt.salary
# => 1000000
```

## Iteration 2

Use TDD to create a `Show` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/character'
# => true

pry(main)> require './lib/show'
# => true

pry(main)> kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})    
# => #<Character:0x00007f98a4ba8dc8...>

pry(main)> michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
# => #<Character:0x00007f8327213de0...>

pry(main)> knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])    
# => #<Show:0x00007f83280b3288...>

pry(main)> knight_rider.name
# => "Knight Rider"

pry(main)> knight_rider.creator
# => "Glen Larson"

pry(main)> knight_rider.characters
# => [#<Character:0x00007f8327213de0...>, #<Character:0x00007f8326ab57d8...>]

pry(main)> knight_rider.total_salary
# => 2600000
```

## Iteration 3

Use TDD to create a `Network` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/network'
# => true

pry(main)> require './lib/show'
# => true

pry(main)> require './lib/character'
# => true

pry(main)> nbc = Network.new("NBC")    
# => #<Network:0x00007fe5f83ea3b0...>

pry(main)> nbc.name
# => "NBC"

pry(main)> nbc.shows
# => []

pry(main)> michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})    
# => #<Character:0x00007fe5f88721f8...>

pry(main)> kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})    
# => #<Character:0x00007fe5f8448f78...>

pry(main)> knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])    
# => #<Show:0x00007fe5f8398970...>

pry(main)> leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
# => #<Character:0x00007fe5f832bb18...>

pry(main)> ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})    
# => #<Character:0x00007fe5f8172a60...>

pry(main)> parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])    
# => #<Show:0x00007fe5f88b0a20...>

pry(main)> nbc.add_show(knight_rider)

pry(main)> nbc.add_show(parks_and_rec)    

pry(main)> nbc.shows
# => [#<Show:0x00007fe5f8398970...>, #<Show:0x00007fe5f88b0a20...>]

pry(main)> nbc.highest_paid_actor
# => "Amy Poehler"
```

## Iteration 4

Use TDD to update your `Network` class so that it responds to the following interaction pattern:

```ruby
pry(main)> require './lib/network'
# => true

pry(main)> require './lib/show'
# => true

pry(main)> require './lib/character'
# => true

pry(main)> nbc = Network.new("NBC")    
# => #<Network:0x00007fe5f83ea3b0...>

pry(main)> michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})    
# => #<Character:0x00007fe5f88721f8...>

pry(main)> kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})    
# => #<Character:0x00007fe5f8448f78...>

pry(main)> knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])    
# => #<Show:0x00007fe5f8398970...>

pry(main)> leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
# => #<Character:0x00007fe5f832bb18...>

pry(main)> ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})    
# => #<Character:0x00007fe5f8172a60...>

pry(main)> parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])    
# => #<Show:0x00007fe5f88b0a20...>

pry(main)> nbc.add_show(knight_rider)

pry(main)> nbc.add_show(parks_and_rec)    

pry(main)> nbc.payroll
# => {"David Hasselhoff" => 1600000, "William Daniels" => 1000000, "Amy Poehler" => 2000000, "Nick Offerman" => 1400000}
```

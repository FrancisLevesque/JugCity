# Jug City

## Explanation
My friend and I are making a board game called Jug City (it's a climbing term I swear)! Why figure out probabilities by hand, when you can get a computer to do it? :winky_face

## Getting Setup
You'll need to have a working version of Ruby (rbenv is a good choice to manage versions). Once you have a decently up to date version (ideally 2+) run `gem install bundle`.

## Using the Script
For help out, run the command without arguments:
`./jug_city`

To get a set of dice that matches the probability range of a climb, simply pass in the grade of a climb to the program:
`./jug_city 5.10`

## Running the Tests
`bundle exec rspec`
# My First Ruby Tutorial

This tutorial aims at teaching the minimum knowledge of Ruby needed in order to quickly create a web application using Ruby on Rails.

_Note: This tutorial was written for MacOS commands. See [Windows Command Line (CMD) and Mac OS Terminal Navigation Commands](https://arian-celina.com/windows-cmd-macos-terminal-navigation/) for the Windows equivalancies of most of what we will be referring to in this tutorial._

## Why should I learn Ruby?

[Ruby](https://www.ruby-lang.org/en/) is considered a beginner-friendly programming language for a number of reasons.

1. Both Ruby and [Ruby on Rails](https://rubyonrails.org/), the backend web application framework most often used for developing Ruby applications, are open source. That means that the source code is available for free online. With access to the source code, you can see the inner workings of the code and make customizations for your particular needs. Additionally, open sourced languages are subject to peer review, so security flaws and bugs are more easily identified and fixed.
2. Many Rubyists describe Ruby as a "pleasant" language to use. Reading ruby code is very close to reading plain english and the syntax is relatively straight-forward.
3. The Ruby community is huge. Ruby is one of the top 10 most popular programming languages, and many companies, large and small, have built their applications with Ruby. Some frequently cited examples include [GitHub](http://github.com/), [Shopify](https://www.shopify.com/), and [Airbnb](https://www.airbnb.com/). Ruby on Rails has a very large presence on the web and has helped to drive a huge amount of business in the last decade and a half.
4. Another benefit of the large reach of Ruby that is particularly relevant for new Ruby developers is that there is a huge amount of online developer support. The [Ruby docs](https://www.ruby-lang.org/en/documentation/) are robust and user-friendly and there are numerous guides available. Because Ruby is considered a mature programming language, there is also an abundance of user-sourced questions and answers to ruby issues online. If you run into a problem while working with Ruby or Ruby on Rails, chances are, [someone before you has had the same issue](https://stackoverflow.com/questions/tagged/ruby).
5. Beyond the standard Ruby library is a massive library of ["gems"](https://rubygems.org/), which allow for easy implementation of features or quick connectivity to external services. This is another reason Ruby is considered a high productivity langauge.

## Requirements

* A text editor of your choice. Some common editors for Ruby include [Atom](https://atom.io/), [Sublime](http://www.sublimetext.com/), and [RubyMine](https://www.jetbrains.com/ruby/promo/?gclid=EAIaIQobChMIgebK96n_5gIVj4bACh1xmAxkEAAYASAAEgKOIvD_BwE).
* [Ruby](https://www.ruby-lang.org/en/documentation/installation/)

You can check if ruby is installed by typing `ruby -v` in terminal. If ruby is installed, this will show the version of ruby installed on your system.

## Goals for this workshop

* Familiarization with basic Ruby data structures
* Experience writing ruby code in irb
* Able to write and run a unit test using RSpec
* Able to create a basic Ruby on Rails application

## Interactive Ruby (irb)

Ruby comes with its own interactive playground called `irb`, which is short for *interactive ruby*. `irb` is an effective tool to explore the capabilities of Ruby and this is where we will start this tutorial.

To begin, open up your terminal and type (omit the `$`, that just notes that you are running a command from the command line):

```bash
$ irb
```

You are now in irb. You can exit by typing `exit` or `ctrl + d`.

Let's begin by trying out a few basics. Type the following commands into irb, one at a time, and see what they give you.

```bash
irb(main):001:0> 4 * 3
irb(main):002:0> puts "Hello world"
irb(main):003:0> name = "Angela"  # put your name
irb(main):004:0> name
```

The output of the above should look as follows:
```bash
irb(main):001:0> 4 * 3
=> 12
irb(main):002:0> puts "Hello world"
Hello world
=> nil
irb(main):003:0> my_name = "Angela"
=> "Angela"
irb(main):004:0> my_name
=> "Angela"
irb(main):005:0> abbreviated_days = ["Sun", "Mon", "Tues", "Weds", "Thurs", "Fri", "Sat"]
=> ["Sun", "Mon", "Tues", "Weds", "Thurs", "Fri", "Sat"]
```

### Objects

Ruby is an [Object Oriented Programming](https://en.wikipedia.org/wiki/Object-oriented_programming) language. We won't get into OOP too deeply, but here is a [good article](https://www.freecodecamp.org/news/object-oriented-programming-concepts-21bb035f7260/) that explains the major principles of OOP. One way to think about Ruby as an object oriented language is that everything is an object or a `Class`. We will get into this a bit later.

You can see the "everything is a class" idea at work using some of the examples above.

```bash
irb(main):006:0> 12.class
=> Integer
irb(main):007:0> "Hello world".class
=> String
irb(main):008:0> name.class
=> String
irb(main):009:0> abbreviated_days.class
=> Array
```

Frequently you will need a collection of objects. In Ruby, we use [Arrays](https://ruby-doc.org/core-2.4.1/Array.html) and [Hashes](https://ruby-doc.org/core-2.5.1/Hash.html) to represent collections.

```bash
irb(main):010:0> dwarves = ['Happy', 'Sleepy', 'Sneezy', 'Angry', 'Bashful', 'Dopey', 'Doc']
=> ["Happy", "Sleepy", "Sneezy", "Angry", "Bashful", "Dopey", "Doc"]
irb(main):011:0> animal_foot_count = {penguin: 2, horse: 4, bumble_bee: 6, leopard: 4, kangaroo: 2, spider: 8}
=> {:penguin=>2, :horse=>4, :bumble_bee=>6, :leopard=>4, :kangaroo=>2, :spider=>8}
```

### Methods

You can also define functions in `irb`, which is called a "method" in Ruby. A method is defined as such:

```bash
irb(main):012:0> def say_my_name(name)
irb(main):013:1>   puts "Hello #{name}, thanks for trying out Ruby!"
irb(main):014:1> end
=> :say_my_name
```

Now we have a function called `say_my_name` which takes a paramater of `name`. Let's call this method with the value of `my_name` we set earlier.

```bash
irb(main):015:0> say_my_name(my_name)
Hello Angela, thanks for trying out Ruby!
=> nil
```

Since Ruby is not a strongly-typed language, we can pass any type of object into that method, for example:

```bash
irb(main):017:0> say_my_name(2492)
Hello 2492, thanks for trying out Ruby!
=> nil
```

That's your crash course in the ruby language. Now let's write some executable ruby code!

## Running a Ruby file

Ruby files, files with the `.rb` extension, are run in the terminal with the `ruby` command. Take a look at the file called `hello_world.rb`. What will this do when we run it? Let's try it out.

```ruby
$ ruby hello_world.rb
```

Generally our ruby code will be contained within an object, typically a class. Find the file called `calculator.rb`. What do you think will happen when we try to run this file? Let's try it out.

```ruby
$ ruby calculator.rb
```

Is that what you expected?

Because the code in this class is contained within a Ruby object, or class, we have to first access the class in order to call the methods within the class. Insert the following lines at the end of the `calculator.rb` file.

```
calculator = Calculator.new
puts calculator.add(2, 4)
puts calculator.subtract(5, 4)
puts calculator.multiply(3, 3)
puts calculator.divide(16, 2)
```

The first line here is instantiating, or making an instance of the class so that we can access the methods and data within (there is no data in this class, just methods). Each of the next four lines is calling a method within that class instance and printing them to the console (`puts`).

Now try to run the file again.

Typically, the class instantiation and method calls would occur in a different file, but you get the idea.

Let's try to make our class a little more interactive. Let's look at a file called `greeting.rb`. Run this file and follow the prompts.

Do you understand what is happening here? Let's discuss.

## Running a test

Every great developer knows that your code is only as good as your test suite reflects. For Ruby, [RSpec](https://rspec.info/) is the most commonly used test suite for unit tests. [Minitest](https://github.com/seattlerb/minitest) is another popular testing framework for Ruby applications.

Let's walk through how to run tests for your application. In these examples we are writing the tests before we write the code to satisfy the tests. This method of writing tests before code is known as [Test-Driven Development](https://en.wikipedia.org/wiki/Test-driven_development).

Verify that you are at this project's root directory on the command line and install the rspec gem:

```ruby
gem install rspec
```

Create a folder in this root directory called `spec` where we will house all of your test files. `cd` into this folder and create a file called `reverser_spec.rb`. Let's write our first test:

```ruby
describe 'Testing' do
  it "should be true" do
    expect(true).to be true
  end
end
```

Run the test with the following command:

```ruby
$ rspec spec/reverser_spec.rb
```

This test will pass because you are asserting that true is true (which it is). Let's change the test to call our `Reverser` class:

```ruby
describe 'Reverser' do
  it "should reverse a word" do
    reverser = Reverser.new
    expect(true).to be true
  end
end
```

You should get an error `uninitialized constant Reverser`. That's because we haven't created the `Reverser` class yet. Go back to the root and create a file called `reverser.rb` and create the class:

```ruby
class Reverser
end
```

Since you are now trying to refer to a different file, we have to amend the first line of the test file to `require_relative '../reverser'`. Try running your test again; it should pass.

Now let's write a more meaningful test:

```ruby
require_relative '../reverser'

describe 'Reverser' do
  it "should reverse a word" do
    reverser = Reverser.new
    expect(reverser.reverse_word("hello")).to eq "olleh"
  end
end
```

Now run your tests. This error should make sense. You don't have a `reverse_word` method in your `Reverser` class. Let's add that.

```ruby
class Reverser
  def reverse_word(word)
    word.reverse
  end
end
```

Run your tests. You now have a test-driven-developed method!

## Spinning up a Ruby on Rails application

For the sake of time, we are going to jump straight into developing our first Ruby on Rails application. In your terminal, navigate to where you want to create your application. If you are in the root of this tutorial, `cd ../` will bring you one level up,

### Create the application

Ruby on Rails has simple commands designed to help you create a web app quickly. We are going to build a simple rock-paper-scissors application. This will create the skeleton of your Ruby on Rails application.

```ruby
$ rails new rock-paper-scissors
```

Now if you `ls`, you will see your app. `cd` into the `rock-paper-scissors` directory and take a look around. One thing to keep in mind is that Ruby on Rails is not the ideal tool for the tiny application that we are going to be building. When we call the `rails new` command, scores of files and dependencies are added to our application, many of which will never be touched. Rails is powerful because of this, but sometimes it's overkill. There are alternative frameworks for Ruby worth exploring, such as [Sinatra](http://sinatrarb.com/), which is much lighter weight and more customizable than Rails. But, if you want to learn Ruby, you should also learn Rails, so here we are.

You actually have a working web app now. Don't believe me? Try running your server.

```ruby
$ rails s
```

Now navigate to [http://localhost:3000 ](http://localhost:3000) in your browser. You should see something that looks like this:

![yay, you're on rails](https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwifrM-7tP_mAhUXbs0KHXq4BFkQjRx6BAgBEAQ&url=https%3A%2F%2Fedgeguides.rubyonrails.org%2Fgetting_started.html&psig=AOvVaw2hbyZJaK0F-1Noy2mMeN5b&ust=1578964818095094)

### Generating the models

Your new Ruby on Rails application is set up to adhere to the [MVC pattern](https://www.tutorialspoint.com/ruby-on-rails/rails-framework.htm) - Model, View, Controller. Models are Ruby classes. Business logic lives in the models and they also handle data moving between the application and the database.

![MVC in Rails](https://www.bogotobogo.com/RubyOnRails/images/MVC/MVC_Rails.png)

Our application is simple and we only need one class: `Game`. We can define attributes (data) that are associated with the class when we generate the class. We don't need to define any attributes for our `Game` class.

```ruby
$ rails g model game
```

You can find the code for your newly generated models in the *app/models/* directory. Note that these generated models extends `ActiveRecord`. [ActiveRecord](https://guides.rubyonrails.org/active_record_basics.html#what-is-active-record-questionmark) is the ORM for Ruby on Rails that facilitates creating and using business objects.

Migrations now need to be ran to modify the database schema to create the tables. You can preview how this will happen in the */db/migrate/* folder. To run these migrations, run:

```ruby
$ rails db:migrate
```

You can now view your database schema at *db/schema.rb*.

### Generating the controllers and views

The controllers are where requests get routed in the application. For example, when I go to https://www.meetup.com, I am going to the `/` home root of the Meetup application. When I hit the url https://www.meetup.com/people-of-color-code, I am being routed to the /people-of-color-code route in a controller somewhere in the application.

We are only concerned with the `/` home route, but we still need to generate a controller for redirection. In our application, we are going to create a `games` controller. We would create a controller with two routes, `/index` and `/results`, with this command:

```ruby
rails g controller games index results
```

Note that when generating controllers, we use the plural form of the model name. When we generated the model, we used the singular form.

Generating a controller in this manner also generates a view for each route specified. We specified a route of *index*, so when we hit http://localhost:3000/games/index, we will see the view template that was automatically generated. The views are in the *app/views/* directory.

But we also want the root of the application (http://localhost:3000/) to show this page when we hit this url, rather than that generic splash page indicating you created your rails app. We can accomplish this by adding `root 'games#index'` in the *config/routes.rb* file. You can see that the routes were added here as part of the controller generation. To change the route, add it so your *routes.rb* file looks like this:

```ruby
Rails.application.routes.draw do
  root 'games#index'
  get 'games/index'
  get 'games/results'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
```

Now if you go to the root of your application, you will see the view for the games index. If you want to add new routes in your controller, you will also have to add them to the *routes.rb* file.

Congratulations! You have created a single-page Ruby on Rails application!

### Adding application code

Now that we have our `Game` model, view, and controller set up, let's make it work for us.

Our game is rock-paper-scissors so we need some logic to start. Just for simplicity and time's sake (for the sake of this tutorial), we are going to put all of our logic in the `Game` class and we are not writing tests.

Copy this code into your application

*app/models/game.rb*
```ruby
class Game < ApplicationRecord

  def get_computer_weapon
    ['rock', 'paper', 'scissors'].sample
  end

  def get_results(player_weapon, computer_weapon)
    winner, winning_weapon = determine_winner(player_weapon, computer_weapon)
    losing_weapon = winning_weapon == player_weapon ? computer_weapon : player_weapon
    {winner: winner, winning_weapon: winning_weapon, losing_weapon: losing_weapon}
  end

  def determine_winner(player_weapon, computer_weapon)
    case
    when player_weapon == computer_weapon
      nil
    when player_weapon == 'rock' && computer_weapon == 'scissors'
      ['You win!', player_weapon]
    when player_weapon == 'paper' && computer_weapon == 'rock'
      ['You win!', player_weapon]
    when player_weapon == 'scissors' && computer_weapon == 'paper'
      ['You win!', player_weapon]
    else
      ['The computer wins!', computer_weapon]
    end
  end

end
```

*app/controllers/games_controller.rb*
```ruby
class GamesController < ApplicationController

  def index
  end

  def results
    game = Game.new

    @player_weapon = params[:player_weapon]
    @computer_weapon = game.get_computer_weapon unless @player_weapon.blank?
    @results = game.get_results(@player_weapon, @computer_weapon)
  end

end
```

*app/views/games/index.html.erb*
```ruby
<%= form_with(url: "/games/results", method: "get", local: true) do %>
  <%= radio_button_tag(:player_weapon, "rock") %>
  <%= label_tag(:player_weapon_rock, "Rock") %>
  <%= radio_button_tag(:player_weapon, "paper") %>
  <%= label_tag(:player_weapon_paper, "Paper") %>
  <%= radio_button_tag(:player_weapon, "scissors") %>
  <%= label_tag(:player_weapon_scissors, "Scissors") %>
  <%= submit_tag("Begin Game!") %>
<% end %>
```

*app/views/games/results.html.erb*
```ruby
<p>You chose <%= @player_weapon %></p>
<p>The computer chose <%= @computer_weapon %></p>
<% if @results[:winner].nil? %>
  <p>It is a draw!</p>
<% else %>
  <p><%= @results[:winning_weapon] %> beats <%= @results[:losing_weapon] %>. <%= @results[:winner] %></p>
<% end %>

<%= link_to "New Game", action: "index" %>
```

Now let's see the game in action. Navigate to http://localhost:3000/ and start playing.

## Resources

* [Ruby Programming Language](https://www.ruby-lang.org/en/)
* [Ruby on Rails](https://rubyonrails.org/)
* [Sinatra](http://sinatrarb.com/)
* [RSpec](https://rspec.info/)
* [Minitest](https://github.com/seattlerb/minitest)
* [ActiveRecord Associations](https://guides.rubyonrails.org/association_basics.html)
* [ActiveRecord Validations](https://guides.rubyonrails.org/active_record_validations.html)
* [Object-oriented programming](https://en.wikipedia.org/wiki/Object-oriented_programming)
* [How to explain object-oriented programming concepts to a 6-year-old](https://www.freecodecamp.org/news/object-oriented-programming-concepts-21bb035f7260/)
* [MVC Pattern](https://www.tutorialspoint.com/ruby-on-rails/rails-framework.htm)
* [How To Use IRB to Explore Ruby](https://www.digitalocean.com/community/tutorials/how-to-use-irb-to-explore-ruby)
* [Setting the default page](https://curriculum.railsbridge.org/intro-to-rails/setting_the_default_page)
* [15 Simple Steps to Creating a CRUD Web App with Ruby on Rails](https://blog.usejournal.com/15-simple-steps-to-creating-a-crud-web-app-with-ruby-on-rails-e49ad1e39378)
* [4 Key Things You Need To Know About Ruby on Rails](https://skillcrush.com/2015/01/29/13-ruby-rails/)
* [Famous Web Apps Built with Ruby on Rails](https://railsware.com/blog/famous-web-apps-built-with-ruby-on-rails/)
* [Pros and cons of open source programming languages](https://opensourceforu.com/2016/11/pros-cons-open-source-programming-languages/)
* [Who Gives a F*** About Rails in 2019?](https://naturaily.com/blog/who-gives-f-about-rails)
* [Stack Overflow - Ruby](https://stackoverflow.com/questions/tagged/ruby)


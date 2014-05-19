---
layout: post

title: Ruby Basics
subtitle: "Introduction to Ruby"
cover_image: blog-cover.jpg
excerpt: "Ruby is a programming language created by an <i>awesome</i> Programmer from Japan named <a href='http://en.wikipedia.org/wiki/Yukihiro_Matsumoto'>Yukihiro Matusumoto (or Matz)</a>. He had a vision of creating a scripting language that was more powerful than pearl and more object oriented than python. He wanted to make the language human readable and often said 'natural, not simple' in a way that it mirrors life."
category: "ruby"

author:
  name: Florida Elago
  twitter: floriidaaa
  gplus: +FloridaElago
  bio: Co-founder
  image: https://lh6.googleusercontent.com/-z__0yucwG38/AAAAAAAAAAI/AAAAAAAAJ_A/qDY5dtCZ4zo/s120-c/photo.jpg
---

Hello Ruby Koders,

These are our first shownotes from our Google Hangout session that we had on March 1, 2014.
This also doesn't include the quiz stuff that we worked on, I'm gonna write a seperate article for that

In our session we discussed the following topics:

**Brief Introduction**

* [What is Ruby](#what-is-ruby)
  * [OMG! Everything in Ruby is an object!](#everything-is-an-object-in-ruby)
* [Ruby Version Managers](#ruby-version-managers)
* [Gems](#gems)

**[Coding Time](#code-begins-here)**

* [How to do simple iterations](#simple-iterations-with-ruby)
* [Comments](#comments)
* [Variables](#variables)
  * [Constants](#constants)
* [Conditionals](#conditionals)
  * [If statement](#if-statement)
  * [Unless statement](#unless-statement)
* [nil == nada](#nil-nils)
* [Range](#range)
  * [Converting a range to an array](#simple-shorthand-trick)
* [Arrays](#arrays)
  * [`"<<"` `Array#push` short hand](#shorthand-bonus)
  * [`Array#push`](#arraypush)
  * [`Array#pop`](#arraypop)
  * [`Array#delete`](#arraydelete)
  * [`Array#delete_at`](#arraydelete_at)


## What is Ruby

Ruby is a programming language created by an *awesome* Programmer from Japan named [Yukihiro Matusumoto](http://en.wikipedia.org/wiki/Yukihiro_Matsumoto)(or Matz). He had a vision of creating a scripting language that was more powerful than pearl and more object oriented than python. He wanted to make the language human readable and often said "natural, not simple" in a way that it mirrors life.

### Everything is an object in Ruby
 > In Ruby, just like in real life, our world is filled with objects. Everything is an object - integers, characters, text, arrays - everything. - [Ruby Monk](https://rubymonk.com/learning/books/1-ruby-primer/chapters/6-objects/lessons/35-introduction-to-objects)

*This will be discussed later on when we tackle OOP more in the future*

## Ruby Version Managers

We need version managers because a Ruby version might have a specific syntax that has been deprecated in another and using another version of Ruby to run an application or script that requires a specific version of Ruby could result to multiple syntax errors.

To solve this we use a tool called version manager, version managers allows us to install and work with different Ruby environment, interpreters and gems.

The following are the most notable ruby version managers out there

* [rbenv](http://rbenv.org)
* [RVM](https://rvm.io/)

# Gems

A gem is a module or a library that you can install in your ruby projects so that you are able to use these inside your projects. Gems provide extensions and additional features that extends the capabilities or the Ruby language.

Throughout our hangouts we will be making use of different gems.

## Code begins here.
---

## Simple iterations with Ruby
If you were to write a loop in Java it would probably look like this:

``` java
class HelloWorld {
  public static void main(String[] args) {
    for(int i=0;i<3;i++)
       System.out.println("Hello World!");
  }
}
```
This will return:

Hello World!
Hello World!
Hello World!

in Ruby we can do the same thing, with a simple and readable(for beginners) line of code.

``` ruby
3.times { puts "Hello World!" }

```
Short and sweet, and it returns the same as above. This is what makes Ruby such a likeable language for most people.

## Comments
Comments are just words or phrases that you want to put into your code but you don't really want them to be executed as Ruby code. These could be either used in debugging by commenting out lines that are having problems or documenting. To write a variable in Ruby just add the pound key `#` before the text

``` ruby
# This line doesn't work I wonder why
# int i = 0
#
# Maybe I'll have a sandwich today.
# Nope.. coffee will do just fine.
# This will print out hello world
puts "Hello world"
puts "I like sushi"
# Hi ruby
```

you can also write comments with multiple lines using this syntax

``` ruby
=begin
I'm just commenting.. right here.
None of this will be executed.
Don't believe me?
puts "Believe me!"
=end
```

## Variables

Since Ruby is a dynamic programming language we don't have to declare variable types anymore! Goodbye `int i = 0` and hello

``` ruby
# we can assign an integer to a variable
i = 0
# replace it with a string
i = "a string! wow!"
# replace it with a boolean
i = true
# replace it with a string again.... with a heart shape because everyone likes hearts
i = "dynamic <3"
```

Ruby programmers like to use the "Ruby Convention" or the "Ruby Way" . We like using **underscores, NOT ~~camel case~~** (sorry programmers from other languages TT_TT we don't hate you I promise <3)

So instead of writing something like: `myFirstVariableInRuby` we want to see something like `my_first_variable_in_ruby`

I would advise you all to follow this convention, it's still acceptable if you use camel case but that's just not the "Ruby Way"

### Constants

Constants are variables that contain values that you do not expect to change. Consonants must start with a capital letter, and just like the "Ruby Way" we do it with underscores

*Unlike some languages, Ruby will let you change the values in constants by assigning a new value to them*

``` ruby
MINIMUM_CUPS_OF_COFFEE_EVERYDAY = 1
NUMBER_OF_FINGERS_IN_ONE_HAND = 5
# I'm changing it, haha!
MINIMUM_CUPS_OF_COFFEE_EVERYDAY = 2 # YESSSS!!!!!!
NUMBER_OF_FINGERS_IN_ONE_HAND = 6 # WHAAAATTTTTT?????!!!!
```

## Conditionals

### If statement

Our first conditional! yay!

if-statement is a condtional statement that will execute if the condition is true and it also has an option to execute another code if it returns false. The condition is passed as an argument to the if statement.

``` ruby
# here we have a variable set to true
you_like_ruby = true

# we pass the variable to the if statement
if (you_like_ruby)
  # when the value is true this will be executed
  puts "We can be friends"
else
  # when the value is false this will be executed
  puts "We can still be friends"
end
```
and we can see how natural it feels to read the code.
> If you like Ruby we can be friends, if not, we can still be friends

### Unless statement

This statement is pretty unique to Ruby, the sytax is similar to the `if` statement but it works the opposite(because unless is the opposite of if). If the passed value returns `false` the first statement will run, `unless` also supports `else` so if it returns true it will run the code inside the `else`

``` ruby
time_to_drink_coffee = true
unless time_to_drink_coffee
  # keep programing with ruby
else
  # go get coffee
end

```

Did you notice that i didn't put `()` for passing arguments? Ruby allows us to leave out the parenthesis! :) Isn't it cool?

Let's read this like the if statement
> Unless it's time to drink coffee then keep programming with Ruby, if yes(time to drink coffee) then go get coffee

I admin sometimes unless statements gets pretty confusing sometimes. This is how I would use `if` and `unless`


Instead of doing

``` ruby
time_to_go_out = true
if !time_to_go_out
  # stay in
end
```

I would prefer to use `unless`

``` ruby
time_to_go_out = true
unless time_to_go_out
  # just stay inside
end
```

BUT

I wouldn't use an `unless` `else` because it could be confusing @_@. I would just use an if statement

Not this

``` ruby
time_to_go_out = true
unless time_to_go_out
  # stay inside
else
  # go run
end
```

But this

``` ruby
time_to_go_out = true
if time_to_go_out
  # go run
else
  # stay inside
end
```

*I won't put case statements here, lets do that next time alrighty*

## Nil nils.
What is nil? You might be familiar with NULL or nothing/nada. Let's say we want to perform an operation in an object, but we don't know if it exists.

We can simply do

``` ruby
# .nil is a method that you can call any object to check if they have no value or if they have a value.
# it can get oretty tricky because it doesn't necessarily mean empty.
# "" this is an empty string, it's not nil, but it's empty


if cool_object.nil?
  puts "cool object doesn't exist"
else
  puts cool_object.inspect
end
```

## Range

A range represents an interval or a set of values with a beginning and an end.

``` ruby
# let's create a range from 1-20
#to do that we can simply do
my_first_range = (1..20)
```

Yay! we created a range, but hmm, what can we do with it? ...
Well let's try going through `each` of them and print out their values!

``` ruby
my_first_range.each { |x| puts x }
## or optionally
my_first_range.each do |x|
  puts x
end
```
awesome! that will return

``` ruby
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
```

### Simple shorthand trick

If you're familiar with arrays, this is a trick that I showed to turn a range into an array

``` ruby
range_array = *1..5
# yup that's pretty much it.
# that will return [1,2,3,4,5] (which is an array)
```

## Arrays
*Yay our first collection*

Arrays are a collection of objects that are in order with index values that start with zero.

``` ruby
# I mentioned that arrays have positions that start with zero.
# here are positions|0|1|2|3|4|
one_to_five_array = [1,2,3,4,5]
```

**Methods we used in the hangout**

### Array#push

the `push` method takes in an argument and this will be added to the array.

``` ruby
x = [1,2,3]
# push for to the array
x.push(4)
# now the x array now has [1,2,3,4]
```
#### shorthand bonus

``` ruby
# the code does the same thing as the code above! :)
x << 4
```

### Array#pop

The `pop` method deletes the last object in the array. So the object goes.. POP! ... get it? no..? Ok..

``` ruby
x = [1,2,3]
x.pop
# 3 has been 'popped' so the x array now contains [1,2]
```

### Array#delete

The `delete` method accepts an argument and it finds it in the array and deletes it.

```ruby
x = [1,2,3,4,5,6,1,1,1,1,1,1]
# hmmm. too much 1s.. let's delete them ALL!!!

x.delete(1)
# now all the 1s are gone [2,3,4,5,6]
```

### Array#delete_at

Last command we used was `delete_at`, `delete_at` takes in an argument, the argument that we will pass must be the index/position of the object we want to delete in the array

``` ruby
x = [1,2,3,4,5,6,7]
```

also I noticed i just kept on using numbers but an array can hold anything. Watch!

``` ruby
so_many_types = [ 0.0123, 1, "Hello Ruby Koding!", true, false, { message: "hello I'm a hash, i will be introduced later" }]
```

## Sources & Resources:

* [About Ruby](https://www.ruby-lang.org/en/about/)
* [Yukihiro Matsumoto Wiki](http://en.wikipedia.org/wiki/Yukihiro_Matsumoto)
* [rbenv](http://rbenv.org)
* [RVM](http://rvm.io)
* [Ruby Monk](http://rubymonk.com)
* [What is a ruby gem](http://guides.rubygems.org/what-is-a-gem/)
* [Ruby Docs](http://www.ruby-doc.org/)
* [Arrays](http://www.ruby-doc.org/core-1.9.3/Array.html)
* [Ranges](http://www.ruby-doc.org/core-1.9.3/Range.html)
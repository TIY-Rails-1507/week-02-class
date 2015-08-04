# Week 2

Slack Channel - https://tiy-rails-1507.slack.com/messages/general/

[Homework from Monday](#homework_monday)

## Monday
### Rough plan for Monday

| Topic  | Start Time | End Time | Duration |
| ------------- | ------------- | ------------- | ------------- |
| A bit of Git  | 18:00  | 18:10  | 10 min  |
| Recap of coursework from week 1  | 18:10  | 18:30  | 20 min  |
| Class attributes  | 18:30  | 18:50  | 20 min  |
| break  | 18:50  | 19:00  | 10 min  |
| Exception handling  | 19:00  | 19:30  | 30 min  |
| break  | 19:30  | 19:35  | 5 min  |
| Arrays and Hashes  | 19:35  | 20:35  | 60 min  |
| break  | 20:35  | 20:40  | 5 min  |
| Q & A \ buffer  | 20:40  | 21:00  | 20 min  |


### Actually covered on Monday

| Topic  |
| ------------- |
| A bit of Git  |
| Recap of coursework from week 1  |
| Class attributes  |
| Arrays and Hashes  |
| Q & A  |

### Topics left for homework from Monday

| Topic  |
| ------------- |
| Recap of coursework from week 1 - look in this repo for solutions |
| Exception handling |

[Homework from Monday](#homework_monday)


### 1. A bit of Git
#### Git Aliases 
These are cutsom short cuts for Git commands.
The following examples may help you:
```
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.ls "log --pretty=format:'%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]' --decorate"
```

### 2. Recap of coursework from week 1
* Project Person
* Project Account
* Project Bank

## 3. Class attributes 
* attr_accessor
* attr_reader
* attr_writer


### 4. Exception handling
#### Example of an exception
```ruby
a = 5 + "5"
```

The general flow:

```ruby 
begin
    # execute general code here
rescue
    # this gets executed if an exception is thrown in the block above
end
```

Using an else in conjunction with rescue:

```ruby 
begin
    # execute general code here
rescue
    # this gets executed if an exception is thrown in the block above
else
    # this gets executed if no exception was thrown between begin and rescue
end
```

Ensure - to make sure code always executes:
```ruby 
begin
  puts "Hello, world!"
rescue
  puts "rescue"
else
  puts "else"
ensure
  puts "ensure"
end
```

This will print ```Hello, world! else ensure```

Reference: http://stackoverflow.com/a/6280005/259477

An interesting read - http://stackoverflow.com/a/2192010/259477


#### Excercise
4.1. Make the Account class throw an exception if we try to withdraw more money than is in the balance.

To do this follow these steps:
* Work on a fork of this repo
* Go into the homework folder
* Run the tests with ```ruby account_test``` - you should see one failure
* Make that test pass by making the account class throw an exception if the withdraw method is called with more then the balance
* Open main_har_coded.rb and follow the instructions
* Open main_interactive.rb and follow the instructions
* Ask on slack if you get stuck
* Let us know on slack once you have completed and pushed your changes to GitHub


### 5. Arrays and Hashes
#### Arrays
* Arrays are lists
* Iterate an array with while loops
* Iterate an array with blocks

#### Hashes
* Creating a hash
* Access values with explicit keys
* Hash with blocks
* Symbols 
* Using a hash as a method parameter

#### Excercises
5.1. Create a hard coded list of numbers. Loop through them, displaying each one to the console

5.2. Create a hard coded list of numbers. Display only the odd numbers to the console

5.3. Create a hard coded list of numbers. Display the count of even and odd numbers

5.4. Create a list of 5 random numbers, from 1 - 10 (inclusive of 1, exclusive of 10). Ask the user to try and guess a number that is in the list.


## <a name="homework_monday"></a>Homework from Monday
General Ruby
* Complete The Ruby Monk Primer - https://rubymonk.com/learning/books/1-ruby-primer

Arrays
* Read: http://learnrubythehardway.org/book/ex32.html
* Do the study drills in the URL above in a new file called: arrays_and_hashes/array_drills.rb
* Read and fill in all the tests in: arrays_and_hashes/array_tests.rb

Exception handling
* Read: http://www.humblelittlerubybook.com/book/html/chapter3.html - also good for general Ruby
* Read the section above on exception handling 
* Complete excercise 4.1

Need help?
* Ask on Slack
* Read - https://newcircle.com/bookshelf/ruby_tutorial/exceptions
* Ask on Slack :)

## Preperation for the next class

Read: http://ruby.bastardsbook.com/chapters/io/

## Wednesday

### 6. Files
###### 20 min - 19:30 - 19:50

#### Writing to a file

Using the File class:

```ruby
file_name = "example.txt"
file = File.open(file_name, "w")
file.puts "This is text"
file.close
```

### Excercises

6.1. Use exception handling to make sure that code above always closes the file

### Writing to a file - cont.

Using block notation:

```ruby
file_name = "example.txt"
File.open(file_name, "w"){ |file| file.puts "Contents of the file"}
```
The file is automatically closed when the block ends


### Reading a file

There are a few options to read a file:

```ruby 
file = File.open("example.txt", "r")
contents = file.read
puts contents   
file.close
```

and

```ruby
f = File.open("my/file/path", "r") 
f.each_line do |line| 
  puts line 
end 
f.close
```

Using a block:

```ruby
contents = File.open("sample.txt", "r"){ |file| file.read }
puts contents
```

The file is automatically closed when the block ends

### readlines and readline

A very common approach to reading files:

```ruby
File.open("example.txt").readlines.each do |line|
   puts line
end
```

This is referred when dealing with large files:

```ruby
file = File.open("example.txt", 'r')
while !file.eof?
   line = file.readline
   puts line
end
file.close
```
Note: don't forget to use exception handling in this example

Readline loads the entire file at once into memory. While this is fine for most applications, this is not good practice if the file is very large, especially if it is running on a server that is serving multiple users. - Ref http://ruby.bastardsbook.com/chapters/io/

### Excercises
6.1. The anagram challange - http://codekata.com/kata/kata06-anagrams/

It would be a good idea to copy the dictionary to your working folder: http://codekata.com/data/wordlist.txt


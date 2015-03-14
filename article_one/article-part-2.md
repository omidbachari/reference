# You're primed to kick butt. So, here's your first butt.
*You miss infinitely many of the shots you don't take. - Omid Gretsky*  
By Omid Bachari

How do we get started with programming? It starts by understanding that we have to be able to talk to our computer. Once we know how to talk to it, we can start doing things.

## Who am I communicating with when I program?

The listener or target audience when we program is also known as the **interpreter**. The interpreter lives in our computer and it reads our code, when we execute our programs.

Here is the good news, the interpreter is God-like in how perfectly it *listens* to you. But that's all it can do--it has very little judgment of its own. That's the bad news.

As long as the interpreter is listening, we must strive to tell it exactly what it needs to hear. That way, we can make it do what we want. Since we have provided a Ruby interpreter for our journey, Ruby is the language we will learn.

However, I distinctly remember "learning" Spanish for years in high school, and yet I can't speak a word of it. I doubt a native speaker know what I was saying, even if I tried. That would be a terrible outcome of the work we do here with Ruby. We'd like to accomplish more than approximately jack squat.

Hence, this is not a classroom. This is an opportunity to learn by doing. For the lesson below, notice that even the closest reading of this section will yield no results, without your computer. That's the only way it will stick. So, if you're in the mood to skim, that's perfect. Because I'm not in any mood to write you a book. Get your keyboard under your hands. Let's do things. Let's make things happen.

## Data types

Every language has different parts of speech. In programming, we break these up in a certain way. In this section, we are going to look at the programming equivalent to words and numbers. These are called **strings** and **fixnums**, respectively.

### Strings and Fixnums

We need to learn the basics of Ruby. Question: Which of the two things below is a string?

Choice A:
```ruby
"apple"
```
Choice B:
```ruby
37
```

Choice A is a **string**. In Ruby, when we want to tell the interpreter that something is text, we wrap it in single or double quotes.

Let's go to our [shell interpreter](link-to-resource) and try typing the following:

```no-highlight
> "apple".class
# Hit Enter
```

See. This **returns** String. That's the way we can prove that `"apple"` is a string. Strings are handy for using text in a program. So, what type of thing is `37`? Try the same thing for `37`.


```no-highlight
> 37.class
# Hit Enter
```

You got it! `37` is a **fixnum**. Fixnums can be used for arithmetic operations you need to perform for programs you create.

Notice that we just learned a couple of things. First, we learned about two types of data: strings and fixnums (fixnums are a.k.a. integers). Second, we learned our first micro-lesson about **methods**. The method looked like a dot and a word, attached to `"apple"` and `37`. This is one way we perform functions in Ruby. We put something in and something else comes out. We will learn about this more later, but in the present case, we just called the #class method (spoken "the dot-class method") on `"apple"` and `37`. Let's move on.

What's the difference between these two numbers:

```ruby
37
37.0
```
Use #class to find out. Don't worry about why they are different yet. For now, you should just know that there is a difference in how we talk about them.

## Practice with Data Types

Call #class on each of the following in your shell interpreter:

```ruby
"Dog"
"1"
"1.000"
'Dog'
" 'Dog' "
[1, 2, 4, 5, 6]
"[1, 2, 4, 5, 6]"
157
1.500
{ people: 'dog' }
"{ people: 'dog' }"
person
```
Did you notice something special about strings? They can contain characters that look like numbers, too. What counts is: they are wrapped in single or double quotes.

Don't worry if you see things you haven't learned about yet. The key is, there are different types of data, and they serve difference purposes. Strings and fixnums are the most intuitive place for us to start.

## Input and Output (plus, let's dabble in Variables)

We are almost at a point where we can build a simple program. So far, we have data. Now, let's do something with it.

Let's conceptualize something first. Suppose we have a cardboard box. This cardboard box doesn't change. However, I can put a dollar in it, or I can spit my toenail into it. This cardboard box can hold any number of things. Clear? That's how code is. We regularly improve and add to our code, but the same, unchanged code can carry different data, depending on the occasion. Just like our cardboard box. Our programs can be fixed but can deal with a variety of data that we **input**.

### Input

Let's create a program that *takes in* a string of your choosing. Remember from **Practice with Data Types** that strings can be made with a variety of characters, not just text but numbers, too. Go to your shell interpreter and follow the following example:

```no-highlight
> gets
# Hit Enter
```

When you do this, you are presented with a blinking cursor. The interpreter is waiting for you to pass your program some data. When you hit enter, the transaction is over. It took your data. The `gets` method will fetch data from the user in the shell. In this case, the data is taken in and then disappears (because we didn't store the data anywhere).

Pro tip: we don't usually use `gets` by itself. We instead use `gets.chomp` because when we hit enter, the interpreter also reads a returned line. And #chomp eliminates that extra line. From here on out, we use `gets.chomp`.

Hypothesis: No matter what input you enter, the `gets` method **converts** it to a string. Let's try to prove or disprove that. Let's **store** the data you entered with `gets`, so that we can later call #class on the input.

If, no matter what data you enter, it is a string, then we know the `gets` method is not only fetching our input from the shell but it's also converting that data into a string.

Follow this example in your shell interpreter:

```no-highlight
> var = gets.chomp
# Hit Enter
```

Now, there's the blinking cursor again. But when you give it some input and hit enter, you have **assigned** `var` to the input. In other words, you have stored that input in`var`.

The thing we just created by typing `var =` is called a **variable**. Stated differently, we have just declared that `var` is the variable assigned to whatever input `gets` fetches from the user.

We have complete control over how our variables are named; we picked `var` because we want to solidify that this is a variable. You could just as well have named it `toenail`. Your code will not behave any differently, either way.

Variables allow you to store data in one location and then refer to it again later in your program. It allows our program to stay the same, but the input from the user can change. How do we prove that we just stored something?

```no-highlight
> var
# Hit Enter
```

Calling this variable returns whatever you inputted. We'll talk more about variables in depth later. What matters here is that you can now call #class on `var`.

```no-highlight
> var.class
```

What happens? It returns `String`. So, we proved that we have successfully stored something in `var`. Keep running the code below code and trying different inputs (try numbers, words, etc.). Our goal is to try to prove or disprove that a variety of inputs all get converted to strings:

```no-highlight
> var = gets.chomp
# Hit Enter
```

Notice that running this repeatedly overwrites the old input stored in `var`. Also, we'll no longer direct you to hit enter explicitly.

Were you able to prove or disprove that `gets` converts whatever you give the interpreter into a string? Notice that `var` itself doesn't have a datatype until we assign it to something. That's why you got some choice words from the interpreter when you called `person` in the **Practice with Data Types** exercise.

### Output

What we have accomplished so far is pretty neat. We have learned that the interpreter can make sense of a few different types of data. And now we can start to pass data into our program, by using the `gets` method to take an input from the user of the shell.

Now, let's take the last step and output stuff. Full circle!

The `puts` command can print things to the shell, and thereby display it to the user. Try the following:

```no-highlight
> var = "apple"
> puts var
```

You can call puts on the variable, as above, but you can also call `puts` on the string itself, as below.

```no-highlight
> puts "apple"
```

You can also assign `var` to a fixnum and `puts` it, or you can directly `puts` a fixnum.

```no-highlight
> var = 1
> puts var
# What happened?
> puts 1
# Now, what happened?
```

In both cases, you get a nice, neat representation of that number. Returning to a previous thought, assign `var` to a fixnum, and then call #class on `var`. Did you get what you expected? What does that tell you about variables? At this point, you have called #class on variables a few different times, with a few different results.

Now, let's put some things together and solidify what we are trying to learn here. In abstract, we want to take something from the user and then output it back to them.

```no-highlight
> var = gets.chomp
# Type something and hit enter.
> puts var
```

Voila. So, you were able to take something from the user and then display it back to the user. That's kind of a big deal.

## Practice with Input/Output

Time to practice again!

1. Suppose we have the program provided below in Figure 1, and we intend to run it several different times. Is it possible that it can output any of the things in Figure 2, without us changing the code itself?

```no-highlight
var = gets.chomp
puts var
```
*Figure 1*

```no-highlight
Dog
Rabbit
frog
1234
1.34
HI THERE STRANGER
```
*Figure 2*

2. Suppose we have the two programs below. Would they behave differently in any way?

First program:
```no-highlight
input = get.chomp
```
Second program:
```no-highlight
catapault = get.chomp
```

3. Store the string `"1"` in a variable. Now, call that variable by typing it directly into the shell interpreter and hitting enter. Notice that the string is now stored in that variable. Call #class on that variable. That should prove to you that it's a string. Now, using Google, run the query "ruby convert to integer". You should be able to find a method that converts the string `"1"` to the fixnum `1`. Confirm the conversion with #class.

4. The following code can attach two strings together. Technically, this is called **concatenation**:

```no-highlight
> "apple" + " and orange"
```

Using the lesson learned above, implement the code needed for this to work:

```no-highlight
# Some code needs to be written before the following line behaves accordingly
> puts fruit1 + fruit2
apple and orange
```


```ruby
input
name
address
country
data
```

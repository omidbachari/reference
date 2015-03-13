# You're primed to kick butt. So, here's your first butt.
*You miss infinitely many of the shots you don't take. - Omid Gretsky*  
By Omid Bachari

How do we get started with programming? It starts by understanding that we have to be able to talk to our computer.

## Who am I communicating with when I program?

The listener or target audience when we program is also known as the **interpreter**. The interpreter lives in our computer and it reads our code, when we execute our programs.

Here is the good news, the interpreter is God-like in how perfectly it *listens* to you. But that's all it can do--it has very little judgment of its own. That's the bad news.

As long as the interpreter is listening, we can make sure to tell it exactly what it needs to hear. That way, we can make it do what we want. So, let's learn a language that the interpreter understands. In this case, Ruby is the language we will use.

However, I distinctly remember "learning" Spanish for years in high school, and yet I can't speak a word of it. Neither would a native speaker know what I was saying, even if I tried. That would be a terrible outcome of the work we do here with Ruby. We'd like to accomplish more than approximately jack shit.

This is not a classroom. This is an opportunity to learn by doing. That's the only way it will stick. So, if you're in the mood to skim, that's perfect. Because I'm not in any mood to write you a book. Get your keyboard under your hands. Let's do things. Let's make things happen.

## Data types

Every language has different parts of speech. In programming, we break these up in a certain way. In this section, we are going to look at words and numbers.

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

Let's go to our [shell interpreter](link-to-resource) and try the following:

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

Notice that we just learned a couple of things. First, we learned about two types of data: strings and fixnums (fixnums are a.k.a. integers). Second, we learned our first micro-lesson about **methods**. We will learn about this more later, but we just called the #class method (spoken "the dot-class method") on `"apple"` and `37`.

What's the difference between these two numbers:

```ruby
37
37.0
```
Use #class to find out. Don't worry about why they are different yet. For now, you should just know that there is a difference in how we talk about them.

## Practice with Datatypes

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

## Input and output

We are almost at a point where we can build a simple program. So far, we have data. Now, let's do something with it.

Let's conceptualize something first. Suppose we have a cardboard box. This cardboard box doesn't change. However, I can put a dollar in it, or I can spit my toenail into it. This cardboard box can hold any number of things. Clear?

Just the same, our programs can be fixed but can deal with a variety of data that we **input**.

### Input

Let's create a program that takes a string of your choosing. Remember from **Practice with Datatypes** that strings can be made with a variety of characters, not just text but numbers, too. Go to your shell interpreter and follow the following example:

```no-highlight
> gets
# Hit Enter
```

When you do this, you are presented with a blinking cursor. The interpreter is waiting for you to pass your program some data. When you hit enter, the transaction is over. It took your data. The `gets` method will fetch data from the user in the shell.

Pro tip: we don't usually use `gets` by itself. We instead use `gets.chomp` because when we hit enter, the interpreter also reads a returned line. And #chomp eliminates that extra line. From here on out, we use `gets.chomp`.

Hypothesis: No matter what input you enter, the `gets` method **converts** it to a string. Let's try to prove or disprove that. Let's **store** the data you entered with `gets`, so that we can later call #class on the input.

If, no matter what data you enter, it is a string, then we know the `gets` method is not only fetching our input from the shell but it's also converting that data into a string.

Follow this example in your shell interpreter:

```no-highlight
> var = gets.chomp
# Hit Enter
```

Now, there's the blinking cursor again. But when you give it some input and hit enter, you have **assigned** `var` to the input. In other words, you have stored that input in`var`. The thing we just created by typing `var =` is called a **variable**.

Variables allow you to store data in one location and then refer to it again later in your program. It allows our program to stay the same, but the input from the user can change. How do we prove that we just stored something?

```no-highlight
> var
# Hit Enter
```

Calling this variable returns whatever you inputted. We'll talk more about variables in depth later. What matters here is that you can now call #class on `var`.

```no-highlight
> var.class
```

What happens? It returns `String`. Keep running this code and trying different inputs (try numbers, words, etc.):

```no-highlight
> var = gets.chomp
# Hit Enter
```

Notice that running this repeatedly overwrites the old input stored in `var`.

Were you able to prove or disprove that `gets` converts whatever you give the interpreter into a string? Notice that `var` itself doesn't have a datatype until we assign it to something. That's why you got some choice words from the interpreter when you called `person` in the **Practice with Datatypes** exercise.

### Output

What we have accomplished so far is pretty neat. We have learned that the interpreter can make sense of a few different types of data. And now we can start to pass data into our program, by using the `gets` method to take an input from the user of the shell.

Now, let's take the last step and output stuff. Full circle!

The `puts` command can print things to the shell, and thereby display it to the user. Try the following:

```no-highlight
> var = "apple"
> puts var
```

You can call puts on the variable, but you can also call `puts` on the string itself.

```no-highlight
> puts "apple"
```

## Practice with Input/Output

[Left for future completion]

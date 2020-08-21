# flutter_world_time_application
```
(1)stful is the shortcut for autogenerating a stateful widget.

(2)Two ways there are for handling imports

(a)import 'pages/home.dart';

(b)import 'package:flutter_world_time_application/pages/home.dart';
 method(b) is more recommeded.

 (c)Safe Area is a Widget that used to push the content down such that
 they do not hide the date and time in phone default app bar..It pushes the  content slightly
 down.

 Safe Area comes in handy when you are not using an app bar.
 An appBar is advantageous since it brings the content down automatially.

```
**Routing in flutter**
```
(a)Routes in flutter are a MAP with a key value pair of the url they redirect and function that
returns the widget they are redirecting to taking context object as a parameter.

context helps the widget in knowing where they are in the tree.

(b)Properties end with a comma(,).Widgets and functions end with a semi-colon(;)
(c)AppBar automatically places a back arrow by default during redirect incase we have come from
a different route.

(d)There is an elevation on the App Bar by default .We set the elevation property to zero so that
it lies exactly beneath the screen in the widget.

N/B it is important to know that we push and pop routes on the screen.(That is a screen comes on top of the
other
InitialRoute is the first route that loads when we open the application.
(Routes can be pushed and popped out of the route stack...
This approach works to some extent but when you have mutiple screens on top of each other it reaches a place where
this becomes inefficient when you want to go back to the very first route...

More on managing the routes is going to be looked at


)

```
**LifeCycle Methods**

```
(a)Overriding a method means that we can go ahead an inherit its functionality from the Parent
class and as well add a method of our own.

(b)super makes a reference to our parent class when called from within the child class.
(c)Remember that i use child whenever i want to nest a widget in the inside of another widget.'

(d)Whenever i do call setState() to update the state in the stateful widget is triggers the build method.

(e)initState runs only once at the very start when we create the StateObject.Only the build reruns as we change
the state.

When fetching data from a third party API initState life cycle method is perfect to make an initial fetch of the data.


```

**Asynchronous code in flutter**
```
(a)Asynchronous code represents an action that starts now and finishes sometime in the future.Example when we are getting data from an API.

We start a request but it may take a minute or two to complete that particular request.In the meantime our code should not stop unitil that
request is complete.

The best advantage of asynchronous code is that it is NON-BLOCKING ..This means that the rest of our program may continue to execute as we await
for our promise.

It does not block the rest of the code from continuing to execute.

Componets of async in flutter
(a)Asynchronous function
(b)Await KeyWord
(c)Futures->type of data very similar to promises in javascript

By default an asynchronous code does not wait for data to be returned..However there may be instances
where we may need it to wait.There may be instances where we do not want to proceed with the second
request before the First has finished.(Where we may need a parameter from request (a) and it is being used in
request (b).This is where we use async await.

Data returned from a server always comes in form of a String.
 InitState is very similar to componentDidMount in React.

```

**Flutter Packages**
```

(a)Packages are bundles of logic that other programmers have graciously written and which help you in simplifying
your work.

Eg DatePicker Package.The Http package for instance helps us handle http requests from 3rd Party API(s)

The flutter url for packages is https://pub.dev/flutter/packages.

(b)Response Object

Response response = await get('https://jsonplaceholder.typicode.com/todos/1');

The Response Object is given to us by the http module.It contains
information that we get from the request.
Remember flutter is a strict type programming Language.

(c)Remember that a Map is an object in Flutter.Remember that the data that is returned from a server
is in JSON String Format.Remember this is how i get data from a Map.
   print(data['title']);

(d)PARSE CONVERTS DATA FROM STRING TO AN OBJECT ...ALSO JSON DECODE

(e)Substring in flutter is like string format in javascript.

```
**World Time Class**

```
(a)Classes help in the making of my code more cleaner.When you want to reuse something many times example if there is a widget that you
will be calling over and over again .It is better to use a class.

(b)Whenever you are planning to use data from an asynchronous api call you should use await ...otherwise it shall return null since asynchronous does not
stop the code from running.

(c)Flutter is more like java in returning specific types...Eg before declaring an object declare Map.Other types are String , Int and  Future when expecting
data from an asynchronous function.

  Future is the declaration for an async type function .
  A future is just like a promise in javascript it is a place holder function until a function is complete.
```

**Flutter Try Catch Block**

```
It is for catching errors whereby we try to do something under the try block but in the case where what we are doing does fail
We execute it in the except block.

Dart creates an object based oon the error.

```

**Redirecting data to another route**
```
(a) Navigator.pushReplacementNamed(context, '/home');
    Helps redirect to another route instead of putting each of them on the top
    of one another.
    PushNamed maps each route on top of each other.
(b)Data passed from one route to the other must be fetched from the build method since this is
   where we have context object where the data was passed from the other route.

   The data is passed as arguments.
   Passing Data
    Navigator.pushReplacementNamed(context, '/home', arguments: {
         'location':instance.location,
         'flag':instance.flag,
         'time':instance.time
       });

   Retrieving
   data = ModalRoute.of(context).settings.arguments;
```
**Format Date and Time**
```
(a) Flutter intl package is used to format the date an time.
(b)Remember that padding takes in EdgeInsets Property for alignment.
(c)SizedBox property in flutter is like the <br> in html and css.
(d)There is a difference between a property and a function.Properties are seaprated by a comma..while functions by ';'

```

**Flutter Spinner**
```
This is enhanced by a package called the flutter spi kit.

```

**Ternary Operator**

```
(a)setVariable = condition ? true :false
(b)Remember that images in flutter are linked at the pubspec yaml file.
(c)A boolean can be able to execute directly into a function based on whether it is true or false.
(d)A decoration property helps you to input an image that fits directly into the  screen.

the property takes in a BoxDecoration widget..
(e)Style in a text is applied in a special way via the textStyle Property

                     Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0
                        ),
                      ),

```
**Notes by**
```
Mbugua Caleb

```

**Tutor**
```
Net Ninja
```
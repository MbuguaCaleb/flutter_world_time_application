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
```

**Notes by**
```
Mbugua Caleb

```

**Tutor**
```
Net Ninja
```
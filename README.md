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

**Notes by**
```
Mbugua Caleb

```

**Tutor**
```
Net Ninja
```
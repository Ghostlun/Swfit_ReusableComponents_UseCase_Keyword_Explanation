# ReusableComponents

This is an explanation of reusable components

<h4>1. ContactFunction Handler </h4>

You can send mail, call, message by using this component

How to use it!

First, you need to declare using ContactFunctionHandler lazy var

Then, you need to connect with IBAction

<img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/Reusuable%20Components/Image/ContactHandlerCodeExample.png" />


<h4>2. Location Manager </h4>

You can save your location by this location Manager.

First, you need to init NetworkManager, then you can call the function you want

Ex, If you want to call getUserLocation, you call it this day. Then, this location will contain user location into CLLocation.

Also, It provides authorization of location service, also reverses geocoder

How to Use It!

<img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/Reusuable%20Components/Image/LocationManagerCodeExample.png" />


<h4>3. FileManager </h4>

You can read, write, download file into your document directory. It singleton pattern

So, you can call function directly
<img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/Reusuable%20Components/Image/FileCodeExample.png" />


<h3> Keyword explanation </h3>
What is Uid: It is key item of data, that you will make use of in security in order to what that user can do with documents.




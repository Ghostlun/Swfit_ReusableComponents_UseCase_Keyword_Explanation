#ResusableComponents
This is an explanation of reusable components

1. ContactFunction Handler.

You can send mail, call, message by using this component

How to use it!

First, you need to declare using ContactFunctionHandler lazy var

Then, you need to connect with IBAction


2. Location Manager

You can save your location by this location Manager.

First, you need to init NetworkManager, then you can call the function you want

Ex, If you want to call getUserLocation, you call it this day. Then, this location will contain user location into CLLocation.

Also, It provides authorization of location service, also reverses geocoder

How to Use It!


3. FileManager

You can read, write, download file into your document directory. It single ton pattern



So, you can call function directly

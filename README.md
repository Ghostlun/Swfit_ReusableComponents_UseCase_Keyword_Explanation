# Swfit_ReusableComponents_UseCase 

## Swift keyword 
1. [CoreData](CoreData)
2. [UserDefaults](UserDefaults)
3. [ContactHandler](ContactHandler)
4. [LocationManager](LocationManager)
5. [FileManager](FileManager)
6. [IAP](IAP)



This is an explanation of reusable componen

## CoreData
### CoreData Def
It is a framework that you use to manage the model layer objects in application. 
It saves user data permanently for offline use, or temporary cache data, and also undo functionality of the app to a single device. It is useful to store large models and data.

### How to use it?
1. Define your entities and attributes.
2. Genereate class from them, and get a reference to persistent container
3. From where you get managed context and through the managed object context, you can create and store objects

### Use case of example
1. Generate Entity into CoreData
<img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/CoreDataDemo/CoreDataDemo/Resource/GithubResource/Entity.png"/>

2. Create subclass of coreData
<img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/CoreDataDemo/CoreDataDemo/Resource/GithubResource/CreateSubClass.png" />

4. You need to declare Context
 <img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/CoreDataDemo/CoreDataDemo/Resource/GithubResource/Context.png" />

5. Apply function, CRUD ideas
Create, Update :
 <img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/CoreDataDemo/CoreDataDemo/Resource/GithubResource/Create%26Save.png" />
Read :
 <img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/CoreDataDemo/CoreDataDemo/Resource/GithubResource/Read.png" />
Delete :
 <img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/CoreDataDemo/CoreDataDemo/Resource/GithubResource/Delete.png" />



### CoreData Demo App
<p align="center">
 <img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/CoreDataDemo/CoreDataDemo/Resource/GithubResource/Update.gif" width = 200 height = 410 />
 <img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/CoreDataDemo/CoreDataDemo/Resource/GithubResource/Close.gif" width = 200 height = 410 />
</p>


Compared to CoreData, userDefault is used to store simple data.

## UserDefaults
It is an interface to user’s defaults database, where you store key-value pairs and persistently scroll launches of app.
It is used to store small piecies of data which persist across app launches.
The UserDefaults class provides a programmatic interface for interacting with the default system.



## ContactHandler
You can send mail, call, message by using this component

How to use it!

First, you need to declare using ContactFunctionHandler lazy var

Then, you need to connect with IBAction

<img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/Reusuable%20Components/Image/ContactHandlerCodeExample.png" />


## LocationManager

You can save your location by this location Manager.

First, you need to init NetworkManager, then you can call the function you want

Ex, If you want to call getUserLocation, you call it this day. Then, this location will contain user location into CLLocation.

Also, It provides authorization of location service, also reverses geocoder

How to Use It!

<img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/Reusuable%20Components/Image/LocationManagerCodeExample.png" />


## FileManager

You can read, write, download file into your document directory. It singleton pattern

So, you can call function directly
<img src = "https://github.com/Ghostlun/ReusableComponents/blob/master/Reusuable%20Components/Image/FileCodeExample.png" />

<h3> Keyword explanation </h3>
What is Uid: It is key item of data, that you will make use of in security in order to what that user can do with documents.

## IAP:
### IAP Def
In App Purchases, It is greatest way to earn the money from IOS applications
### Type Of IAPs:
Consumable: Iser need to buy these items every time. Reinstalling, changing, device user might lose their consumable products The cannot be used for free
Ex: game items, or health, and hints

Non-Consumable: USer buy these items one time, and can be used in future for free. Reinstalling, changing device these products will not be losts
Ex: Upgrading app to proversion.

Non-renewing subscription: User will be able to use these items for a fixed period of time, these items can be purchases again after subscription end
Ex: season pass
Auto-renewable subscriptionL User can buy these item for specified period of time.
Ex: Netflix

### Process of IAPs
ITunes connect Setup
Create codes: PKIAPHandler
Write codes in swift
Testing the IAP





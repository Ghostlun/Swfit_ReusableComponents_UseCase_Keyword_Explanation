# Swfit_ReusableComponents_UseCase 

## Swift keyword 
1. [CoreData](#CoreData)
2. [UserDefaults](#UserDefaults)
3. [ContactHandler](#ContactHandler)
4. [LocationManager](#LocationManager)
5. [FileManager](#FileManager)
6. [IAP](#IAP)
7. [Alamofire](#Alamofire)
8. [Some_Swift_Interview_Question](#Some_Swift_Interview_Question)

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
userDefault is a class apple provided. It is used to save data for offline use. You can save primary data type and other data type which apple provide us. Also, you can download custom data type too.This data will be saved into plist. Data will be saved in key&values format.

### Advantage and Disadvantage
Advantage - It is fast,it can't save complex data type. It is designed to save small data like preference of userApps
Disadvantage - It is not useful for sensitive data. Ex: Access Tokens, Active Renewable subscription flags, Number of available coins.

### How to save CustromData types
To save custom Objects, you need to create objects, and encode into data. setValue for data using specific keyword
Example
<img src = "https://github.com/Ghostlun/Swfit_ReusableComponents_UseCase/blob/master/Example/CustromObject.png" />

## NSSecureCodings
NSSecureCoding is protocol introduced in the IOS,
NSSecureCoding extends the NSCoding protocol by adding the method supportSecureCodings
By conforming to NSSecureCoding, a class declares that it handles encoding and decoding of instance of its in a way that guards against substitution attacks
// To save objects, we should use -decodeObjectOfClass:forKey: rather than -decodeObjectForKey:

## NSCodings
NSCoding is the Objective-C way of archiving data and Codable is the Swift way.
It is required init

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

## IAP
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


## Alamofire
### What is Alamofire:
It is a Swift-based HTTP networking library for iOS and macOS. It provides interface on top of Apple's Foundation networking stack that simplifies a number of common networking tasks.
### Code example:


## Some_Swift_Interview_Question
### What is Alamofire?
It is Swift-based HTTP Networking library for ios and mac ios.
It provides an interface of a networking stack that simplifies a number of common networking tasks.
Using the library, you can request data into the web service easily.

### What is IAP?
It is In App Purchases, It is a way to earn money from IOS applications.
There are four types of IOPs
Consumable, and Non-consumable, Non-renewing subscription, Subscription.

### What is Core Data?
It is a framework that you use to mange the model layer object in application. It saves data permentality for offline use, temporary cache data, and also undo functionality to a single device.
How to use it?
First, you need to create coreData
and define entities and attribute. Generate class from them, From where you get managed context and through the managed object context, you can create and store objects

### What is userDefualts?
It is a data dictionary that stores small amounts of datas. Data structure will follow key: value dictionary. You can save various data types. Those saved data will be permanent. 
Compared to core data, we use this user Defaults for simple data structures
useCase: page numbers

### What is DispatchQueue?
It is a top of GCD Queues. It allows device to perform task async and concurrently
In DispatchQueue, order will be FIFO,
Serial Q means task are ordered, and concurrent Q means Tasks are task is not ordered,
Sync: It will block current thread until task is done
Async: It will not block, it move another class before previous one is finished

### What is DispatchGroup?
It is grouping together multiple tasks and getting notified all the task are are completed
What is QOS?
It shows priority task for you app.

### What is MVC?
It is a design pattern that separates an application into three logical components, It is composed of view, model, and controller.

### What is MVVM Model?
MVVM is design pattern. It is composed of model, viewModel, View and ViewController.
ViewModel send data using callback(closure)/delegates  UIView uiViewcontroller.
ViewModel transforms model information into values that can be displayed on a view.

What is the difference between of MVVM and MVC?
MVVM is easier to debug process for complicated data bindings.
MVVM has one to many relationships between view & viewModel
MVVM is easy for separate unit testing and code is event-driven

What is control flow?
It used to control the flow of execution in program
EX, there are for in loops, while-loop, repeat-while

What is fall through?
It keep executing next scope of codes.

### What is a generic type?
It is type of code multiple with all data types. It enables you to write flexible, reusable functions and type that can work with any type.
use case: <T: String>

### What is ARC?
It is automatic reference counting to track and mange your app’s memory usage. 
To manage ARC, we need to use keyword weak var

### What is protocol?
It is blue prints of methods, property, and init. It will create rule into specific types.

### What is init?
Init is preparing the process of your instance. It can be used with setting initial value to all non-optional properties.

### What is singleton?
It is a design pattern. It is created once, then it will have shared property. Normally, we used in FileManager, UserDefualts. it require private init

### What is closure?
It is a group of code that can be passed from one var to another and also can be used inside a function.

### What is class and structs?
Classes are reference types, and value type.
Class can be inherited types, but struct can not be inherited
Class has init and de-init, But, struct only has init

### What is Unit Test?
To verify function work or not. Main purpose is to check taht all the individual parts are working instead. Small entities, we can check applications that can be tested. We can reduce number of defects. It will reduce cost of changing

### What is SDLC 
Requirement/Gathering : It is planning period, I will be overview of projects
Design of products, there are UI and UX developed design. UI What user goint to see, UX, How user going to feel
Developments(Develpments talk with product mangers)
Testing
Deployment

### What is Agile?
Terminology: The iterations some developments
We have differents, when it comes to expectation, how much time will take
Each model is considered as a short time “frame” in the Agile process model, which typically from one to four weeks
Sprints: Every task will be delivered in ten tasks
What is scrum: Based on the time, how much left





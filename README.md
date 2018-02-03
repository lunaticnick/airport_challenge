[![forthebadge](http://forthebadge.com/images/badges/made-with-ruby.svg)](http://forthebadge.com) [![forthebadge](http://forthebadge.com/images/badges/uses-git.svg)](http://forthebadge.com)

# Airport Challenge -- Makers Academy Weekend Challenge Week 1

```
        ______
        _\____\___
=  = ==(____MA____)
          \_____\___________________,-~~~~~~~`-.._
          /     o o o o o o o o o o o o o o o o  |\_
          `~-.__       __..----..__                  )
                `---~~\___________/------------``.``.`
                ======(_________)

```

## Challenge Synopsis
Write a Ruby program that resembles the Air-Traffic Control system of an airport.

Planes can only land or take-off when weather is good, so apart from writing a program that controls the plane flow in and out of the airport, we also need to randomise weather.

Also to assist the adoption of the program in random airports, we need to have the ability to scale up the airport.

## User Stories
```
As an air traffic controller
So I can get passengers to a destination
I want to instruct a plane to land at an airport
```
```
As an air traffic controller
So I can get passengers on the way to their destination
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport
```
```
As an air traffic controller
To ensure safety
I want to prevent takeoff when weather is stormy
```
```
As an air traffic controller
To ensure safety
I want to prevent landing when weather is stormy
```
```
As an air traffic controller
To ensure safety
I want to prevent landing when the airport is full
```
```
As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate
```

## How to use this depository
First you need to clone the depository on your local machine. To do so, please open your favourite CLI and use the following commands:

```
git clone git@github.com:lunaticnick/makersacademy-mcw01-airport_challenge.git local_directory_name
cd local_directory_name
```

Then in order to play the game you will need to use interactive Ruby (IRB). If you do not have Ruby and IRB installed on your computer, please click [here](https://www.ruby-lang.org/en/documentation/quickstart/) for instruction.

After you have installed Ruby and IRB, open your favourite Command Line Terminal and start IRB by giving the following command:

```
airport_directory$ irb
```

Then you can start playing the game by using the following commands:

- Create a new airport instance : ```airport = Airport.new```
- Create a new plane instance: ```plane = Plane.new```
- Dock a plane:  ```airport.dock(plane)```
- Launch a plane: ``` airport.launch(plane)```

Weather is controlled by a module (called ***hand_of_god***) that randomises weather conditions.

Create an airport and two planes:
```
2.4.1 :001 > require_relative "./lib/airport"
 => true
2.4.1 :002 > airport = Airport.new
 => #<Airport:0x00007fb31f8a8368 @airp_capacity=5, @planes=[]>
2.4.1 :003 > plane1 = Plane.new
 => #<Plane:0x00007fb320053860 @flying=false>
2.4.1 :004 > plane2 = Plane.new
 => #<Plane:0x00007fb321012a58 @flying=false>
```

Dock the planes into the airports
```
2.4.1 :005 > airport.dock(plane1)
 => "Plane has been docked"
2.4.1 :006 > airport.dock(plane2)
 => "Plane has been docked"
2.4.1 :007 > airport
 => #<Airport:0x00007f9e350e1f98 @airp_capacity=5, @planes=[#<Plane:0x00007f9e350db738 @flying=false>, #<Plane:0x00007f9e350cacf8 @flying=false>]>
```

Plane cannot be docked/land if already in airport
```
2.4.1 :010 > airport.dock(plane2)
RuntimeError: Plane is already docked
```

Planes can be launched
```2.4.1 :011 > airport.launch(plane2)
 => "Plane has been launched"
```

Planes cannot be launched if there is bad weather
```
2.4.1 :011 > airport.launch(plane1)
RuntimeError: Weather Stormy!! Planes are Grounded
```

Planes cannot be launched if already in the air
```
2.4.1 :013 > airport.launch(plane2)
RuntimeError: Plane is already in the air

```


Planes cannot be docked/land if there is bad weather
```
2.4.1 :013 > airport.dock(plane1)
RuntimeError: Weather Stormy!! Planes cannot land/dock
```

Airport default capacity of 5 planes can be overridden
```
2.4.1 :012 > airport2 = Airport.new(10)
 => #<Airport:0x00007ff2060e9390 @airp_capacity=10, @planes=[]>
```





## Supplementary Information
  This can be found in the **[00_notes](https://github.com/lunaticnick/airport_challenge/tree/master/00_notes)** folder

## Things to improve

* OVERALL COVERAGE:  99.40% -- 167/168 lines in 6 files, which is caused by no full code coverage from  ```
 lib/hand_of_god.rb 75%
 ```

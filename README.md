<h2>Boris Bikes<h2>

<h3>General Description</h3>

<p>This app consists of a simple system for managing Boris Bikes in London. The system keeps track of a number of docking stations, bikes and the people who rent them. It will allow a person to rent a bike and return it to a docking station. Occasionally the bikes may be broken by people and then they become unavailable for rental. There are also garages that can fix broken bikes and vans that move the bikes between the docking stations and garages.</p>

<p>The app was written in Ruby according to TDD</p>


<h4>How to Run</h3>

<p>First, run these command in terminal:</p>
<p>$ irb</p>
<p>$ require './lib/boris-bikes.rb'</p>

<p>After that you can apply the following methods:</p>

<h4><strong>Bike</strong></h4>

| Methods  | Description                                            |
|----------|--------------------------------------------------------|
| Bike.new | Creates a new instance of a bike                       |
| .broken? | returns boolean (true => broken ; false => not broken) |
| .brake!  | brakes the bike                                        |
| .fix!    | fixes the bike                                         |

<h4><strong>Station</strong></h4>

| Methods          | Description                                                                     |
|------------------|---------------------------------------------------------------------------------|
| Station.new      | Creates a new instance of a docking station                                     |
| .bikes           | returns an array of all docked bikes                                            |
| .bike_count      | returns the number of currently docked bikes                                    |
| .capacity        | returns the max capacity of the station                                         |
| .capacity=       | sets the max capacity of the station                                            |
| .dock (bike)     | docks a bike in the station                                                     |
| .release (bike)  | releases a docked bike from the station                                         |
| .full?           | returns a boolean (true => station full ; false => station not full             |
| .available_bikes | returns an array of all available (i.e. not broken) bikes docked in the station |

<h4><strong>Garage</strong></h4>

| Methods               | Description                                                                  |
|-----------------------|------------------------------------------------------------------------------|
| Garage.new            | Creates a new instance of a  garage                                          |
| .bikes                | returns an array of all bikes held in the garage                             |
| .bike_count           | returns the number of currently docked bikes                                 |
| .capacity             | returns the max capacity of the garage                                       |
| .capacity=            | sets the max capacity of the garage                                          |
| .dock (bike)          | docks a bike in the garage                                                   |
| .release (bike)       | releases a docked bike from the garage                                       |
| .fix (bike)           | fixes a bike (if broken)                                                     |
| .fix_all_broken_bikes | fixes all broken bikes currently held in the garage                          |
| .full?                | returns a boolean (true => garage full ; false => garage not full            |
| .available_bikes      | returns an array of all available (i.e. not broken) bikes held in the garage |

<h4><strong>Van</strong></h4>

| Methods         | Description                                                 |
|-----------------|-------------------------------------------------------------|
| Van.new         | Creates a new instance of a van                             |
| .bikes          | returns an array of all bikes held in the van               |
| .bike_count     | returns the number of bikes in the van                      |
| .capacity       | returns the max capacity of the van                         |
| .capacity=      | sets the max capacity of the van                            |
| .dock (bike)    | docks a bike in the van                                     |
| .release (bike) | releases a docked bike from the van                         |
| .full?          | returns a boolean (true => van full ; false => van not full |

<h4><strong>Person</strong></h4>

| Methods                   | Description                                                        |
|---------------------------|--------------------------------------------------------------------|
| Person.new                | Creates a new instance of a person                                 |
| .have_bike?               | returns boolean (true => has bike/s ; false => doesn't have bike/s |
| .break_bike               | breaks the person's bike                                           |
| .rent_bike_from (station) | rents a bike from a docking station                                |
| .return_bike_to (station) | returns the bike to a docking station                              |


<h3>Testing</h3>

<p>Tests were written with Rspec.

<p>To run the tests: $ rspec</p>

<p>Rspec version: 3.0.3</p>
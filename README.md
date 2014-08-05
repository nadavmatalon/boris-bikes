<h2>Boris Bikes<h2>

<h4>Description</h4>

<p>This app consists of a simple system for managing Boris Bikes in London. The system keeps track of a number of docking stations and the bikes. It will allow a person to rent bikes and return them to a docking station. Occasionally the bikes may break and then they become unavailable for rental. There is also a garage that can fix broken bikes and a van that moves the bikes between the docking stations and the garage.</p>

<p>The app was written in Ruby according to TDD</p>


<h4>How to Run</h4><br/>

<p>First, run these command in terminal:</p>
<p>$ irb</p>
<p>$ require './lib/boris-bikes.rb'</p>

<p>Then you can apply the following methods:</p>

<h4><strong>Bike</strong></h4>

| Methods  | Description                                           |
|----------|-------------------------------------------------------|
| Bike.new | Creates a new instance of a bike                      |
| .broken? | returns boolean (true => broken ; false => not broken |
| .brake!  | brakes the bike                                       |
| .fix!    | fixes the bike                                        |



<h4>Testing</h4>

<p>Tests were written with Rspec.

<p>To run the tests: $ rspec</p>

<p>Rspec version: 3.0.3</p>
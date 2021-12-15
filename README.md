# Activity
[Starter Code](https://github.com/learn-co-students/Phase-3-movie_app_101121)

# Run the APP
1. cd into movies_app
2. In the terminal, run `bundle install`
2. In the terminal, run  `ruby ./bin/run.rb` to start the CLI
3. If the following error message is returned: zsh: permission denied: ./bin/run.rb, run the following command: `chmod +x ruby ./bin/run.rb`


# Deliverables 
Add CRUD and aggregate methods to ticket and create a new class
0. If you have already added @@all to tickets skip this step. Add '@@all = []' to Ticket. At the end of the instance method shovel in self to @@all. Create a class method that returns @@all.
 <details>
      <summary>
        solution 
      </summary>
      <hr/>
        <img src="assets/image_0.png"
        alt="seed data"
        style="margin-right: 10px;" />
      <hr/>
     </details>
<br/>

1. Create some default ticket data. In cli.rb create a method called seed that creates 3 or more tickets. Call seed in initialize_app. 

 <details>
      <summary>
        solution 
      </summary>
      <hr/>
        Note: Creating seeds with hashes and a loop would also work here. 
        <img src="assets/image_1.png"
        alt="seed data"
        style="margin-right: 10px;" />
        <p> Call seed </p>
        <img src="assets/image_2.png"
        alt="call seed"
        style="margin-right: 10px;" />
      <hr/>
     </details>
<br/>

2. Create a find_tickets class method that takes a movie title and finds every ticket with the matching title. The method should return an array of strings with the name and price of every ticket. 
> Hint: Try chaining two enumerable methods

Add a 4th option to cli.rb that gets a movie title input from the user and calls Ticket.find_tickets with the user input as an argument.

 <details>
      <summary>
        solution 
      </summary>
      <hr/>
        <img src="assets/image_3.png"
        alt="seed data"
        style="margin-right: 10px;" />
         <p> Change CLI </p>
        <img src="assets/image_4.png"
        alt="call seed"
        style="margin-right: 10px;" />
      <hr/>
     </details>
<br/>

3. If you have already made print_ticket method skip this part. Create a print_ticket instance method that prints the name, movie and price of a ticket. In Cli, Replace `2. List all ticket holder names` with `2. List all tickets`. In the 2 block iterate over Ticket.all and call print_ticket on every instance.
 <details>
      <summary>
        solution 
      </summary>
      <hr/>
        <img src="assets/image_5.png"
        alt="seed data"
        style="margin-right: 10px;" />
        <p> Change CLI (Note: the > to the left indicates the other blocks are collapsed there's still code there you just can't see it at the moment.) </p>
        <img src="assets/image_6.png"
        alt="call seed"
        style="margin-right: 10px;" />
      <hr/>
     </details>
<br/>

4. Create a instance method that discounts a tickets price by %50 and prints the ticket with the new price. Add a 5th option to cli.rb that finds a ticket based on name and movie, runs the discount method.
 <details>
      <summary>
        solution 
      </summary>
      <hr/>
        <img src="assets/image_7.png"
        alt="discount method"
        style="margin-right: 10px;" />
        <p> Change CLI  </p>
        <img src="assets/image_8.png"
        alt="cli"
        style="margin-right: 10px;" />
      <hr/>
     </details>
<br/>



5. In cli.rb create a method to run after every command that prints "press any button to return to menu" takes a user input and calls the menu method. Put this method at the end of every block in the case statement.
finds a ticket based on name and movie, runs the discount method.
 <details>
      <summary>
        solution 
      </summary>
      <hr/>
        <img src="assets/image_9.png"
        alt="discount method"
        style="margin-right: 10px;" />
        <p> Change case statement </p>
        <img src="assets/image_10.png"
        alt="cli"
        style="margin-right: 10px;" />
      <hr/>
     </details>
<br/>


### Bonus


6. In cli.rb, refactor the 2 case block to iterate over Ticket.all and print every ticket holder name. Additionally if it's not already being called, in Create Ticket, call the menu method after a ticket is created to re-run the menu. Run your app, create a few tickets and run "2. List Ticket holder names" to verify your tickets were created.


7. Create a Movie file with a Movie class with a title and movie_id. Title should have the ability to be read and set. Movie_id should only be read. Movie should also have an @@all that tracks every movie instance created and a class method that returns @@all. In the seed function of the CLI add 3 - 5 movies using Movie.new

8. In the CLI, refactor the 1 block to list every single movie title.
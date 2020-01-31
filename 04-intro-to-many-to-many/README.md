# One to Many Relationships

## Questions??????
- review of linking classes to represent the relationship between them.
  - syntax on what's happening when classes communicate
- what the different different between using an instance variable. Calling the getter and setter.When you have to write that as `self`. How does self change and when can I use it.
- the ruby enumerable doc for array, how to read it.
- talk about not having rspec and how to test our code.
   
### SWBATs
* [ ] Implement one object to many objects relationship
  * [ ] One object `has many` objects
  * [ ] One object `belongs to` another object
* [ ] Practice passing custom objects as arguments to methods
* [ ] Demonstrate single source of truth
* [ ] Infer type of method (class or instance) through naming conventions
* [ ] Model/Domain
* [ ] Implement both sides of a many to many relationship
* [ ] Practice keeping groups of data related to classes on the class as a class variable
* [ ] Demonstrate _Single Source of Truth_ by **not** storing collections of objects on other objects
* [ ] Demonstrate _Single Source of Truth_ by **not** storing one object in multiple collections

## Definitions
* _Model_ - A class whose primary responsibility is to store data
* _Domain_ - The subject matter of the problem, (e.g., Learn's domain is online education)
* _Domain modeling_ - Creating models for your domain to represent real or abstract ideas (e.g., Learn's domain model includes modules, cohorts, assignments as well as their relationships)
* _Relationships_ - How one model or thing is connected to another model or thing
  * _One to many relationship_ - A relationship describing a single model that contains or keeps track of other models (a tree has many leaves, an organism has many cells, the universe has many galaxies)
  * _Many to many relationship_ (today!)
  * `belongs_to`
  * `has_many`
  * `through`
* _Schema_ - A visual representation of your data (models, relationships, etc.)
* [_Single Source of Truth_](https://en.wikipedia.org/wiki/Single_source_of_truth) - The practice of structuring _models_ and _relationships_ such that every data element is stored exactly once; any possible linkages to this data element are by reference only
  * **Why?** - Ask yourself, in the _one to many relationship_ of country to citizen, is it easier for the country to know about all of its citizens or is it easier for a citizen to know the which country they belong to? So how does a country find out its citizens? It conducts a census (a method) that asks all the people in the country if they are a citizen!



## Deliverables for Tweeter
* Create a `User` class: The class should have these methods:
  * [ ] `#initialize` which takes a username and have.
  * [ ]  a reader method for the username
  * [ ] `#tweets` that returns an array of Tweet instances that this user can created.
  * [ ] `post_tweet` that take a message, creates a new tweet
* Create a `Tweet` class:  The class should have these methods:
  * [ ] *Breakout Session* : instance/class methods.
  * [ ] Tweet has a method `#message` that returns a string
    - instance method
    - also a getter
  * [ ] `#user` that returns an instance of the user class
    - instance method
    - getter for the user that created this tweet
  * [ ] `.all` that returns all the Tweets created 
    - getter for the class variable @@all
  * [ ] `#username` that returns the username of the tweet's user
    -> how am i going to get the username
    -> user object for this tweet
* Create a Like class: 
  * [ ] What should the like class store to represent the relationship between the two?
* In the `User` class: 
  * [ ] `like_tweet` that accepts as a tweet instance as a parameter
  * [ ] `liked_tweets` that returns a collection of all the tweets this user has liked
  * [ ] `unlike_tweet`
* `Tweet` class
  * [ ] `likers` that returns a collection of all the Users who have liked this tweet   
  * [ ] `most_active_user` will return the user who has given the most likes.
  * [ ] `most_popular_tweet` will return the tweet with the most likes.


## To get more practice with enumerables, per request, let's finish this banking thing : 
Write an implementation of a bank account that meets the following requirements:

- [x] there is a method whale should return the account with the largest balance
- [ ] overdraw_warning should return all accounts under min balance of 300
- [ ] deposit should increase an account balance by a specific amount
- [ ] withdraw should decrease an account balance by a specific amount

  ## References
  - [Blog on Self](https://dev.to/danvyle/understanding-self-via-football-analogy-2f0e)

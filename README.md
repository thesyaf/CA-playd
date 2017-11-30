# playd

playd is a platform that enables gamers to find other gamers whom they can trade games with. It is differentiated by only presenting the user with games that they want and can trade one of their own games.

>This project is my submission for a CoderAcademy assignment and is not intended for public use yet. The duration for this project was 14 days and is currently unfinished.

# the problem

Console gamers have limited options when they complete a game. They can either
- Trade in the game at a retail store for a fraction of the price it is resold.
- Sell it off on eBay
- Keep it to collect dust
- Give it away

# the solution
A platform that allows a game owner(OwnerA) to list all the games they own in an online library as well as keep a list of games they want to play.
When another game owner(OwnerB) wants a game that OwnerA has, AND OwnerB owns a game that OwnerA wants, a match is made and the platform will allow them to communicate with each other to arrange a trade at their own discretion.
### benefits
- Game owners can get rid of games they are done with
- They get games they want to play at a fraction of the cost
- Less games gathering dust on shelves
- More fun


# features
  - Search GiantBomb's API for games
  - Add games to an 'Owned' & 'Wanted' collection
  - View games that can be traded, but only if the other user owns the game
  - Send messages to other users
  - Recieve confirmation emails
  - Sign up for a yearly subscription via Stripe

# installation
Clone it:
```
$ git clone https://github.com/thesyaf/CA-playd.git
```

Bundle it:
```
$ bundle install
```

Build the database
```
$ rails db:create migrate seed
```

Run it:
```
$ rails s
```


### tech

playd uses the following to work properly:

* [Devise] - To manage user accounts
* [Shrine] - To take care of easy image uploading
* [Shrine-Cloudinary] - To get those uploaded images stored in teh cloud
* [Figaro] - To keep those keys secret
* [Stripe] - To allow secure and safe payments
* [Giantbomb-API] - To hook into Giantbombs great database of games
* [Bootstrap] - To make look great (someday)

### todos

 - Write Tests
 - Finish the design
 - The email styling
 - Just finish the whole thing(any contributers would be greatly appreciated.)




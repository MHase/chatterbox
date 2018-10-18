# ChatterBox

## About
**ChatterBox** is a chat room application intended to encourage communication in local areas for organizing events, meet-ups, social gatherings, etc. Users can create an account by filling out the information requested to begin chatting. Users can create a new chat room which will only be visible to other users in a predefined radius up to 10 miles. These temporary chat rooms will only be open for 24 hours until they are deleted.

## Geting Started
Sign up for a new account by clicking on the [**Sign Up Here!**](http://chatterbocks.herokuapp.com/sign_up) button on the login page and fill out the required information. You now have a user account with Chatterbox!

## Creating a Chat Room
After logging in, you will then be redirected to the chat room index. This displays all of the chat rooms available in your area, it might even be empty when you see it! As a new user, you can view chat rooms and create new ones by clicking the **New Chat Room** button. Here, you can create a title and a description of the chat room to give other users an idea of why this room was created and what should be discussed. Remember, chat rooms only exist for 24 hours!

## To-Do
ChatterBox is currently an ambitious work in progress and has many features that are subject to change or be added such as:

- [x] Automatically detect user location using Geocoder gem.
- [x] Make chat rooms automatically delete after 24 hours using Whenever gem.
- [ ] Create a type class system for chat rooms i.e. meet-up room, party room, just chatting room, 
- [ ] Make chat room only visible within a 5-10 miles radius to where the chat room's user was when they created it.
- [ ] Fine tune location service to be more accurate for cell phones.
- [ ] Create a way to save a user location so they can access chat rooms from only one area even after they left it ("Anchoring").
- [ ] Make "meet-up" chat rooms visible as events on a graphical map (nice to have).
- [ ] Redesign front-end to make it look REALLY good.

# CS 1XA3 Project03 - zhengc15

## Overview
This Project builds an simple social media like site. it contains content such as  User profile, Friends and Post.

## Usage
Install conda enivornment with ...
...
Run locally with
python manage.py runserver localhost:8000
Run on mac1xa3.ca with
python manage.py runserver localhost:10120
...
Log in with TestUser, password SomePassword
or sign up with USername and Password.
...
## Objective 01
### Description
- This feature will display two different pages: login and Sign up
 * login: displayed in login.djhtml which is rendered by login_view
 * Sign up : displayed in signup.djhtml which is rendered by signup_view, then will create a new user
- Both page will redirect to message page in the end 

### Exceptions
- If the /e/macid/something_post is called without arguments is redirects to login.djhtml
## Objective 02
### Description
- This feature update current user's profile and Interests.
- It is displayed in social_base.djhtml which is rendered by messages.djhtml,people.djhtml and account.djhtml.
- It uses Django Template Variable to update the real profile and interest of the logged in user.
### Exceptions
- Initially, social_base.djhtml displays a statically included fake Profile and Interests.
- The birthday is required to be entered.

## Objective 03
### Description
- This feature will update account setting including Password change and User info, i.e employment, location, birthday, interests.
- It is displayed in account.djhtml which is rendered by account_view.
- It provides two different form for changing password and updating user info.
### Exceptions
- None

## Objective 04
### Description
- This feature will displayed the People list who are not friend of current user 
- It displayed certain amount of people in the begin, then display more by click more button
- the more button in the end is linked to send an AJAX POST through people.js to def more_ppl_view, and then reload the page on success
- A session variable is used to keep track of how many people to display
### Exceptions
- None

## Objective 05
### Description
- This feature will send the friend requests and display to the user
- All Friend Request buttons are linked to people.js, which uses its id to send a POST request to the function def friend_request_view
- Once the Request is sent, the friend request button is disabled
### Exceptions
- None

## Objective 06
### Description
- This feature will let the user to accept and declining friend requests
- people.js  will push either Accept or Decline buttons sends a POST to accept_decline_view with the appropriate button id
- accept_decline_view will handle the POST request, and it should delete the corresponding FriendRequest entry, and if the request was accepted should update BOTH USERS friends relation in the UserInfo table
### Exceptions
- None

## Objective 07
### Description
- This feature will display all the friends of current user
- It displayed in messages.djhtml which is rendered by messages_view
### Exceptions
-None

## Objective 08
### Description
- This feature will submit posts from messages.js to submit a AJAX POST request when post-button is clicked, sending the contents of post-text to post_submit_view
- Reload the page upon a success response, and post_submit_view will handle the post submission, by adding a new entry to the Post model
### Exceptions
-None

## Objective 09
### Description
- This feature will be displayed in messages.djhtml to show real posts given by messages_view when rendering the template
- The orders of displayed posts will be sorted by newest to the oldest
- The page should start out displaying only a certain amount of Posts and should display incrementally more as the More button is clicked
- the session variable of number of posts displayed will reset when user logs out
### Exceptions
-None

## Objective 10
### Description
- This feature will display a Like count of each post
- Each posts in message_view will add an extra boolean attribute to let user know if the post has already been liked by the user
### Exceptions
-If a post has already been liked, set the button class to w3-disabled and remove
the like-button class so the JQuery event no longer responds to it

## Objective 11
### Description
- There have some test users created, create many posts and likes and different friend requests to showcase
### Exceptions
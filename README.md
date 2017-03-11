# Project 6 - *Instagram*

**InstagramClone** is a photo sharing app using Parse as its backend.

Time spent: **13** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User can sign up to create a new account using Parse authentication
- [x] User can log in and log out of his or her account
- [x] The current signed in user is persisted across app restarts
- [x] User can take a photo, add a caption, and post it to "Instagram"
- [x] User can view the last 20 posts submitted to "Instagram"

The following **optional** features are implemented:

- [ ] Show the username and creation time for each post
- [ ] After the user submits a new post, show a progress HUD while the post is being uploaded to Parse.
- [ ] User Profiles:
   - [ ] Allow the logged in user to add a profile photo
   - [ ] Display the profile photo with each post
   - [ ] Tapping on a post's username or profile photo goes to that user's profile page

The following **additional** features are implemented:

- [x] Additional user Experience features:
	- [x] Separate sign up and login screens like real Instagram
	- [x] User can navigate to sign up from login screen
	- [x] User can navigate to login from sign up screen
	- [x] Password entry is secure
	- [x] User can click to see Terms of Use before signing up
	- [x] User can click to see Privacy Policy before signing up
- [x] Additional code features:
	- [x] All elements displayed using AutoLayout

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. How Parse works
2. Working with photos of different sizes in auto layout 

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://github.com/hlpostman/Instagram/blob/master/Video_Walkthrough_Instagram.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

I learned that when you set an outlet from IB to have a type defined by a pod, you need to set the custom class for that element in IB to match this.  I want to: improve UI for the three screens in the app after log-in and sign-up; add alerts for taken usernames and mistyped passwords etc; do the optionals; add functionality to the “forgot password” button.

## License

    Copyright 2017 H.L.Postman

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

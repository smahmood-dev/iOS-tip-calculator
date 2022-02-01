# Pre-work - *Whose Bill Is It Anyway?*

**Whose Bill Is It Anyway?** is a tip and bill splitting calculator application for iOS.

Submitted by: **Sarmad Mahmood**

Time spent: **15** hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [X] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Bill splitting functionality allowing the user to calculate the bill amount per party member.  
- [X] Settings page allowing the user to customize the default tip percentages. 

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/FcPf01n7e4.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [Recordit](https://recordit.co/).

## Notes

Describe any challenges encountered while building the app.

This was my first time programming outside of Python and R. With no prior experience with Swift or Xcode, I was initially struggled a bit getting used to a new syntax and IDE, but thanks to the detailed pre-work instructions I quickly found my bearings. The most difficult aspect of developing my app was programming the settings page with the ability to customize the default tip percentages. It took a good deal of trial and error to figure out how to properly implement the UserDefaults and then ensuring that the labels would properly update and retain their values when switching between the main view and settings. I would have loved to have done more with the aesthetic and UI options for my app, but alas it is midterm week here at Carleton College. I look forward to learning more about iOS UI design once I am hopefully accepted into the course.  

## License

    Copyright [2022] [Sarmad Mahmood]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

# CS 1XA3 Project02 - zhengc15

## Overview

 This webpage is Daniel Zheng's custom CV. It contains information such as education status, Work experience, personal projects and skills set.

## Custom JavaScript Code
### Change The Color of Background
Description: There are three different color to choice from: Green(Default), Blue and Pick. Use the parameter of the function to represent the color: 1, 2, 3 respectively. The Sample function code are:
```
function changeColor(a){
  if(a == 1){
    ... 
  }
  else if(a == 2){
    ... 
  }
  else{
    ...
  }
}
```
### Change the Image 
Description: This feature will change my profile picture. However, the picture will change according to the number of click of the button representing by a global variable. There are four different pictures and only one of them is my actual profile picture. Other three from internet.
Sample function code:
```
var numClick = 0;
function changeImag(){
  if (numClick%4 == 0) 
   {
      ...
      numClick++;
  }
  else if (numClick%4==1) 
  {
      ...
      numClick++;
  }
  else if (numClick%4==2){
      ...
      numClick++
  }
  else{
      ...
      numClick++;
  }
}
```
### Show or hide about me
Description: This feature will show the about me section, or hide it again by click again using jquery library.
Sample Script:
```
$(document).ready(function(){
   $(".side").hide();
  $(".right").click(function(){
    $(".side").toggle();
  });
});
```
## References
### Template reference
 This project used the following resume template from w3schools
 https://www.w3schools.com/howto/howto_make_a_website.asp
### Pictures From Internet
 The following are the pictures from Internet:
 * https://upload.wikimedia.org/wikipedia/en/thumb/0/02/Tweety.svg/1200px-Tweety.svg.png
 * https://www.regionofwaterloo.ca/en/living-here/resources/Images/AnimalServices.jpg
 * https://www.1designshop.com/wp-content/uploads/2019/02/1designshop-2019-02-ppl001.png




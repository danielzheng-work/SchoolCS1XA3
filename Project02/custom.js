
/*Change the color of the background */
function changeColor(a){
  if(a == 1){
    var head = document.getElementsByClassName('header');
    for(i = 0; i < head.length; i++) {
    head[i].style.backgroundColor = '#3366ff';
    }
    var side = document.getElementsByClassName('side');
    for(i = 0; i < side.length; i++) {
    side[i].style.backgroundColor = '#0099ff';
    }
  }
  else if(a == 2){
    var head = document.getElementsByClassName('header');
    for(i = 0; i < head.length; i++) {
    head[i].style.backgroundColor = '#ff0066';
    }
    var side = document.getElementsByClassName('side');
    for(i = 0; i < side.length; i++) {
    side[i].style.backgroundColor = '#ff99cc';
    }
  }
  else{
    var head = document.getElementsByClassName('header');
    for(i = 0; i < head.length; i++) {
    head[i].style.backgroundColor = '#1abc9c';
    }
    var side = document.getElementsByClassName('side');
    for(i = 0; i < side.length; i++) {
    side[i].style.backgroundColor = '#a7e6d9';
    }
  }
}

/*Change the images,depends on the number of click*/
var numClick = 0;
function changeImag(){
   if (numClick%4 == 0) 
   {
      document.getElementById("profileimg").src = "https://upload.wikimedia.org/wikipedia/en/thumb/0/02/Tweety.svg/1200px-Tweety.svg.png";
      numClick++;
  }
  else if (numClick%4==1) 
  {
      document.getElementById("profileimg").src = "https://www.regionofwaterloo.ca/en/living-here/resources/Images/AnimalServices.jpg";
      numClick++;
  }
  else if (numClick%4==2){
    document.getElementById("profileimg").src = "minepic.jpg"
    numClick++
  }
  else{
    document.getElementById("profileimg").src = "https://www.1designshop.com/wp-content/uploads/2019/02/1designshop-2019-02-ppl001.png";
    numClick++;
  }
}

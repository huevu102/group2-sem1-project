var slideIndex = 0;
var slideArray = [];

function Slide(title,link){
  this.title = title;
  this.link = link;
  this.id = "slide" + slideIndex;
  slideIndex++;
  slideArray.push(this);
}

var no1 = new Slide("End-Off-Year Collection","../../../assets/img/home/39cfa61261a1d318e1bbe72ada8e6dcb 2.png");
var no2 = new Slide("Sweet Collection","../../../assets/img/home/39cfa61261a1d318e1bbe72ada8e6dcb 21.png");
var no3 = new Slide("Minimal Collection","../../../assets/img/home/39cfa61261a1d318e1bbe72ada8e6dcb 22.png");
var no4 = new Slide(" ","../../../assets/img/home/39cfa61261a1d318e1bbe72ada8e6dcb 23.png");

function sort(){
  var x = slideArray[0];
  var y = slideArray[1];
  var z = slideArray[2];
  var o = slideArray[3];
  slideArray[0] = o;
  slideArray[1] = x;
  slideArray[2] = y;
  slideArray[3] = z;
}

function nextSlide(){
  sort();
  var num1 = document.getElementById("no-1");
  num1.src = slideArray[0].link;
  var num2 = document.getElementById("no-2");
  num2.src = slideArray[1].link;
  var num3 = document.getElementById("no-3");
  num3.src = slideArray[2].link;
  var num4 = document.getElementById("no-4");
  num4.src = slideArray[3].link;
  var tit = document.getElementById("tittle");
  var text = slideArray[2].title;
  tit.innerHTML = text;
}

function slide(){
  var x1 = document.getElementById('mySlider');
  x1.style.opacity = '0';
  setTimeout(()=>{
    nextSlide();
    x1.style.opacity = '1';
  },400);
}





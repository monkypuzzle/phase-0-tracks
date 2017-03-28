var colors = ['red', 'green', 'blue', 'yellow'];
var names = ['Ed', 'Jim', 'Bob', 'Sam'];
var horses = {};

colors.push('orange');
names.push('Ted');

for(var i = 0; i < colors.length; i++){
  horses[names[i]] = colors[i];
}

console.log(horses);

function Car(make, model, year, isUsed){
  this.make = make;
  this.model = model;
  this.year = year;
  this.isUsed = isUsed;
  this.honk = function(){
    console.log('*Beep*');
  }
}

var car = new Car('Honda', 'Civic', 1999, true);
var carTwo = new Car('Ford', 'Mustang', 2012, true);
var carThree = new Car('Toyota', 'Corolla', 2017, false);

console.log(car, carTwo, carThree);
car.honk();
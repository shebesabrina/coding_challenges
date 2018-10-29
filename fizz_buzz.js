
var readline = require('readline-sync');

var question = readline.question("What range would you like?");

console.log(question);

const answer = Array.from({length: parseInt(question) + 1}, (x,i) => i);

answer.shift();

answer.forEach(function(element) {
  if (element % 3 == 0 && element % 5 == 0) {
    console.log("FizzBuzz");
  } else if (element % 3 == 0){
    console.log("Fizz");
  } else if (element % 5 == 0) {
    console.log("Buzz");
  } else {
    console.log(element);
  }
});

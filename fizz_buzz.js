const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("What range do you want?", answer => {
  console.log(answer);

  const range = Array.from({length: parseInt(answer) + 1}, (x, i) => i);
  range.shift();
  range.forEach(num => {
    if (num % 3 == 0 && num % 5 == 0) {
      console.log("FizzBuzz");
    } else if (num % 3 == 0) {
      console.log("Fizz");
    } else if (num % 5 == 0){
      console.log("Buzz");
    } else {
      console.log(num);
    }
  });
  rl.close();
});

const mysql = require("mysql");
const inquirer = require("inquirer");

// create the connection information for the sql database
const connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "password",
  database: "bamazonDB"
});

// connect to the mysql server and sql database
connection.connect(err => {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  start();
});

function start() {
  console.log("Started!");
   // get all the records from the bamazonDB table 
  // and console.table them 
  connection.query("SELECT * FROM bamazonDB", (err, results) => {
    if(err) throw err;
    console.table(results);
    inquirer
      .prompt([
      {
        name: "product",
        type: "input",
        message: "What is the ID name of the product you would like to buy?",
      },
      {
        name: "amount",
        type: "input",
        message: "How many units of the product would you like to buy?"
      }]).then(answer => {
        console.log(answer);
        // take the amount and subtract that from the stock_quantity  
      })
    });
}


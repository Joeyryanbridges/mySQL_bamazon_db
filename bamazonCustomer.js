var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 8889,

    user: "root",

    password: "root",
    database: "bamazon_db"
});

menuStart();

function menuStart() {
    inquirer
        .prompt([
            {
                type: "list",
                message: "You're connected to Bamazon! Lets get shopping!",
                choices: ["See all items"],
                name: "shop"
            },
        ])
        .then(function (data) {
            //console.log(data.shop);
            if (data.shop === "See all items") {
                inquirer
                    .prompt([
                        {
                            type: "list",
                            message: "What type of items would you like to view?",
                            choices: ["All Items", "Electronics", "Kitchen", "Office", "Furniture", "Home"],
                            name: "myItems"
                        }
                    ])
                    .then(function (data) {
                        connection.connect(function (err) {
                            switch (data.myItems) {
                                case "All Items":
                                    allItems();
                                    break;
                                case "Electronics":
                                    electronicsItems();
                                    break;
                                case "Kitchen":
                                    kitchenItems();
                                    break;
                                case "Sports":
                                    sportsItems();
                                    break;
                                case "Auto":
                                    autoItems();
                                    break;
                                case "Bathroom":
                                    bathroomItems();
                                    break;
                            }
                            connection.end();
                        });
                    })
            }
        });
}

function allItems() {

}
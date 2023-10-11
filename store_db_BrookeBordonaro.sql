CREATE TABLE bakery (id INTEGER PRIMARY KEY, item TEXT, inventory INTEGER, category TEXT, preparation_time TEXT, cost NUMERIC);

INSERT INTO bakery VALUES (0, "croissant", 25, "pastry", "morning", 2.00);
INSERT INTO bakery VALUES (1, "ensaimada", 10, "pastry", "morning", 2.50);
INSERT INTO bakery VALUES (2, "cardamom bun", 20, "pastry", "morning", 3.00);
INSERT INTO bakery VALUES (3, "chocolate croissant", 25, "pastry", "morning", 2.5);
INSERT INTO bakery VALUES (4, "cinnamon bun", 20, "pastry", "morning", 2.5);
INSERT INTO bakery VALUES (5, "millefeuille", 10, "pastry", "morning", 3.00);
INSERT INTO bakery VALUES (6, "lemon bar", 20, "dessert", "night", 3.5);
INSERT INTO bakery VALUES (7, "brownie", 30, "dessert", "night", 2.00);
INSERT INTO bakery VALUES (8, "vanilla cupcake", 15, "dessert", "night", 3.5);
INSERT INTO bakery VALUES (9, "lavender cupcake", 15, "dessert", "night", 3.5);
INSERT INTO bakery VALUES (10, "blackberry crumble", 10, "dessert", "night", 5);
INSERT INTO bakery VALUES (11, "strawberry rhubarb pie", 10, "dessert", "night", 4.5);
INSERT INTO bakery VALUES (12, "sourdough loaf", 30, "bread", "morning", 6);
INSERT INTO bakery VALUES (13, "ciabatta rolls", 50, "bread", "morning", 2);
INSERT INTO bakery VALUES (14, "focaccia", 30, "bread", "morning", 6);
INSERT INTO bakery VALUES (15, "italian loaf", 30, "bread", "morning", 6);

/* Display all bakery items by cost*/
SELECT * from bakery ORDER BY cost;

/* Display average cost of a bakery item */
SELECT AVG(cost) from bakery;

/* Display how many types of bread are sold at the bakery*/
SELECT COUNT(item) from bakery WHERE category = "bread";
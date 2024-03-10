# DB-Assignment

## 1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

The relation between these two entities would be considered as one to many relation, stating that **product_category** might have many products that fall under it but the **product** can have only one category that can be assigned to it. Also, here the **category_id** is the foreign key that references **product_category(id)** acts as a primary key for **product_category**.

## 2. How could you ensure that each product in the "Product" table has a valid category assigned to it?

to ensure we have a valid category assigned to each and every product, we can take some measures before creating the schema:

* Add a default value: add a DEFAULT constraint to the foreign key column i.e. category_id. It ensures that a default category gets assigned to a product pushed with no category. I would personally not prefer this step.

* Assigning category options to application: add category to your application interface or validate that if user input matches any exisitng category. If the match is found, product can be added to the table.

* Add a not null constraint: adding null constraint to the foreign key i.e. category_id, what it will do is that it won't let any product to be inserted without a category. 
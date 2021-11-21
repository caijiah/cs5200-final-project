# cs5200-final-project


#### Name of the project

- Online pet supplies store

#### Name of the team

- Pet lovers (Group 3)

#### team members

- Jiahao Cai, Ye Bai, Yuwei Hou

## Brief description of the project
In this project, we are going to build a full-stack web application to support an online pet store to sell pet supplies, food, treats and medicine. We will utilize mongoDB to handle database management. The database will integrate with a website that allows customers to log in, browse the products, add products into shopping carts and finally make the purchase. In the meanwhile, we have our suppliers logging into our website to update the product description and inventory. 

## Link to the latest data model as a single UML class diagram.
- UML class diagram
[db_design_final_project_UML.pdf](https://github.com/caijiah/cs5200-final-project/files/7576976/db_design_final_project_UML.pdf)
- Data model:
https://lucid.app/lucidchart/48597b87-57ed-436e-9aed-0af728e3bdfc/edit?viewport_loc=-11%2C-11%2C1472%2C659%2C0_0&invitationId=inv_c5f302a0-bf3c-4731-9d91-3c1e8e36664a

## Description of user data models
We have 2 user data models included in our project, which are Customer and Supplier (representative). Customers are the users who will shop on our website. Supplier representatives are the users who will log into our website to update products inventory.
There is a user to user relationship (one to many) between Customer and Customer itself. A new customer can be referred by an existing customer and existing customers can refer many new customers.

## Description of the domain object data models
We have 4 domain data models involved in the project, including Pet, Product, ShoppingCart and Order. Customers’ pets data will be stored in the Pet data model. Product stores the product-related information, such as category, unitprice and inventory. ShoppingCart stores customer’s shopping cart information, including product, quantity and total price. After customers make a purchase, order data will be saved into the Order data model to keep track of the order placed date, total price and the product related information.

## Description of the user to domain object relationships
We have 4 user to domain relationships. They are Customer to Pet(one to many relationship), Customer to ShoppingCart(one to one relationship), Customer to Order(one to many relationship) and Supplier to Product(one to many relationship). One customer can own many pets; One customer can have a shopping cart that records items selected by a customer for purchase; One customer can place multiple orders; One supplier can update multiple products’ inventory. 

## Description of the domain object to domain object relationship
We have 2 domain to domain object relationships. They are Order to Product(one to many relationship) and ShoppingCart to Product(one to many relationship).  One order can contain many products; One shopping cart can contain many products. 

## Description of the portable enumeration(s)
We have 3 portable enumerations. They are Animal, Category and Role. An animal can be “CAT”, “DOG”, “FISH”, “BIRD”. A category of an item can be “FOOD”, “TOY”, “TREAT”, “MEDICINE”. A user can be either “CUSTOMER” or “SUPPLIER”. 
 
## Description of the user interface requirements
- User List: displays a list of all users. 
- User Editor: displays a particular user for editing or allows creating a new user. 
- Customer List: displays a list of all customers. 
- Customer Editor: displays a particular customer for editing and allows navigating to the shopping cart for that customer. 
- Shopping Cart List: displays a list of products that are selected by a given customer. 
- Shopping Cart Editor: displays a particular shopping cart for editing and allows navigating to the customer who owns that shopping cart. 
- Order List: displays a list of orders that are placed by a given customer. 
- Pet List: displays a list of pets within a given customer. 
- Supplier List: displays a list of all suppliers.
- Supplier Editor: displays a particular supplier for editing or allows navigating to the products that supplier supplies. 
- Product List: displays a list of products that we are selling.
- Product Editor: displays a particular product for editing or allows creating a new product and navigate to the supplier of that product. 

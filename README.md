# cs5200-final-project


#### Name of the project

- Online pet supplies store

#### Name of the team

- Pet lovers (Group 3)

#### Team members

- Jiahao Cai, Ye Bai, Yuwei Hou

## P1 Summary
https://docs.google.com/document/d/1kvgpPAwwA3jmWzlpvEBeDLo0sCkEJGYlA935w0OUsQo/edit#

## P3 Summary
https://docs.google.com/document/d/1BtqynYbjB3iV6850LLebgSTpCVQF0YaKojhmgAZ0Uas/edit?usp=sharing

## Brief description of the project
In this project, we are going to build a full-stack web application to support an online pet store to sell pet supplies, food, treats and medicine. We will utilize mongoDB to handle database management. The database will integrate with a website that allows customers to log in, browse the products, add products into shopping carts and finally make the purchase. In the meanwhile, we have our suppliers logging into our website to update the product description and inventory. 

## Link to the latest data model as a single UML class diagram.
- UML class diagram
[db_design_final_project_UML.pdf](https://github.com/caijiah/cs5200-final-project/blob/main/db_design_final_project_UML.pdf)
- Data model:
https://lucid.app/lucidchart/48597b87-57ed-436e-9aed-0af728e3bdfc/edit?viewport_loc=-11%2C-11%2C1472%2C659%2C0_0&invitationId=inv_c5f302a0-bf3c-4731-9d91-3c1e8e36664a

## Problem statement
The objective of our project is to build a full stack web application, serving as a mediator between our suppliers and customers, to allow them perform some basic actions on our website. 

We should start with designing a normalized database to map all the business needs of two types of users. It has at least two users, two domain objects, a relationship between a user and a domain object, a relationship between user objects and a relationship between domain objects. The relationship should either be one to many or many to many. 

After that, we need to create a database to store all the related data, develop and connect backend and frontend to support the website, and then conduct several tests on the website to make sure all the functions are working well.

## Solution statement
We built a full stack web application to support an online pet shop that sells pet supplies. There are four categories, including food, toys, treats and medicine. We have two types of user: customer and supplier. Both customer and supplier inherit from the user interface. We have four domain objects: pet, order, product and shopping cart. There are four relationships between a user and a domain object: customer-pet, customer-shoppingCart, customer-order, supplier-product. There are two relationships between domain objects: order-product, shoppingCart-product. And the relationship between user objects is customer-referrer(customer). 
	
We used MERN (MongoDB, Express, React, Node) Stack to implement our project. Specifically, we used mongoDB to handle database management, reifying classes and these relationships mentioned above. We also used Mongoose to map the objects in MongoDB to objects in code by creating schemas and models for classes described above. Then, we used the Express.js server-side framework, running inside a Node.js server to interact with our database in order to integrate our database and handle client-side HTTP Requests that allows the outside world to have access to our database. For the client side, we developed our website using React.js.

On our website, users need to register either as customers or suppliers. Customers can login to browse the products, add products into shopping carts and finally place orders. In the meanwhile, suppliers can login to our website to update the product information and inventory. 

## Description of user data models
There are two users involved in our project, which are customers and suppliers. The backend and frontend aim to support their basic operations to interact with the website. 

As a pets supplier website, we make our profit by attracting visitors to sign up and to further make purchases. Once a website visitor signs up for a new account and indicates the role as ‘CUSTOMER’, then he or she will become a customer of our website. The website allows customers to complete the full purchase cycle, which includes browsing the products, adding them into the shopping cart, and placing the order. Customers can establish profiles for their pets too! They are also encouraged to refer new customers to join our website. The new customers will indicate the referral when they sign up. After logging in, customers can manage the pets profile, check the orders details and referral list.

We need to partner with suppliers to ensure the supply of our products. As another important user of our website, supplier representatives will register an account to maintain the inventory of the products that they supply. Suppliers will indicate the role as ‘SUPPLIER’ when they sign up and also provide the company name. Once logged in, they are allowed to add, delete and update products, to modify the product name, category, animal type, weight, price and available quantity on the browse page.

## Description of the domain object data models
We have four domain objects included in the projects, which are Product, ShoppingCart, Order and Pet.

Product stores the information of the products we sell on our website, such as name, category, animal type, weight, price and quantity. On the shopping page, all the products are listed combined with their information. The products can be further filtered by Brands, Animals or Category. This would help our customers quickly navigate to the products that they are looking for.

ShoppingCart stores customer’s shopping cart information, such as product, quantity and total price. Each customer only has one shopping cart. When products are added into the shopping cart, the shopping cart will update in real time and the total price will automatically refresh and directly show on the bottom.

After a customer makes a purchase, order data will be saved into the Order data model to keep track of the order date, total price and the product related information. Customers are able to check out all the history orders details under the ‘My orders’ page. 

Pet domain object saves all the pet information provided by the customers. One customer may have many pets. He or she can record all those pets on our website. Under the ‘My pet’ page, customers are allowed to add, delete or update their pets profile, to modify pet name, age, breed, gender and animal type.

## Description of the user to domain object relationships
We have 4 user to domain relationships. They are Customer to Pet(one to many relationship), Customer to ShoppingCart(one to one relationship), Customer to Order(one to many relationship) and Supplier to Product(one to many relationship). One customer can own many pets; One customer can have a shopping cart that records items selected by a customer for purchase; One customer can place multiple orders; One supplier can update multiple products’ inventory. 

## Description of the domain object to domain object relationship
We have 2 domain to domain object relationships. They are Order to Product(one to many relationship) and ShoppingCart to Product(one to many relationship).  One order can contain many products; One shopping cart can contain many products. 

## Description of the portable enumeration(s)
We have 3 portable enumerations. They are Animal, Category and Role. An animal can be “CAT”, “DOG”, “FISH”, “BIRD”. A category of an item can be “FOOD”, “TOY”, “TREAT”, “MEDICINE”. A user can be either “CUSTOMER” or “SUPPLIER”. 
 
## Description of the user interface requirements
- Log in Page: Requires user's username and password to login and directs to user's profile page.
- Sign up Page: Requires user's information and create a new user.
- User Profile Page: displays a user's profile.
- User Profile Editor: displays a user's profile and enables user to edit profile. 
- Referral List: displays all users referred by this user. 
- Shopping Cart List: displays a list of products that are selected by a given customer. 
- Shopping Cart Editor: displays a particular shopping cart for editing and allows navigating to the customer who owns that shopping cart. 
- Order List: displays a list of orders that are placed by a given customer. 
- Pet List: displays a list of pets within a given customer. 
- Supplier List: displays a list of all suppliers.
- Supplier Editor: displays a particular supplier for editing or allows navigating to the products that supplier supplies. 
- Product List: displays a list of products that we are selling.
- Product Editor: displays a particular product for editing or allows creating a new product and navigate to the supplier of that product. 

## Repos and document
- Document: https://docs.google.com/document/d/1kvgpPAwwA3jmWzlpvEBeDLo0sCkEJGYlA935w0OUsQo/edit#
- Node server: https://github.com/caijiah/cs5200-final-server-node
- React client: https://github.com/caijiah/cs5200-final-react

## Heroku deployment
- Frontend client link: https://cs5200-final-client-react.herokuapp.com/
- Backend server link: https://cs5200-final-server-node.herokuapp.com/
- Example Users: 
- {username: Alice, password: 123} <- Customer
- {username: acana, password: 123} <- Supplier

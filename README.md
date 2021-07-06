# Men's wear store
This is one of my E-commerce API app implementations. It is written in Python with Flask framework as the main dependency.  

Live demo:
-------------------
[Available soon](Available_soon)  

Access the application:
-------------------

Access the admin section at: http://localhost:5000/admin
|  | Admin panel | Test user |
|:----------------:|:---------:|:----------------:|
| Login | admin@admin.com | test |
| Password | admin | test |

Technology in the project:
-------------------
#### Back-End
- MySQL
- Python - Flask
#### Front-End
- HTML5
- CSS3
- Bootsrap
- JS

Installation:
-------------------
1. Git clone the project 
```
$ git clone https://github.com/igorshirinkin/FlaskApiEcommerce.git
```
2. Navigate to the project directory or create [Virtual Environment](https://docs.python.org/3/tutorial/venv.html)
3. Install projects dependencies
```bash
pip3 install -r requirements.txt
``` 
4. Create a MySQL database and run the `sql` file in the database directory to migrate the database
5. Change MySQL config in `app.py`  
```python
mysql = MySQL()
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'password'
app.config['MYSQL_DB'] = 'xsolla'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'

```
Run the application:
-------------------
```bash
python3 app.py
```
The instructions above will let you run the application with default settings and configurations.

Features:
-------------------
- Responsive
- Authentication / Authorization
- File upload
- CRUD operations on products (add, delete, edit)
- Search
- Getting information about a product by its identifier 
- Filtering

TODO
-------------------
- Unit testing
- Security, validations, fix vulnerabilities
- Shopping cart

Contributing
-------------------
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


# test redis
install redis python client:
```sh
pip install redis
```

make a request (set SSL!)

```python
import redis

r = redis.Redis(host='redis.<your domain>', port=6379, db=0, ssl=True, password="password")
r.set("good", "bad")
```

# test postgres
install postgres python client:
```sh
pip install postgres
```

connect to database

```python
import psycopg2

conn = psycopg2.connect(
  host="db.<your domain>", 
  database="<your database>", 
  user="username", 
  password="password", 
  port="5432",  
  sslmode='require',
)
```
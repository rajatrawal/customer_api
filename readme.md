# Customer API 


## Live Deployment Link

https://p01--customer-api--q7xqfnhbd4ht.code.run

## Features

- Register and login with JWT
- Create, Read, Update, Delete customers
- Search by name or email
- Pagination
- Uses PostgreSQL

## Setup Steps

1. Clone the repo

```

git clone https://github.com/rajatrawal/customer_api.git
cd customer-api

```

2. Create virtual environment

```

python -m venv env
source env/bin/activate

```

3. Install packages

```

pip install -r requirements.txt

```

4. Create a `.env` file like this:

```

SECRET\_KEY=your-secret-key
DEBUG=True

DB\_NAME=postgres
DB\_USER=your-db-user
DB\_PASSWORD=your-db-password
DB\_HOST=your-db-host
DB\_PORT=5432

```

5. Run migrations

```

python manage.py migrate

```

6. Start the server

```

python manage.py runserver

```

## API Endpoints

### Auth

- POST /api/register/ → Register user
- POST /api/token/ → Get token
- POST /api/token/refresh/ → Refresh token

### Customer (need login)

- POST /api/customers/ → Create customer
- GET /api/customers/ → List customers
- GET /api/customers/<id>/ → Get customer by ID
- PUT /api/customers/<id>/ → Update customer
- DELETE /api/customers/<id>/ → Delete customer

Search and Pagination Feature :

- `/api/customers/?search=some-name`
- `/api/customers/?page=2`

 
Postman JSON file: `customer_api.postman_collection.json`






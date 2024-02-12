# PAYMENT FLOW

#### 1. User send payment

- Send request for payment creation

```bash
curl --location --request POST 'http://localhost:8010/pay' \
--header 'Content-Type: application/json' \
--data-raw '{
    "idOperation": 1,
    "idInvoice": 1,
    "amount": 900,
    "dateTime": "2021-05-21"
}'
```

- Response

```bash
{"idOperation":1,"idInvoice":1,"amount":900.0,"dateTime":"2021-05-21T00:00:00.000+00:00"}
```

- View in database in MYSQL container

```bash
mysql -u root -p db_operation --password=mysql

SELECT * FROM pay;

+--------------+--------+----------------------------+------------+
| id_operation | amount | date_time                  | id_invoice |
+--------------+--------+----------------------------+------------+
|            1 |    900 | 2021-05-20 19:00:00.000000 |          1 |
+--------------+--------+----------------------------+------------+
1 row in set (0.00 sec)

```


#### Update invoice state

```bash
curl --location --request GET 'http://localhost:8006/all'
```

- Response

```bash
[{"idInvoice":1,"amount":900.0,"state":1}]
```





#### app-transaction

Microservicio que se encarga de obtener los mensajes de kafka y registrar las transacciones que se realizan con el pago de las facturas

[Dockerfile](https://github.com/icesi-ops/training_microservices.git)

- Curl del servicio para obtener el detalle de todos los invoices

```
curl --location --request GET 'http://localhost:8082/all'
```




psql -d db_invoice -U postgres


SELECT * FROM db_invoice;
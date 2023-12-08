

openssl genrsa -out mykey.key 2048
openssl req -new -key mykey.key -out mycsr.csr
openssl x509 -signkey mykey.key -in mycsr.csr -req -days 365 -out mycertificate.pem
openssl pkcs12 -export -out mycertificate.p12 -inkey mykey.key -in mycertificate.pem



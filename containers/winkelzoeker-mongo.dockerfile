FROM mongo

COPY stores.json /stores.json
CMD mongoimport --host mongodb --db search-engine --collection stores --type json --file stores\stores.json --jsonArray
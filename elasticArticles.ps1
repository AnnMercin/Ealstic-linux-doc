#taking clone article

curl --location --request PUT '159.65.90.196:9200/article/_settings' --header 'Content-Type: application/json' --data '{

    "settings": {

        "index.blocks.write": true

    }

}'
 
 
curl --location --request POST '159.65.90.196:9200/article/_clone/article_backup_190124'
 
 
curl --location --request PUT '159.65.90.196:9200/article_backup_190124/_settings' --header 'Content-Type: application/json' --data '{

    "settings": {

        "index.blocks.write": false

    }

}'
 
 
curl --location --request PUT '159.65.90.196:9200/article/_settings' --header 'Content-Type: application/json' --data '{

    "settings": {

        "index.blocks.write": false

    }

}'

#delete article

 curl --location --request DELETE '159.65.90.196:9200/article'

 # after clone
 curl --location --request PUT '159.65.90.196:9200/article_2024/_settings' --header 'Content-Type: application/json' --data '{
  "settings": {
    "index.blocks.write": true
  }
}'

 curl --location --request POST '159.65.90.196:9200/article_2024/_clone/article'


 curl --location --request PUT '159.65.90.196:9200/article/_settings' --header 'Content-Type: application/json' --data '{

    "settings": {

        "index.blocks.write": false

    }
}'



curl --location --request PUT '159.65.90.196:9200/article_2024/_settings' --header 'Content-Type: application/json' --data '{

    "settings": {

        "index.blocks.write": false

    }

}'

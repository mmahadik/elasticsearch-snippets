#!/bin/sh
es_server=35.233.131.213
es_url="elastic:gbJFUK41@$es_server:9200/user_profiles_usa_jul18"

# base query to build more complex queries
curl -X GET "$es_url/_search" -H 'Content-Type: application/json' -d'
{
  "query": { "match_all": {} }
} 
' 2>/dev/null | python -m json.tool | less


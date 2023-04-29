#!/bin/bash

api="https://quotesondesign.com/wp-json/wp/v2"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_quotes() {
  # 1 - page: (integer): <page - default: 1>
  # 2 - per_page: (integer): <per_page - default: 10>
  curl --request GET \
    --url "$api/posts/?orderby=rand&per_page=${2:-10}&page=${1:-1}" \
    --user-agent "$user_agent" \
    --header "accept: application/json"
}

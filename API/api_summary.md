
# API Interaction Summary

## What is a REST API?
A REST API allows applications to communicate with servers using HTTP requests. It enables programs to retrieve or send data in a structured format, commonly JSON.

## HTTP Status Codes
- 200 OK: The request was successful.
- 404 Not Found: The requested resource does not exist.

## GitHub API
Endpoint: https://api.github.com/users/probablyoverthinking

The GitHub profile data was fetched and saved in `github_profile.json`.

## JSONPlaceholder API
Endpoint: https://jsonplaceholder.typicode.com/posts

A sample collection of posts was fetched and saved in `sample_posts.json`. The API returned 100 posts.

## Using jq
The following command extracts selected GitHub profile details:

`jq '{name: .name, repos: .public_repos, followers: .followers, joined: .created_at}' API/github_profile.json`

The following command counts the posts in the JSON file:

`jq length API/sample_posts.json`

The `jq` tool is used to filter, extract, and process JSON data from the command line.

# API Interaction Summary

## 1. Introduction

An API (Application Programming Interface) allows two software applications to communicate and exchange data.

In this project, I used REST APIs to retrieve information from GitHub and JSONPlaceholder.

## 2. GitHub API

**Endpoint:** https://api.github.com/users/jenashreyasi-EJB

I used the curl command to fetch my GitHub profile information in JSON format.

The profile data includes:
- Name
- GitHub username
- Public repositories
- Followers
- Account creation date

I used jq to extract selected information and saved it in `profile_summary.json`.

## 3. JSONPlaceholder API

**Endpoint:** https://jsonplaceholder.typicode.com/posts

I used this API to retrieve sample post data.

- Total posts retrieved: 100
- Data format: JSON
- Saved file: `sample_posts.json`

I used `jq 'length'` to count the posts and `jq '.[0]'` to display the first post.

## 4. HTTP Status Codes

- **200 OK:** The request was successful.
- **404 Not Found:** The requested resource could not be found.

## 5. Tools Used

- **curl:** Used to send HTTP requests and retrieve API data.
- **jq:** Used to filter, extract and format JSON data.
- **GitHub REST API:** Used to retrieve GitHub profile information.
- **JSONPlaceholder:** Used to retrieve sample post data.

## 6. Conclusion

Through this activity, I learned how to interact with REST APIs, retrieve JSON data using curl, process JSON using jq, and save API responses in files.

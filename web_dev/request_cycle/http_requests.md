

# Common HTTP Status Codes
Ranges
100s are Informational, meaning the request was received and process is ongoing
200s are Success, meaning the request was received and processed successfully
300s are Redirection, meaning the request was received but 
400s are Client error, meaning request was made but page is not valid
500s are Server error, meaning valid request was made but server failed to complete request

Codes
200 OK - Plainly successful
301 Moved Permanently - Requested resource has been permanently moved
404 File not found - Requested resource is not on server
410 Gone - Requested resource is no longer available on server, and forwarding address is unknown
503 Service Unavailable - Server unable to handle request, due to overloading or maintenance

# Difference between GET and POST requests

Essentially a GET request is a request for remote data and POST is a submission of data. Although a GET request can transmit information it is contained within the url, and so is both insecure and size-limited. A POST request contains a body, and therefore is more appropriate for things like form submissions.

# What is a cookie?

Cookies are text files used by websites to store user information. They're a byproduct of the fact that HTTP requests are by definition discrete and stateless - meaning that each request is independent and cannot refer back to prior requests. The cookies store data like login information or sites visited to create a more seamless, continuous user experience. They are also used to store information about sessions for, for example, use by advertisers.
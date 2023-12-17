# Blog App With Forms with Authentication

Chapter 7: User Accounts
So far we’ve built a working blog application with forms but we’re missing a major piece of most web applications: user authentication. Implementing proper user authentication is famously hard; there are many security gotchas along the way so you really don’t want to implement this yourself. Fortunately, Django comes with a powerful, built-in user authentication system98 that we can use and customize as needed. Whenever you create a new project, by default Django installs the auth app, which provides us with a User object99 containing:
- username 
- password
- email
- first_name
- last_name

We will use this User object to implement log in, log out, and sign up in our blog application.
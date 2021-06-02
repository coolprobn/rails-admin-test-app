# README

## Setup

1. Clone the repo
2. cd to the project folder
3. Run migrations: `rails db:migrate`
4. Load seed data: `rails db:seed`
5. Install all gems: `bundle install`
6. Start the server: `rails s`

## Replicate the issue

Issue: When we try to use filter for column with question mark (?) on it, jQuery throws error during creation of filter
box.

1. From the browser, navigate to: `http://localhost:3000/admin/user`
2. Click on **Add Filter**
3. Click on **admin?**
4. Open the console in your browser
5. You can see the error: **Uncaught Error: Syntax error, unrecognized expression: p#admin?-52066-filter-container**
6. Stack trace

    ```js
      Uncaught Error: Syntax error, unrecognized expression: p#admin?-52066-filter-container
          at Function.Sizzle.error (jquery.source.js:1502)
          at Sizzle.tokenize (jquery.source.js:2159)
          at Sizzle.select (jquery.source.js:2580)
          at Function.Sizzle [as find] (jquery.source.js:903)
          at jQuery.fn.init.find (jquery.source.js:2826)
          at new jQuery.fn.init (jquery.source.js:2949)
          at jQuery (jquery.source.js:75)
          at Object.append (ra.filter-box.source.js:182)
          at HTMLAnchorElement.<anonymous> (ra.filter-box.source.js:210)
          at HTMLDocument.dispatch (jquery.source.js:5226)
    ```

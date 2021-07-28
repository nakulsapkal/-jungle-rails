# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Final Product

!["screenshot of Home Page"](https://github.com/nakulsapkal/-jungle-rails/blob/master/docs/Home%20Page.png?raw=true)
!["screenshot of SignUp Page"](https://github.com/nakulsapkal/-jungle-rails/blob/master/docs/Signup%20Page.png?raw=true)
!["screenshot of Login Cart View(Empty Cart View)"](<https://github.com/nakulsapkal/-jungle-rails/blob/master/docs/Cart%20View%20(Empty%20Cart%20View).png?raw=true>)
!["screenshot of Categories List"](https://github.com/nakulsapkal/-jungle-rails/blob/master/docs/Categories%20List%20View.png?raw=true)
!["screenshot of Admin Dashboard"](https://github.com/nakulsapkal/-jungle-rails/blob/master/docs/Admin%20Dashboard%20View.png?raw=true)

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe

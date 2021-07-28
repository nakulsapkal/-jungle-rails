# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Final Product

!["screenshot of Home Page"](https://github.com/nakulsapkal/scheduler/blob/final-changes/docs/App%20Main%20Screen.png?raw=true)
!["screenshot of SignUp Page"](https://github.com/nakulsapkal/scheduler/blob/final-changes/docs/Delete%20Appointment.png?raw=true)
!["screenshot of Login Cart View(Empty Cart View)"](https://github.com/nakulsapkal/scheduler/blob/final-changes/docs/New%20Appointment%20Form.png?raw=true)
!["screenshot of Categories List"](https://github.com/nakulsapkal/scheduler/blob/final-changes/docs/Error%20Mode%20For%20Saving%20Appointment.png?raw=true)
!["screenshot of Admin Dashboard"](https://github.com/nakulsapkal/scheduler/blob/final-changes/docs/Error%20Mode%20For%20Deleting%20Appointment.png?raw=true)

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

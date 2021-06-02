# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

User.create([
              {
                first_name: 'John',
                last_name: 'Doe',
                email: 'john@email.com',
                mobile_number: '3412985601',
              },
              {
                first_name: 'Jane',
                last_name: 'Doe',
                email: 'jane@email.com',
                mobile_number: '9876098412',
                admin?: true
              }
            ])

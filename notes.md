# Vegas in Miami Backend Notes

## Add new field to active admin model
1. Add column to active record with migration. Example: `rails g migration AddImgToArticle img:string`.
2. `rake db:migrate`
3. Update attributes in serializer.
4. Update strong params in controller.
5. Update active admin resource model `permit_params`
6. Heroku push, migrate and restart `git push heroku master && heroku run rake db:migrate && heroku restart`

## Add new model to active admin
1. Add table to active record with migration. Example `rails g scaffold Testimonial author:string content:string`
2. `rake db:migrate`
3. Create serializer: `rails g serializer author content`
4. Call serializer in controllers: Example `render json: TestimonialSerializer.new(@testimonials)`
5. Move controller to namespaced directory /api/v1
6. Namespace controller and inherit from apicontroller. Example: `class Api::V1::TestimonialsController < ApiController`
7. Add active admin resource: Example: `rails generate active_admin:resource Testimonial`
8. Uncomment or add Add permit_params to active admin model. Example: `permit_params :author, :content`
9. Namespace routes in routes.rb
10. Heroku push, migrate and restart `git push heroku master && heroku run rake db:migrate && heroku restart`

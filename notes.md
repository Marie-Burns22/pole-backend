# Vegas in Miami Backend Notes

## Add new field to active admin model
1. Add column to active record with migration. Example: `rails g migration AddImgToArticle img:string`.
2. `rake db:migrate`
3. Update attributes in serializer.
4. Update strong params in controller.
5. Update active admin resource model `permit_params`
6. Heroku push, migrate and restart `git push heroku master && heroku run rake db:migrate && heroku restart`
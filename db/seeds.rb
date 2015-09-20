# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tags = Tag.create([
                    {name: 'science'},
                    {name: 'sports'},
                    {name: 'breaking news'},
                    {name: 'business'},
                    {name: 'foreign affairs'},
                    {name: 'art'},
                    {name: 'recreation'}
                  ])

 Post.create([{title: "A new world", 
               body: "Yes, a new world!",
               published: true,
               tags: tags.sample(3) },
              {title: "The best thing",
               body: "Is not to do anything",
               published: true,
               tags: tags.sample(4) }])



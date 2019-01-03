# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#!!!Please use only after the first user is created!!!

#comment out the below if you don't want the first user to be admin.

User.first.update_attributes(admin: true)

Genre.new(name: 'action', user: User.first).save
Genre.new(name: 'adventure', user: User.first).save
Genre.new(name: 'animation', user: User.first).save
Genre.new(name: 'biography', user: User.first).save
Genre.new(name: 'comedy', user: User.first).save
Genre.new(name: 'crime', user: User.first).save
Genre.new(name: 'documentary', user: User.first).save
Genre.new(name: 'drama', user: User.first).save
Genre.new(name: 'family', user: User.first).save
Genre.new(name: 'fantasy', user: User.first).save
Genre.new(name: 'history', user: User.first).save
Genre.new(name: 'horror', user: User.first).save
Genre.new(name: 'musical', user: User.first).save
Genre.new(name: 'romance', user: User.first).save
Genre.new(name: 'scifi', user: User.first).save
Genre.new(name: 'thriller', user: User.first).save
Genre.new(name: 'war', user: User.first).save
Genre.new(name: 'western', user: User.first).save

Director.new(name: 'Steven Spilberg', user: User.first).save
Director.new(name: 'Alfred Hitckcock', user: User.first).save
Director.new(name: 'Martin Scorsese', user: User.first).save
Director.new(name: 'Ridley Scott', user: User.first).save
Director.new(name: 'Quentin Tarantino', user: User.first).save
Director.new(name: 'Francis Ford Copolla', user: User.first).save
Director.new(name: 'Stanley Kubrick', user: User.first).save
Director.new(name: 'George Lucas', user: User.first).save
Director.new(name: 'Woody Allen', user: User.first).save
Director.new(name: 'Mel Brooks', user: User.first).save
Director.new(name: 'Mel Gibson', user: User.first).save
Director.new(name: 'Daren Aronofsky', user: User.first).save
Director.new(name: 'Wes Anderson', user: User.first).save
Director.new(name: 'Peter Jackson', user: User.first).save

Screenwriter.new(name: 'Quentin Tarantino', user: User.first).save
Screenwriter.new(name: 'Woody Allen', user: User.first).save
Screenwriter.new(name: 'Billy Wilder', user: User.first).save
Screenwriter.new(name: 'Oliver Stone', user: User.first).save
Screenwriter.new(name: 'Francis Ford Copolla', user: User.first).save
Screenwriter.new(name: 'Christopher Nolan', user: User.first).save
Screenwriter.new(name: 'George Lucas', user: User.first).save
Screenwriter.new(name: 'Coen Brothers', user: User.first).save
Screenwriter.new(name: 'Charlie Kaufma', user: User.first).save
Screenwriter.new(name: 'Nora Ephron', user: User.first).save
Screenwriter.new(name: 'James Cameron', user: User.first).save

Origin.new(name: 'Poland', description: "There are no mistakes. You can fix anything that happens. Every single thing in the world has its own personality - and it is up to you to make friends with the little rascals. Follow the lay of the land. It's most important.").save
Origin.new(name: 'USA', description: "There are no mistakes. You can fix anything that happens. Every single thing in the world has its own personality - and it is up to you to make friends with the little rascals. Follow the lay of the land. It's most important.").save
Origin.new(name: 'Spain', description: "There are no mistakes. You can fix anything that happens. Every single thing in the world has its own personality - and it is up to you to make friends with the little rascals. Follow the lay of the land. It's most important.").save
Origin.new(name: 'Italy', description: "There are no mistakes. You can fix anything that happens. Every single thing in the world has its own personality - and it is up to you to make friends with the little rascals. Follow the lay of the land. It's most important.").save
Origin.new(name: 'Great Britain', description: "There are no mistakes. You can fix anything that happens. Every single thing in the world has its own personality - and it is up to you to make friends with the little rascals. Follow the lay of the land. It's most important.").save
Origin.new(name: 'Japan', description: "There are no mistakes. You can fix anything that happens. Every single thing in the world has its own personality - and it is up to you to make friends with the little rascals. Follow the lay of the land. It's most important.").save
Origin.new(name: 'Turkey', description: "There are no mistakes. You can fix anything that happens. Every single thing in the world has its own personality - and it is up to you to make friends with the little rascals. Follow the lay of the land. It's most important.").save
Origin.new(name: 'France', description: "There are no mistakes. You can fix anything that happens. Every single thing in the world has its own personality - and it is up to you to make friends with the little rascals. Follow the lay of the land. It's most important.").save
Origin.new(name: 'Sweden', description: "There are no mistakes. You can fix anything that happens. Every single thing in the world has its own personality - and it is up to you to make friends with the little rascals. Follow the lay of the land. It's most important.").save
Origin.new(name: 'Iran', description: "There are no mistakes. You can fix anything that happens. Every single thing in the world has its own personality - and it is up to you to make friends with the little rascals. Follow the lay of the land. It's most important.").save
Origin.new(name: 'Germany', description: "There are no mistakes. You can fix anything that happens. Every single thing in the world has its own personality - and it is up to you to make friends with the little rascals. Follow the lay of the land. It's most important.").save

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sticky = Sticky.create(
    [
        {
            title: "A new cake recipe",
            body: "Made of chocolate"
        },
        {
            title: "A twitter Client idea",
            body: "Only for replying to mentions and dms"
        },
        {
            title: "Card game design",
            body: "Like uno but involves drinking"
        },
        {
            title: "A tailoring app",
            body: "A platform to connext them and clients"
        }
    ]
)
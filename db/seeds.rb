puts "destroying all..."
User.destroy_all
Restaurant.destroy_all
Review.destroy_all
puts "seeding..."

users = User.create([
    {username: "Admin",
    password_digest: "gucciMane"
    }
])

restaurants = Restaurant.create([
    {
        name: "Mcdonalds",
        image: "https://1000logos.net/wp-content/uploads/2017/03/McDonalds-logo.png"
    },
    {
        name: "Taco Bell",
        image: "https://cdn.worldvectorlogo.com/logos/taco-bell-5.svg"
    },
    {
        name: "Chic-fil-a",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Chick-fil-A_Logo.svg/2560px-Chick-fil-A_Logo.svg.png"
    },
    {
        name: "Wendys",
        image: "https://upload.wikimedia.org/wikipedia/en/thumb/3/32/Wendy%27s_full_logo_2012.svg/640px-Wendy%27s_full_logo_2012.svg.png"
    },
    {
        name: "Burger King",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png"
    },
    {
        name: "Shake Shack",
        image: "https://images.saymedia-content.com/.image/t_share/MTc0NDI1MzgxNjMyMjIyODU0/whats-the-hype-with-shake-shack.png"
    },


])

reviews = Review.create([
    {
        title: 'A classic',
        description: "can't go wrong with this american classic",
        score: 5,
        restaurant: restaurants.first
    },
    {
        title: 'Dog food',
        description: "wouldnt give food this bad to my dog",
        score: 1,
        restaurant: restaurants.first
    },

])

puts "done seeding!"
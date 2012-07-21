# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'

user = User.create! :name => 'Chris', :email => 'c@c.c', :password => 'foobar', :password_confirmation => 'foobar'
puts 'New user created: ' << user.name
user.add_role :admin

user2 = User.create! :name => 'James', :email => 'j@j.j', :password => 'foobar', :password_confirmation => 'foobar'
puts 'New user created: ' << user2.name
user2.add_role :admin

user3 = User.create! :name => 'Alex', :email => 'a@a.a', :password => 'foobar', :password_confirmation => 'foobar'
puts 'New user created: ' << user3.name
user3.add_role :admin

user4 = User.create! :name => 'Robin', :email => 'r@r.r', :password => 'foobar', :password_confirmation => 'foobar'
puts 'New user created: ' << user4.name
user4.add_role :admin

user5 = User.create! :name => 'Brian', :email => 'b@b.b', :password => 'foobar', :password_confirmation => 'foobar'
puts 'New user created: ' << user5.name
user5.add_role :admin


puts 'SETTING UP SEED TEXTs'

beginning = user.beginnings.create! :title => 'A Dream Within A Dream', :original_author => 'Edgar Allan Poe', :content => 'Take this kiss upon the brow!
And, in parting from you now,
Thus much let me avow--
You are not wrong, who deem
That my days have been a dream;
Yet if hope has flown away
In a night, or in'

puts 'New beginning created: ' << beginning.title

beginning2 = user.beginnings.create! :title => 'Still I Rise', :original_author => 'Maya Angelou', :content => "You may write me down in history
With your bitter, twisted lies,
You may trod me in the very dirt
But still, like dust, I'll rise.

Does my sassiness upset you?
Why are you beset with gloom?
'Cause I walk like I've got oil wells
Pumping in my living room.

Just like moons and like suns,
With the certainty of tides,
Just like hopes springing high,
Still I'll rise.

Did you want to see me broken?
Bowed head and lowered eyes?
Shoulders falling down like teardrops.
Weakened by my soulful cries.

Does my haughtiness offend you?
Don't you take it awful hard
'Cause I laugh like I've got gold mines
Diggin' in my own back yard.

You may shoot me with your words,
You may cut me with your eyes,
You may kill me with your hatefulness,
But still, like air, I'll rise.

Does my sexiness upset you?
Does it come as a surprise
That I dance like I've got diamonds
At the meeting of my"

puts 'New beginning created: ' << beginning2.title

beginning3 = user3.beginnings.create! :title => 'Daddy', :original_author => 'Sylvia Plath', :content => 'You do not do, you do not do
Any more, black shoe
In which I have lived like a foot
For thirty years, poor and white,
Barely daring to breathe or Achoo.'

puts 'New beginning created: ' << beginning3.title

beginning4 = user2.beginnings.create! :title => "Oh, The Places You'll Go", :original_author => 'Dr. Seuss', :content => "Congratulations! 
Today is your day. 
You're off to Great Places! 
You're off and away!

You have brains in your head. 
You have feet in your shoes. 
You can steer yourself 
any direction you choose. 
You're on your own. And you know what you know. 
And YOU are the guy who'll decide where to go.

You'll look up and down streets. Look 'em over with care. 
About some you will say, I don't choose to go there. 
With your head full of brains and your shoes full of feet, 
you're too smart to go down any not-so-good street.

And you may not find any 
you'll want to go down. 
In that case, of course, 
you'll head straight out of town.

It's opener there 
in the wide open air.

Out there things can happen 
and frequently do 
to people as brainy 
and footsy as you.

And when things start to happen, 
don't worry. Don't stew. 
Just go right along. 
You'll start happening too.

OH! 
THE PLACES YOU'LL GO!"

puts 'New beginning created: ' << beginning4.title

beginning5 = user.beginnings.create! :title => 'Ode to autumn', :original_author => 'John Keats', :content => "Season of mists and mellow fruitfulness, 
Close bosom-friend of the maturing sun; 
Conspiring with him how to load and bless 
With fruit the vines that round the thatch-eaves run; 
To bend with apples the moss'd cottage-trees, 
And fill all fruit with ripeness to the core; 
To swell the gourd, and plump the hazel shells 
With a sweet kernel; to set budding more, 
And still more, later flowers for the bees, 
Until they think warm days will never ...."

puts 'New beginning created: ' << beginning5.title

beginning6 = user.beginnings.create! :title => 'If', :original_author => ' Rudyard Kipling', :content => "If you can keep your head when all about you 
Are losing theirs and blaming it on you, 
If you can trust yourself when all men doubt you, 
But make allowance for their doubting too; 
If you can wait and not be tired by waiting, 
Or being lied about, don't deal in lies, 
Or being hated, don't give way to hating, 
And yet don't look too good, nor talk too wise:

If you can dream - and not make dreams your master; 
If you can think - and not make thoughts your ..."

puts 'New beginning created: ' << beginning6.title

beginning7 = user.beginnings.create! :title => 'The Dead', :original_author => 'James Joyce', :content => "LILY, the caretaker's daughter, was literally run off her feet. Hardly had she brought one gentleman into the little pantry behind the office on the ground floor and helped him off with his overcoat than the wheezy hall-door bell clanged again and she had to scamper along the bare hallway to let in another guest. It was well for her she had not to attend to the ladies also. But Miss Kate and Miss Julia had thought of that and had converted the bathroom upstairs into a ladies' dressing-room. Miss Kate and Miss Julia were there, gossiping and laughing and fussing, walking after each other to the head of the stairs, peering down over the banisters and calling down to Lily to ask her who had come.

It was always a great affair, the Misses Morkan's annual dance. Everybody who knew them came to it, members of the family, old friends of the family, the members of Julia's choir, any of Kate's pupils that were grown up enough, and even some of Mary Jane's pupils too. Never once had it fallen flat. For years and years it had ......" 

puts 'New beginning created: ' << beginning7.title

beginning8 = user.beginnings.create! :title => 'Wind', :original_author => 'Ted Hughes', :content => "This house has been far out at sea all night, 
The woods crashing through darkness, the booming hills, 
Winds stampeding the fields under the window 
Floundering black astride and blinding wet

Till day rose; then under an orange sky 
The hills had new places, and wind wielded 
Blade-light, luminous black and emerald, 
Flexing like the lens of a mad...."

puts 'New beginning created: ' << beginning8.title

ending = user.endings.create! :title => 'My ending for a Dream Within A Dream', :beginning_id => Beginning.first, :content => 'a day,
In a vision, or in none,
Is it therefore the less gone?
All that we see or seem
Is but a dream within a dream.

I stand amid the roar
Of a surf-tormented shore,
And I hold within my hand
Grains of the golden sand--
How few! yet how they creep
Through my fingers to the deep,
While I weep--while I weep!
O God! can I not grasp
Them with a tighter clasp?
O God! can I not save
One from the pitiless wave?
Is all that we see or seem
But a dream within a dream?'

puts 'New ending created: ' << ending.title


ending2 = user.endings.create! :title => 'Another ending for dream within a dream', :beginning_id => Beginning.first, :content => 'the crooked thing,
There is nobody wise enough
To find out all that is in it,
For he would be thinking of love
Till the stars had run away
And the shadows eaten the moon.
Ah, penny, brown penny, brown penny,
One cannot begin it too soon.'

puts 'New ending created: ' << ending2.title


ending4 = user.endings.create! :title => 'Another ending for Still I Rise', :beginning_id => "2".to_i, :content => " holy temple
and comes into our sight
to liberate us into life.

Love arrives
and in its train come ecstasies
old memories of pleasure
ancient histories of pain.
Yet if we are bold,
love strikes away the chains of fear
from our souls.

We are weaned from our timidity
In the flush of love's light
we dare be brave
And suddenly we see
that love costs all we are
and will ever be.
Yet it is only love
which sets us free."

puts 'New ending created: ' << ending4.title

ending5 = user4.endings.create! :title => 'Dead End', :beginning_id => "7".to_i , :content => "always been this way. Little did they know their whole life had been a dream, the whole existence and world mere electrical currents pulsing in through the synapses of Peter Langford's comatose brain and today is the day they switch his life support machine off and Lily's world comes tumbling down."

puts 'New ending created: ' << ending5.title


comment = Beginning.first.comments.create! :content => "Budding laureate!"

puts 'New comment created: ' << comment.content

comment2 = Beginning.last.comments.create! :content => "Great start!"

puts 'New comment created: ' << comment2.content

comment3 = Ending.first.comments.create! :content => "You finished it!"

puts 'New comment created: ' << comment3.content

comment4 = User.first.comments.create! :content => "Fan of your work"

puts 'New comment created: ' << comment4.content





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

ending3 = user.endings.create! :title => 'My ending for Still I Rise', :beginning_id => Beginning.first, :content => " thighs?

Out of the huts of history's shame
I rise
Up from a past that's rooted in pain
I rise
I'm a black ocean, leaping and wide,
Welling and swelling I bear in the tide.
Leaving behind nights of terror and fear
I rise
Into a daybreak that's wondrously clear
I rise
Bringing the gifts that my ancestors gave,
I am the dream and the hope of the slave.
I rise
I rise
I rise."
puts 'New ending created: ' << ending3.title

ending4 = user.endings.create! :title => 'Another ending for Still I Rise', :beginning_id => Beginning.first, :content => " holy temple
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

comment = Beginning.first.comments.create! :content => "Budding laureate!"

puts 'New comment created: ' << comment.content

comment2 = Beginning.last.comments.create! :content => "Great start!"

puts 'New comment created: ' << comment2.content

comment3 = Ending.first.comments.create! :content => "You finished it!"

puts 'New comment created: ' << comment3.content

comment4 = User.first.comments.create! :content => "Fan of your work"

puts 'New comment created: ' << comment4.content





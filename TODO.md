- models? (association of models)
- database Info?
- purpose of app 
- routes/resources
- design the experience
- prioritize features (what's totally necessary? what's nice to have?)

UX:
1. I need to have a list of 
- organize event: BBQ
- what is the event? (event information)
- what do I need for this BBQ? (list of things I need ... becomes remaining list)
- what do I want people to bring? (list of things OTHERS can bring)
- who is coming? (list of invitees)
- who is bringing what? how much are they bringing? (I tell them what I need. They text back what they're bringing)
- do I have all my needs met by what people are bringing? (what is remaining on the list?)

- event
- people
- list of needs (item or category)
- list of what people are bringing (item) --> join table

(by Item)           (people are bringing)
- ice cream           - Saron
- donut               - Ian
- cake

(by Category)        (people are bringing)
- Side Dishes         - Saron: salad, chips
                      - Ian: bread, butter

TABLES:

User
has_many :events
has_many 
id 

Event
has_many :users
has_many :categories
id 


Category
belongs_to :event
has_many :items
id          event_id


Item
belongs_to :category
has_many :guests, :through => item_guest
has_many :item_guests
id        category_id     quantity

Item_Guest
belongs_to :item
belongs_to :guest
id 					item_id 			guest_id

Guest 
has_many :items, :through => item_guest
has_many :item_guests
id







Future Features:
- questions (chocolate or vanilla?)
- description
- having guest login
- having guests edit cateogires/items (rights)
- adding images/recipes







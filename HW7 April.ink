HW7 April
VAR key = 0 
VAR password = 0
VAR keylocation = 0
 * Wake up.
 A lightning strike awakens you. It must be the middle of the night. For a moment you're too scared to move, but as your eyes adjust, you realize you're still safe and warm in your bed. Something feels off though.
 ->bedroom



== bedroom ==
Bedroom
{!Your bedroom hasn't changed in the many years the two of you have shared it. One half, yours, has lime green walls covered with drawings. Toys and loose clothes cover most of the floor. The other half, painted sky blue, is more elegantly decorated with (actually good) paintings, half-completed homework assignments, and books. As you rise, you notice something odd -- April isn't in her bed.}

    Do what?
    + Look around. 
    -> investigating
    + Leave.
        Go where?
        ++ [Hallway]
        -> hallway

= investigating
Look at what?
    + Snoop through April's stuff? 
        Even though you share a room, April is typically pretty private. {!The last time you so much as touched something in her desk when she was gone, she didn't speak to you for a week.}
        ++ [Look anyway.] ->aprils_stuff
        ++ [Don't.] 
        ->investigating
    + Desk
        Your desk is full of scrapped drawings that didn't make the wall, and pictures. Your favorite one, of you and April at her 12th birthday dinner with Dad, is framed by the front. Your alarm clock reads{: 11:13 PM| 11:15 PM| 1:17 PM| 11:19 PM| 11:21 PM| way past your bedtime}. Dad would kill you if he knew you were up so late, but he's probably at work still.
        ->investigating
    + Bed 
        Your bed is a total mess, like always. It's still got the flowery bedspread that was April's for a while until her feet started poking out from underneath it. Lined along the wall side of the bed is your ever-expanding collection of stuffed animals.
    -> investigating
    + Walls
        The walls are mostly covered with your art projects. Some are a bit rudimentary, others are painted with as much care as a 9 year old can manage. Your sister is the real artist, even you know that. Dad always encourages your and April's artistic streak, but you know it reminds him of Mom.
    -> investigating
    + [Back] -> bedroom

= aprils_stuff
April's side of the room {!is deserted. She must be in the house somewhere.}
    + Desk
        You carefully slide her desk drawer open. There's some jewelery, some of her watercolor paints, a folded piece of paper, and a book -- her diary? God, she would actually murder you if you read that. 
        ++ Diary
            Maybe just a quick look at the last thing she wrote? You flip to the back of the book and open to April's loopy handwriting. 
            "There's no way I can't see this through! Dad will have to understand. May, if you're reading this,  you're so dead by the time I get home. But I'll see you soon."
            What does that even mean? Where is she?
        ++ Paper
            You unfold the piece of paper, expecting a sketch. But it's a letter. The writing's in a loopy cursive that you've seen before, but can barely read. At the bottom though, you can unmistakeably see the word "Mom". Is this an old letter? You can't tell.
        -- ->aprils_stuff
    + Bed 
        April's bed is made, which is weird, considering it's the middle of the night.
        -> aprils_stuff
    + Walls
        April's paintings are on the wall. Some are bigger, watercolor landscapes, others are unmistakeable portraits of some of her friends, your childhood dog, or the Maine house where she lived before you were born. April always paints that house. 
        -> aprils_stuff
    + [Back] -> bedroom


->END


== hallway ==

Hallway
The long hallway connects the upstairs bedrooms. Yours and April's room is at the end, Dad's is the next door down. Across the hall is Mom's study, but the door is always locked. 
    + [Your bedroom] -> bedroom
    + [Dad's room] 
    {! You knock on the door, even though you know he's still out. No answer. You wish he was here. You're starting to get really scared. Where is April?}
    -> dads_room
    + [The study] ->enter_study
    + Bathroom
    The light is off in the bathroom. You don't see anything out of the ordinary in here anyway. 
        ++ [Back to hallway.]
    -> hallway
    + [Downstairs] 
        "Dad? April?" you call down the stairs. No answer. You're a little too scared to go down there in the dark. Where is everyone? 
        ++ [Back to hallway.] ->hallway
    -> END
    
    
=enter_study
{key: You have the key to the study now. It's strange, you never thought you'd see the inside of this room. You slot the key in and turn it slowly, then enter. ->study}

You try the door to the study, but it's locked, as always. {!You can see a light underneath the door though. Is a lamp on in there? How can that be possible? No one goes into Mom's study.} Dad hid the key a long time ago.
    + [Back to hallway.] ->hallway


->END


==dads_room==
    Dad's room
    {!You push the door open.} The master bedroom is pretty plain. April said that Dad took most of the stuff off the walls when Mom moved out.
    + [Closet] 
        It's just a bunch of Dad's clothes and random boxes of his old stuff. {keylocation: Remembering the email from Mom, you duck into the back of the closet and see a small box. It doesn't look big enough to fit much though. ->closet}
        ++ [Back]
        -> dads_room
    
    + [Desk] -> desk
    + [TV] 
        Dad's TV is off. Turn it on?
        ++ [Turn on]
        The TV flips on{! to the channel it was on last}. ->TV
        ++ [Don't.] 
        -> dads_room
    + [Leave] ->hallway
    
    = TV 
    {& It's on the home improvement channel. | It's the 11 o' clock news. | It's some old rom-com that April and her friends always watch. | It's the cooking channel. Dad could really learn a thing from watching that. | It's your favorite cartoon.}
    + [Change the channel] -> TV
    + [Turn the TV off] -> dads_room
    
    
    = desk
    Dad's desk isn't as cluttered as you or April's. It's just his work computer and an empty coffee cup, plus a notepad with a couple of meaningless notes about work jotted down.
        + Computer
        Dad's computer. There's a password on it.
            ++ (guess) Guess the password?
                *** 12345
                    Well, at least Dad doesn't have the most obvious password in the world.
                *** imstupid
                    Hm.  He must have a high opinion of himself.
                *** 050714
                    Wow, not your birthday? Cold, Dad.
                +++ [Stop guessing.] 
                -> desk
                --- You got the password wrong.
                -> guess
            ++ {password} Put in the password.
            You input the password you found. The computer unlocks. ->unlocked_computer
            ++ [Back] ->desk
            -- ->desk
        + Desk drawer 
            ~password = 1
            You pull open the desk drawer. Just a few pens, random knick knacks, and a sticky note {. It reads "password: 04-2012-05-2015". Wow, Dad couldn't even remember April and your birthdays without writing it down? Worst security computer ever. | with the password on it.}
            ++ [Back] 
            -> desk
            ->desk
        + [Back] 
        -> dads_room
        
        ->desk
    
    = unlocked_computer
    {The home screen is a picture of you and April toddling around the new house. | Dad's computer is still on.} 
    + [Check Dad's email.]
        {Jeez, you're a major snooper today. |You can't help checking again.} You open Dad's email and scan through the first page. It's mostly work stuff. You notice he has a sent email to Mom from recently. 
        ++ Read it?
        ~ keylocation = 1
            "I don't think you should be contacting the girls. April's been asking about it, and you're just confusing her. If you're back again, then you can take the last of your stuff and go. It's been sitting in my closet long enough. After that, we don't want to hear from you again."
        Wow. You rarely hear Dad sounding angry like that. Mom hasn't contacted you -- did April hear from her and not say anything? -> unlocked_computer
            
        ++ Don't read it. 
        -> unlocked_computer
        
    + [Play a game]
        You play {&Tetris|online chess|Poptropica|minesweeper} for a while. 
        -> unlocked_computer
    + [Back] ->dads_room
    
    = closet
    * Pick up the box
    ~ key = 1
        You pull the box out. It looked like it had been sealed, but the tape was pulled off and then hastily reattached. Inside is a key. Is this the key to Mom's study? It's just been in some box in Dad's stuff this whole time?
        You pocket the key. 
        -> closet
    + [Back] ->dads_room
    - -> dads_room
    



== study ==

You don't know what you were expecting, but the room is smaller and emptier than you imagined it would be. {!There is a lamp on in the corner -- you don't know how Dad didn't notice it. April must have been in here before you.}
+ Look around.
    There are some canvases stacked against the far wall. You take a look. They're beautiful; just like April's. There's a desk with a folded paper on it. It's a printed out letter, so this one you can actually read. The date reads 2018, and it's addressed to your sister.
    ++ Read it.
        The letter is asking to see April. So Mom came back? And she wanted to see April? Dad had never mentioned that before. Where was April now then?  She must have been furious with Dad when she found this. You don't know where she went, but there's a safe bet that she's looking for Mom.
        ->END
    




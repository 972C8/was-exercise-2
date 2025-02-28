;Task1 problem

(define (problem task1-problem)
  (:domain task1)
  (:objects
    room1 room2 room3 room4 room5 room6 room7 room8 room9 room10 - room
    inhabitant1 inhabitant2 inhabitant3 - inhabitant
    am9 am915 am930 am945 - time
  )
  
  (:init
    (arrives inhabitant1 am9)
    (arrives inhabitant2 am9)
    (arrives inhabitant1 am930)
    (arrives inhabitant3 am930)
    (arrives inhabitant1 am945)
    
    (assigned inhabitant1 room1)
    (assigned inhabitant2 room2)
    (assigned inhabitant3 room3)
    
    ; do not declare room_shown so that it is false by default (no inhabitant has been shown their room yet)
  )
  
  (:goal
    (and 
      (room_shown inhabitant1)
      (room_shown inhabitant2)
      (room_shown inhabitant3)
    )
  )
)
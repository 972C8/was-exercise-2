;Task1.1 problem

(define (problem task1_1-problem)
  (:domain task1_1)
  
  (:objects
    inhabitant1 inhabitant2 inhabitant3 - inhabitant
    room1 room2 room3 room4 room5 room6 room7 room8 room9 room10 - room
    am9 am915 am10 am1030 am11 - time
  )
  
  (:init
    ;each inhabitant is assigned to a room
    (assigned inhabitant1 room1)
    (assigned inhabitant2 room2)
    (assigned inhabitant3 room3)
    
    ;the times at which inhabitants can arrive
    (can-arrive-at inhabitant1 am9)
    (can-arrive-at inhabitant1 am915)
    (can-arrive-at inhabitant2 am9)
    (can-arrive-at inhabitant3 am10)
    (can-arrive-at inhabitant3 am1030)
    (can-arrive-at inhabitant3 am11)
    
    ;all times are available
    (time-available am9)
    (time-available am915)
    (time-available am10)
    (time-available am1030)
    (time-available am11)
  )
  
  (:goal
    (and
      ;all inhabitants must be set up
      (room-shown inhabitant1)
      (room-shown inhabitant2)
      (room-shown inhabitant3)
    )
  )
)
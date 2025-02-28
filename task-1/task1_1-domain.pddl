;Task1.1 domain

(define (domain task1_1)

  (:requirements :typing :negative-preconditions)
  
  (:types
    inhabitant room time
  )
  
  (:predicates
    (assigned ?i - inhabitant ?r - room) ;inhabitant i is assigned to room r
    (can-arrive-at ?i - inhabitant ?t - time);inhabitant i can-arrive-at at time t    
    (time-available ?t - time) ;time t is available (not yet scheduled)  
    (room-shown ?i - inhabitant) ;inhabitant i has been shown their room
  )
  
  (:action showRoom
    :parameters (?t - time ?i - inhabitant ?r - room)
    :precondition (and
      (assigned ?i ?r) ;inhabitant must be assigned to the room
      (can-arrive-at ?i ?t) ;inhabitant must be able to arrive at this time
      (time-available ?t) ;time must be available
      (not (room-shown ?i)) ;inhabitant has not been shown their room yet
    )
    :effect (and
      (not (time-available ?t)) ;time is no longer available
      (room-shown ?i) ;inhabitant has been shown their room
    )
  )
)
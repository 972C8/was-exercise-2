;Task 1.2 domain

(define (domain task1_2)

 (:requirements :typing :negative-preconditions)

 (:types
  inhabitant room time
 )
 
 (:predicates
  (assigned ?i - inhabitant ?r - room) ;inhabitant i is assigned to room r
  (can-arrive-at ?i - inhabitant ?t - time) ;inhabitant i can-arrive-at at time t
  (time-available ?t - time) ;time t is available (not yet scheduled)
  (room-shown ?i - inhabitant) ;inhabitant i has been shown their room
  
  ;New predicates for task1.2
  (room-unlocked ?r - room ?t - time) ;room r is unlocked at time t
  (room-joined ?r - room ?t - time) ;worker joined room r at time t
 )
 
;New actions for task1.2
 
 (:action unlock
  :parameters (?t - time ?r - room)
  :precondition (and
    (time-available ?t)
    (not (room-unlocked ?r ?t))
  )
  :effect (and
    (room-unlocked ?r ?t)
  )
 )
 
 (:action join
  :parameters (?t - time ?r - room)
  :precondition (and
    (time-available ?t)
    (room-unlocked ?r ?t)
    (not (room-joined ?r ?t))
  )
  :effect (and
    (room-joined ?r ?t)
  )
 )
 
 (:action showRoom
  :parameters (?t - time ?i - inhabitant ?r - room)
  :precondition (and
    (assigned ?i ?r) ;inhabitant must be assigned to the room
    (can-arrive-at ?i ?t) ;inhabitant must be able to arrive at this time
    (time-available ?t) ;time must be available
    (not (room-shown ?i)) ;inhabitant has not been shown their room yet
    (room-unlocked ?r ?t) ;room must be unlocked
    (room-joined ?r ?t) ;worker must be at the room
  )
  :effect (and
    (not (time-available ?t)) ;time is no longer available
    (room-shown ?i) ;inhabitant has been shown their room
    (not (room-unlocked ?r ?t)) ;lock room again
    (not (room-joined ?r ?t)) ;worker leaves room
  )
 )
)
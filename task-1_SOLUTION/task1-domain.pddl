;Task1 domain

(define (domain task1)

(:requirements :strips :typing)

(:types
    inhabitant
    room
    time
)

(:predicates
    (room_shown ?i - inhabitant) ; whether the room was shown to the inhabitant
    (arrives ?i - inhabitant ?t - time) ; the time when the inhabitant arrives
    (assigned ?i - inhabitant ?r - room) ; the room assigned to the inhabitant
)


;define actions here
(:action show-room
    :parameters (?t - time ?i - inhabitant ?r - room)
    :precondition (and (arrives ?i ?t) (assigned ?i ?r))
    :effect (room_shown ?i)
)

)


(define (domain TreasureHunt)


(:requirements :strips
               :negative-preconditions )


(:predicates 
    (player ?player)
    (at ?player ?loc)
    (hasDoor ?loc1 ?loc2)
    (locHasMonster ?loc)
    (locHasHole ?loc)
    (locHasWeapon ?loc)
    (playerHasWeapon ?player)
    (locHasBoots ?loc)
    (playerHasBoots ?player)
    (locHasTreasure ?loc)
    (playerHasTreasure ?player)
)





(:action Move
    :parameters ( ?player ?loc1 ?loc2 )
    :precondition (and  (at ?player ?loc1)  (hasDoor ?loc1 ?loc2)  (not (locHasMonster ?loc2)) (not (locHasHole ?loc2))) 
    :effect (and (at ?player ?loc2)) 
)


(:action KillMonster
    :parameters ( ?player ?loc1 ?loc2 )
    :precondition (and  (at ?player ?loc1)  (hasDoor ?loc1 ?loc2)  (locHasMonster ?loc2)  (playerHasWeapon ?player) (not (locHasHole ?loc2))) 
    :effect (and (not (locHasMonster ?loc2)) (not (playerHasWeapon ?player)))
)


(:action MoveAndJump
    :parameters ( ?player ?loc1 ?loc2 )
    :precondition (and  (at ?player ?loc1)  (hasDoor ?loc1 ?loc2)  (not (locHasMonster ?loc2))  (locHasHole ?loc2) (playerHasBoots ?player))
    :effect (and (at ?player ?loc2)  (not (playerHasBoots ?player)))     
)


(:action GetWeapon
    :parameters ( ?player ?loc )
    :precondition (and (at ?player ?loc) (locHasWeapon ?loc))
    :effect (and (playerHasWeapon ?player))


(:action GetBoots
    :parameters ( ?player ?loc )
    :precondition (and (at ?player ?loc) (locHasBoots ?loc))
    :effect (and (playerHasBoots ?player))


(:action GetTreasure
    :parameters ( ?player ?loc )
    :precondition (and (at ?player ?loc) (locHasTreasure ?loc))
    :effect (and (playerHasTreasure ?player) (not (locHasTreasure ?loc)))
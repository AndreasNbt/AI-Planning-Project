(define (problem TreasureHuntProb1) (:domain TreasureHunt)
(:objects 
    player loc1 loc2 loc3 loc4 loc5 loc6 exit treasure
)

(:init
    (at player loc1) (locHasTreasure loc4) (treasureloc treasure loc4) (not (playerHasTreasure player)) (locHasHole loc5) (locHasMonster loc6)
    (hasDoor loc1 loc2) (hasDoor loc1 loc5) (hasDoor loc1 loc6) (hasDoor loc2 loc1) (hasDoor loc5 loc4) (hasDoor loc6 loc4)
    (hasDoor loc2 loc3) (hasDoor loc3 loc2) (hasDoor loc3 loc4) (hasDoor loc4 loc3) (hasExitDoor loc1)

)

(:goal (and
    (treasureloc treasure loc1)
))


)

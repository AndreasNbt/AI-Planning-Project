
(define (problem TreasureHuntProb2) (:domain TreasureHunt)
(:objects 
    player loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 exit 
)

(:init
     (at player loc1) (cave loc1) (cave loc2) (cave loc3) (cave loc4) (cave loc5) (cave loc6) (cave loc7) (cave loc8) (cave loc9)
     (locHasTreasure loc4)  (not (playerHasTreasure player)) (locHasHole loc7) (locHasMonster loc3)  (locHasBoots loc8) (locHasWeapon loc6) 
    (hasDoor loc1 loc2) (hasDoor loc2 loc1) (hasDoor loc1 loc5) (hasDoor loc2 loc3) (hasDoor loc3 loc2) (hasDoor loc3 loc4)
     (hasDoor loc4 loc3) (hasDoor loc5 loc2) (hasDoor loc5 loc7) (hasDoor loc5 loc9) (hasDoor loc5 loc6) (hasDoor loc6 loc5) (hasDoor loc6 loc8)
     (hasDoor loc7 loc4) (hasDoor loc8 loc6) (hasExitDoor loc1)

)

(:goal (and
    (playerHasWon player)
))

)

// Dead bill is a static object. How you pose your dead bill is kind of up to you. From what I can tell
// a static model needs its sequence to be the same, it can't be an animation so until further notice
// you will have to pose the dead bill yourself. 

$modelname "survivors/NamVet/namvet_deathpose.mdl"

$staticprop

$body "body" "mdl/namvet_deathpose.smd"

$contents "solid"

$cdmaterials "Models\survivors\namvet"

$bbox -0.239 -14.764 -0.99 49.728 15.31 28.464

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0

$sequence "ref" mdl/namvet_deathpose.smd

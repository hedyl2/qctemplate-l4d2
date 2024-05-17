//-----------------------------------------------------------------------------------------------
//                            			 MODEL
//-----------------------------------------------------------------------------------------------

$modelname "infected/witch.mdl"

$model "witch_model" "mdl/witch_reference.dmx" {

	$include "qc/face.qci"
}

$eyeposition 0 0 73

$contents "solid"
$ambientboost
$opaque

//-----------------------------------------------------------------------------------------------
//                            			MATERIALS
//-----------------------------------------------------------------------------------------------

$surfaceprop "flesh"

$cdmaterials "models\infected\witch\"

//-----------------------------------------------------------------------------------------------
//                            			ANIMATIONS
//-----------------------------------------------------------------------------------------------

$poseparameter "body_pitch" -90 90 loop 360
$poseparameter "body_yaw" -90 90 loop 360

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$sequence "ragdoll" "mdl/physics" ACT_DIERAGDOLL 1 fps 30.00 
$includemodel "infected/anim_witch.mdl"

//-----------------------------------------------------------------------------------------------
//                            			QC INCLUDES
//-----------------------------------------------------------------------------------------------

$include "qc/bone.qci"
$include "qc/hbox.qci"
$include "qc/attachments.qci"
$include "qc/collision.qci"
$include "qc/lod.qci"

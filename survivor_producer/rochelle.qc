//-----------------------------------------------------------------------------------------------
//                            	  VANILLA ROCHELLE MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_producer.mdl"

$scale .888

$model "Producer" "mdl/producer_model_merged.dmx" {
	eyeball righteye "ValveBiped.Bip01_Head1" -1.26 -1.49 60.23   "producer_eyeball_r" 1.05  3 	"brown_pupil" 0.53
	eyeball lefteye  "ValveBiped.Bip01_Head1" 	1.26 -1.49 60.23   "producer_eyeball_l" 1.05 -3  "brown_pupil" 0.53

	dmxeyelid upper "mdl/producer_model_merged.dmx" lowerer F01 -0.2400960693 neutral F00  0.1513984375 raiser F02  0.3181220093 righteyeball righteye lefteyeball lefteye
	dmxeyelid lower "mdl/producer_model_merged.dmx" lowerer F03 -0.2798918457 neutral F00 -0.1633499756 raiser F04 -0.106921814  righteyeball righteye lefteyeball lefteye

	$include qc/face.qci
}

$eyeposition 0 0 70
$maxeyedeflection 30
$forcephonemecrossfade

$surfaceprop "flesh"
$contents "solid"
$ambientboost
$mostlyopaque

//-----------------------------------------------------------------------------------------------
//                            			MATERIALS
//-----------------------------------------------------------------------------------------------

$cdmaterials "models\survivors\producer\"


$texturegroup "skinfamilies"
{
	{ "producer_head"    "producer_body"    }
	{ "producer_head_it" "producer_body_it" }
}

//-----------------------------------------------------------------------------------------------
//                            			ANIMATIONS
//-----------------------------------------------------------------------------------------------

$poseparameter "body_pitch" -90 90 loop 360
$poseparameter "body_yaw" -90 90 loop 360
$poseparameter "head_pitch" -90 90 loop 360
$poseparameter "head_yaw" -90 90 loop 360

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0
$ikchain "ikclip" "ValveBiped.weapon_bone_Clip" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$include qc/anims_rochelle.qci

//Only necessary when custom survivor's proportions are wildly different from vanilla skeleton. You might want to use $unlockdefinebones in tandem.
//Frame 0 must be your custom survivor's proportions, Frame 1 must be the vanilla survivor's proportions. LOCATION KEYFRAMES ONLY! NO SCALE, NO ROTATION.

//$sequence proportions mdl/anims/proportions.dmx autoplay loop realtime snap delta subtract proportions 1 numframes 1 noautoik hidden

//-----------------------------------------------------------------------------------------------
//                            			QC INCLUDES
//-----------------------------------------------------------------------------------------------

$proceduralbones "qc/procedurals.vrd"

$include "qc/hbox.qci"
$include "qc/attachments.qci"
$include "qc/jiggle.qci"
$include "qc/lod.qci"
$include "qc/bone.qci"

//-----------------------------------------------------------------------------------------------
//                            		VANILLA ZOEY MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_TeenAngst.mdl"

//$scale 1

$model "TeenAngst" "mdl/zoey_reference_wrinkle.dmx" {
	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.110000 -3.499979 62.600012 "teenangst_eyeball_r" 1 5 "iris_unused" 0.6
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.110000 -3.499979 62.600012 "teenangst_eyeball_l" 1 -5 "iris_unused" 0.6

	dmxeyelid upper mdl/zoey_reference_wrinkle.dmx lowerer F01 -0.22 neutral F00  0.05 raiser F02  0.29 righteyeball eye_right lefteyeball eye_left
	dmxeyelid lower mdl/zoey_reference_wrinkle.dmx lowerer F03 -0.43 neutral F00 -0.27 raiser F04 -0.16 righteyeball eye_right lefteyeball eye_left

	$include qc/face.qci
}

$eyeposition 0 0 60
$maxeyedeflection 30
$forcephonemecrossfade

$surfaceprop "flesh"
$contents "solid"
$ambientboost
$mostlyopaque

//-----------------------------------------------------------------------------------------------
//                            			MATERIALS
//-----------------------------------------------------------------------------------------------

$cdmaterials "models\survivors\TeenAngst\"
$cdmaterials "models\survivors\"

$texturegroup "skinfamilies"
{
	{ "zoey_head"    "zoey_color"    }
	{ "zoey_head_it" "zoey_color_it" }
}

//-----------------------------------------------------------------------------------------------
//                            			ANIMATIONS
//-----------------------------------------------------------------------------------------------

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$include "qc/anims_zoey.qci"

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

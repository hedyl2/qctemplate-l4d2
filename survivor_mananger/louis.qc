//-----------------------------------------------------------------------------------------------
//                            		VANILLA LOUIS MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_Manager.mdl"

$scale 1.05

$model "Manager" "mdl/manager_reference_wrinkle.dmx" {
	eyeball eye_right "ValveBiped.Bip01_Head1" -1.18  -2.75  71.245 "Biker_Manager_eyeball_r"  .6   3 "brown_pupil" 0.55
	eyeball eye_left "ValveBiped.Bip01_Head1" 1.19   -2.75  71.245 "Biker_Manager_eyeball_l"  .6  -3 "brown_pupil"  0.55

	dmxeyelid upper mdl/manager_reference_wrinkle.dmx lowerer F01 -0.16 neutral F00  0.19 raiser F02   0.3 righteyeball eye_right lefteyeball eye_left
	dmxeyelid lower mdl/manager_reference_wrinkle.dmx lowerer F03 -0.24 neutral F00 -0.16 raiser F04 -0.03 righteyeball eye_right lefteyeball eye_left

	$include qc/face.qci
}

$eyeposition 0 0 71
$maxeyedeflection 30
$forcephonemecrossfade

$surfaceprop "flesh"
$contents "solid"
$ambientboost
$mostlyopaque

//-----------------------------------------------------------------------------------------------
//                            			MATERIALS
//-----------------------------------------------------------------------------------------------

$cdmaterials "models\survivors\Manager\"
$cdmaterials "models\survivors\"

$texturegroup "skinfamilies"
{
	{ "louis_head"    "louis_color"    }
	{ "louis_head_it" "louis_color_it" }
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

$include "qc/anims_louis.qci"

//Only necessary when custom survivor's proportions are wildly different from vanilla skeleton. You might want to use $unlockdefinebones in tandem.
//Frame 0 must be your custom survivor's proportions, Frame 1 must be the vanilla survivor's proportions. LOCATION KEYFRAMES ONLY NO SCALE NO ROTATION.

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
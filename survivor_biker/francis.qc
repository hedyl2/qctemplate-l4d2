//-----------------------------------------------------------------------------------------------
//                            		VANILLA FRANCIS MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_Biker.mdl"

$scale 1.05

$model "Francis" "mdl/biker_reference_wrinkle.dmx" {
	eyeball righteye "ValveBiped.Bip01_Head1" -1.25 -2.61 71.83  "Biker_Manager_eyeball_r" 1.05  4 "" 0.55
	eyeball lefteye "ValveBiped.Bip01_Head1"   1.25 -2.60 71.83  "Biker_Manager_eyeball_l" 1.05 -4 "" 0.55

	dmxeyelid upper "mdl/biker_reference_wrinkle.dmx" lowerer F01 -0.20 neutral F00  0.05 raiser F02  0.31 righteyeball righteye lefteyeball lefteye
	dmxeyelid lower "mdl/biker_reference_wrinkle.dmx" lowerer F03 -0.34 neutral F00 -0.20 raiser F04 -0.04 righteyeball righteye lefteyeball lefteye

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

$cdmaterials "models\survivors\biker\"
$cdmaterials "models\survivors\"

$texturegroup "skinfamilies"
{
	{ "francis_head"    "francis_color"   	}
	{ "francis_head_it" "francis_color_it"	}
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

$include "qc/anims_francis.qci"

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

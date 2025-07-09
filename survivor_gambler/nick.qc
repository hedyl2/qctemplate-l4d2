//-----------------------------------------------------------------------------------------------
//                            		VANILLA NICK MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_gambler.mdl"

$pushd mdl

$scale 1.00

$model		"Gambler"		"gambler_model_merged.dmx" {
	eyeball		righteye	"ValveBiped.Bip01_Head1"	-1.15 -4.14 67.99		"gambler_eyeball_r"		1.00  4 "" 0.525
	eyeball		lefteye		"ValveBiped.Bip01_Head1"	 1.15 -4.14 67.99		"gambler_eyeball_l"		1.00 -4 "" 0.525
	
	dmxeyelid upper "gambler_model_merged.dmx" lowerer F01 -0.23 neutral F00  0.12 raiser F02  0.30 righteyeball righteye lefteyeball lefteye
	dmxeyelid lower "gambler_model_merged.dmx" lowerer F03 -0.34 neutral F00 -0.19 raiser F04 -0.05 righteyeball righteye lefteyeball lefteye

	$include qc/face.qci
}

$eyeposition 0 0 70
$maxeyedeflection 30
$forcephonemecrossfade
//$unlockdefinebones

//-----------------------------------------------------------------------------------------------
//                            			MATERIALS
//-----------------------------------------------------------------------------------------------

$cdmaterials "models\survivors\producer\"
$cdmaterials "models\survivors\gambler\"

$texturegroup "skin"
{
	{		"gambler_head"			"gambler_body"			"producer_body"			}
	{		"gambler_head_it"		"gambler_body_it"		"producer_body_it"		}
}

$surfaceprop "flesh"
$contents "solid"
$ambientboost
$mostlyopaque

//-----------------------------------------------------------------------------------------------
//                            			ANIMATIONS
//-----------------------------------------------------------------------------------------------

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

	$include		"qc/anims_nick.qci"

//$sequence proportions anims/proportions.dmx autoplay loop realtime snap delta subtract proportions 1 numframes 1 noautoik hidden

//-----------------------------------------------------------------------------------------------
//                            			QC INCLUDES
//-----------------------------------------------------------------------------------------------

$proceduralbones "qc/procedurals.vrd"

	$include 		"qc/hbox.qci"
	$include		"qc/attachments.qci"
	$include		"qc/jiggle.qci"
	$include		"qc/lod.qci"
	$include		"qc/bone_nick.qci"

$popd

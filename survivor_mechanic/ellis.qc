//-----------------------------------------------------------------------------------------------
//                            		VANILLA ELLIS MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_mechanic.mdl"

$pushd mdl

$scale 0.955

$model		"Mechanic"		"mechanic_model_merged.dmx" {
	eyeball		righteye	"ValveBiped.Bip01_Head1"		-1.152 -2.56 64.6	"mechanic_eyeball_r" 1.00  4 "" 0.50
	eyeball		lefteye		"ValveBiped.Bip01_Head1"		 1.152 -2.56 64.6	"mechanic_eyeball_l" 1.00 -4 "" 0.50

	dmxeyelid upper "mechanic_model_merged.dmx" lowerer F01 -0.10 neutral F00  0.15 raiser F02  0.28 righteyeball righteye lefteyeball lefteye
	dmxeyelid lower "mechanic_model_merged.dmx" lowerer F03 -0.21 neutral F00 -0.11 raiser F04 -0.02 righteyeball righteye lefteyeball lefteye

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
$cdmaterials "models\survivors\mechanic\"

$texturegroup "skin"
{
	{		"mechanic_head_color"		"mechanic_body_color"		"producer_body"			}
	{		"mechanic_head_it"			"mechanic_color_it"			"producer_body_it"		}
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

	$include		"qc/anims_ellis.qci"

//$sequence proportions anims/proportions.dmx autoplay loop realtime snap delta subtract proportions 1 numframes 1 noautoik hidden

//-----------------------------------------------------------------------------------------------
//                            			QC INCLUDES
//-----------------------------------------------------------------------------------------------

$proceduralbones "qc/procedurals.vrd"

	$include		"qc/hbox.qci"
	$include		"qc/attachments.qci"
	$include		"qc/jiggle.qci"
	$include		"qc/lod.qci"
	$include		"qc/bone_ellis.qci"

$popd

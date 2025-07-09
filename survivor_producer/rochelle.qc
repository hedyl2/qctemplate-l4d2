//-----------------------------------------------------------------------------------------------
//                            	  VANILLA ROCHELLE MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_producer.mdl"

$pushd mdl

$scale .888

$model		"Producer"		"producer_model_merged.dmx" {
	eyeball		righteye	"ValveBiped.Bip01_Head1"	-1.26 -1.49 60.23   "producer_eyeball_r"	1.05  3 ""	0.53
	eyeball		lefteye		"ValveBiped.Bip01_Head1"	 1.26 -1.49 60.23   "producer_eyeball_l"	1.05 -3	""	0.53

	dmxeyelid upper "producer_model_merged.dmx" lowerer F01 -0.2400960693 neutral F00  0.1513984375 raiser F02  0.3181220093 righteyeball righteye lefteyeball lefteye
	dmxeyelid lower "producer_model_merged.dmx" lowerer F03 -0.2798918457 neutral F00 -0.1633499756 raiser F04 -0.106921814  righteyeball righteye lefteyeball lefteye

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
$cdmaterials "models\survivors\"

$texturegroup "skin"
{
	{		"producer_head"		"producer_body"			}
	{		"producer_head_it"	"producer_body_it"		}
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

	$include		"qc/anims_rochelle.qci"

//$sequence proportions mdl/anims/proportions.dmx autoplay loop realtime snap delta subtract proportions 1 numframes 1 noautoik hidden

//-----------------------------------------------------------------------------------------------
//                            			QC INCLUDES
//-----------------------------------------------------------------------------------------------

$proceduralbones "qc/procedurals.vrd"

	$include		"qc/hbox.qci"
	$include		"qc/attachments.qci"
	$include		"qc/jiggle.qci"
	$include		"qc/lod.qci"
	$include		"qc/bone_rochelle.qci"

$popd 

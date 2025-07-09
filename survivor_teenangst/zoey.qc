//-----------------------------------------------------------------------------------------------
//                            		VANILLA ZOEY MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_TeenAngst.mdl"

$pushd mdl

$scale 1.00

$model		"TeenAngst"		"zoey_reference_wrinkle.dmx" {
	eyeball		righteye	"ValveBiped.Bip01_Head1"	-1.110000 -3.499979 62.600012	"teenangst_eyeball_r"	1  5 "" 0.6
	eyeball		lefteye		"ValveBiped.Bip01_Head1"	 1.110000 -3.499979 62.600012	"teenangst_eyeball_l"	1 -5 "" 0.6

	dmxeyelid upper "zoey_reference_wrinkle.dmx" lowerer F01 -0.22 neutral F00  0.05 raiser F02  0.29 righteyeball righteye lefteyeball lefteye
	dmxeyelid lower "zoey_reference_wrinkle.dmx" lowerer F03 -0.43 neutral F00 -0.27 raiser F04 -0.16 righteyeball righteye lefteyeball lefteye

	$include qc/face.qci
}

$eyeposition 0 0 60
$maxeyedeflection 30
$forcephonemecrossfade
//$unlockdefinebones

//-----------------------------------------------------------------------------------------------
//                            			MATERIALS
//-----------------------------------------------------------------------------------------------

$cdmaterials "models\survivors\teenangst\"
$cdmaterials "models\survivors\"

$texturegroup "skin"
{
	{		"zoey_head"			"zoey_color"		}
	{		"zoey_head_it"		"zoey_color_it"		}
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

	$include		"qc/anims_zoey.qci"

//$sequence proportions anims/proportions.dmx autoplay loop realtime snap delta subtract proportions 1 numframes 1 noautoik hidden

//-----------------------------------------------------------------------------------------------
//                            			QC INCLUDES
//-----------------------------------------------------------------------------------------------

$proceduralbones "qc/procedurals.vrd"

	$include		"qc/hbox.qci"
	$include		"qc/attachments.qci"
	$include		"qc/jiggle.qci"
	$include		"qc/lod.qci"
	$include		"qc/bone_zoey.qci"

$popd

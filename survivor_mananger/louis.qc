//-----------------------------------------------------------------------------------------------
//                            		VANILLA LOUIS MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_Manager.mdl"

$pushd mdl

$scale 1.05

$model		"Manager"		"manager_reference_wrinkle.dmx" {
	eyeball		righteye	"ValveBiped.Bip01_Head1"	-1.18  -2.75  71.245	"Biker_Manager_eyeball_r"  .6  3 "" 0.55
	eyeball		lefteye		"ValveBiped.Bip01_Head1"	 1.19  -2.75  71.245	"Biker_Manager_eyeball_l"  .6 -3 "" 0.55

	dmxeyelid upper "manager_reference_wrinkle.dmx" lowerer F01 -0.16 neutral F00  0.19 raiser F02   0.3 righteyeball righteye lefteyeball lefteye
	dmxeyelid lower "manager_reference_wrinkle.dmx" lowerer F03 -0.24 neutral F00 -0.16 raiser F04 -0.03 righteyeball righteye lefteyeball lefteye

	$include qc/face.qci
}

$eyeposition 0 0 71
$maxeyedeflection 30
$forcephonemecrossfade
//$unlockdefinebones

//-----------------------------------------------------------------------------------------------
//                            			MATERIALS
//-----------------------------------------------------------------------------------------------

$cdmaterials "models\survivors\manager\"
$cdmaterials "models\survivors\"

$texturegroup "skin"
{
	{		"louis_head"		"louis_color"		}
	{		"louis_head_it"		"louis_color_it"	}
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

	$include		"qc/anims_louis.qci"

//$sequence proportions anims/proportions.dmx autoplay loop realtime snap delta subtract proportions 1 numframes 1 noautoik hidden

//-----------------------------------------------------------------------------------------------
//                            			QC INCLUDES
//-----------------------------------------------------------------------------------------------

$proceduralbones "qc/procedurals.vrd"

	$include		"qc/hbox.qci"
	$include		"qc/attachments.qci"
	$include		"qc/jiggle.qci"
	$include		"qc/lod.qci"
	$include		"qc/bone_louis.qci"
	
$popd

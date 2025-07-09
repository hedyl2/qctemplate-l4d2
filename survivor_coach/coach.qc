//-----------------------------------------------------------------------------------------------
//                            		VANILLA COACH MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_coach.mdl"

$pushd mdl

$scale 1.05

$model		"Coach"			"coach_model_merged.dmx" {
	eyeball		righteye	"ValveBiped.Bip01_Head1"	-1.209033 -2.6573925 70.720566	"coach_eyeball_r" 1.05  4 "" 0.55
	eyeball		lefteye		"ValveBiped.Bip01_Head1"	 1.209033 -2.6573925 70.720566	"coach_eyeball_l" 1.05 -4 "" 0.55

	dmxeyelid upper "coach_model_merged.dmx" lowerer F01 -0.17 neutral F00  0.11 raiser F02  0.26 righteyeball righteye lefteyeball lefteye
	dmxeyelid lower "coach_model_merged.dmx" lowerer F03 -0.21 neutral F00 -0.16 raiser F04 -0.10 righteyeball righteye lefteyeball lefteye

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
$cdmaterials "models\survivors\coach\"

$texturegroup "skin"
{
	{	"coach_head"		"coach_body"		"producer_body" 	}
	{	"coach_head_it"		"coach_body_it"		"producer_body_it"	}
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

	$include		"qc/anims_coach.qci"

//$sequence proportions anims/proportions.dmx autoplay loop realtime snap delta subtract proportions 1 numframes 1 noautoik hidden

//-----------------------------------------------------------------------------------------------
//                            			QC INCLUDES
//-----------------------------------------------------------------------------------------------

$proceduralbones "qc/procedurals.vrd"

	$include		"qc/hbox.qci"
	$include		"qc/attachments.qci"
	$include		"qc/jiggle.qci"
	$include		"qc/lod.qci"
	$include		"qc/bone_coach.qci"

$popd

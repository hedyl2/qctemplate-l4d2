//-----------------------------------------------------------------------------------------------
//                            		VANILLA BILL MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_NamVet.mdl"

//$scale 1

$model "NamVet" "mdl/namvet_reference_wrinkle.dmx" {
	eyeball righteye "ValveBiped.Bip01_Head1" -1.220000 -2.740003 67.800001 "eyeball_r" 1.00 4 "pupil_r" 0.525
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.220000 -2.740003 67.800001 "eyeball_l" 1.00 -4 "pupil_l" 0.525

	dmxeyelid upper "mdl/namvet_reference_wrinkle.dmx" lowerer F01 -0.23 neutral F00  0.11 raiser F02  0.28 righteyeball righteye lefteyeball lefteye
	dmxeyelid lower "mdl/namvet_reference_wrinkle.dmx" lowerer F03 -0.33 neutral F00 -0.22 raiser F04 -0.08 righteyeball righteye lefteyeball lefteye

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

$cdmaterials "models\survivors\NamVet\"
$cdmaterials "models\survivors\"

$texturegroup "skinfamilies"
{
	{ "bill_head"    "bill_color"    }
	{ "bill_head_it" "bill_color_it" }
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

$include "qc/anims_bill.qci"

//Only necessary when custom survivor's proportions are wildly different from vanilla skeleton. You might want to use $unlockdefinebones in tandem.
//Frame 0 must be your custom survivor's proportions, Frame 1 must be the vanilla survivor's proportions. LOCATION KEYFRAMES ONLY NO SCALE NO ROTATION.

//$sequence proportions mdl/anims/proportions.dmx autoplay loop realtime snap delta subtract proportions 1 numframes 1 noautoik hidden

//-----------------------------------------------------------------------------------------------
//                            			QC INCLUDES
//-----------------------------------------------------------------------------------------------

$proceduralbones "qc/procedurals.vrd"

$include "qc/hbox.qci"
$include "qc/collision.qci"
$include "qc/attachments.qci"
//$include "qc/jiggle.qci"
$include "qc/lod.qci"
$include "qc/bone.qci"

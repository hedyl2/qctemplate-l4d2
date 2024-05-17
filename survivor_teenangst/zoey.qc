//-----------------------------------------------------------------------------------------------
//                            			 MODEL
//-----------------------------------------------------------------------------------------------

$modelname "survivors/survivor_TeenAngst.mdl"

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

//-----------------------------------------------------------------------------------------------
//                            			MATERIALS
//-----------------------------------------------------------------------------------------------

$surfaceprop "flesh"
$ambientboost
$mostlyopaque
$contents "solid"

$cdmaterials "models\survivors\TeenAngst\"

$texturegroup "skinfamilies"
{
	{ "zoey_head"    "zoey_color"    }
	{ "zoey_head_it" "zoey_color_it" }
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

$include "qc/anims_zoey.qci"

//-----------------------------------------------------------------------------------------------
//                            			QC INCLUDES
//-----------------------------------------------------------------------------------------------

$include "qc/hbox.qci"
$include "qc/collision.qci"
$include "qc/attachments.qci"
$include "qc/jiggle.qci"
$include "qc/lod.qci"
$include "qc/bone.qci"

$proceduralbones "qc/procedurals.vrd"
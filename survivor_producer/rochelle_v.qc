$modelname		weapons/arms/v_arms_producer_new.mdl
//$modelname	weapons/arms/v_arms_zoey.mdl

$cdmaterials "models/survivors/producer/"

$include	qc/bone_fps.qci

$body		arms	"mdl/v_arms_producer_new.dmx"
$sequence	idle	"mdl/v_arms_producer_new.dmx"

$jigglebone "ValveBiped.Bip01_Braclet"
{
	is_flexible
	{
		length 50
		tip_mass -500
		pitch_stiffness 0
		pitch_damping 5
		yaw_stiffness 0
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -15 19
		pitch_friction 5
		pitch_bounce 0
		yaw_constraint 0 0
		yaw_friction 0
		yaw_bounce 0
	}
}
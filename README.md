A set of qc files to aid in the creation of Left 4 Dead 2 character replacers. Designed to be easy to read and have and drop-in functionality. Compiled result is not 100% authentic to what's seen in Left 4 Dead 2, but it is very close.
Biggest differences are in LOD meshes and eyelid parameters. This was made because the starter kit found in the developer tools contain gross inaccuracies or errors, and because simply decompiling a model will make it difficult to parse and
in some instances, leads to other problems such as broken face flexes or weapon attachments. This is a hybrid of the starter_kit and the results of a decompile. Of course, with some human intervention to make it easier to read, courtesy of HedyL

Some Tips

20,000 | If your model exceeds this vertex count, you will need to split it up into multiple parts

55,000 | If your model exceeds this vertex count, decals applied to the model may crash your game and the $nodecal "1" parameter will be required. LOD meshes also contribute to this vertex count, so they should be removed.

75,000 | If your model exceeds this vertex count, your model may compile with errors, or perhaps fail to compile at all


The most important bones to line up are the index finger and the thumb. The middle, ring, and pinky fingers can be slightly off and still align with gun animations fine.

VGUI paths for Icons are like this; 

l4d2 characters

	vgui/s_panel_INTNAME
	vgui/s_panel_INTNAME_incap
	vgui/s_panel_lobby_INTNAME

l4d1 characters

	vgui/s_panel_INTNAME
	vgui/s_panel_INTNAME_incap
	vgui/select_GAMENAME

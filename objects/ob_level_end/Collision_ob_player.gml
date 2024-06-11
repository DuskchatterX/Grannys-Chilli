//Move to next room
with (ob_player)
{
	if (hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}
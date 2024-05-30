// SlideTransition(mode,targetroom (Rika))
// Mode sets the transition mode between next, restart, and goto


with (ob_transition)
{
	mode = argument[0];
	if (argument_count > 1) target = argument [1];
}
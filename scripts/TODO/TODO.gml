/* ______          ____            __     _        __ 
  /_  __/____     / __ \ ____     / /    (_)_____ / /_
   / /  / __ \   / / / // __ \   / /    / // ___// __/
  / /  / /_/ /  / /_/ // /_/ /  / /___ / /(__  )/ /_  
 /_/   \____/  /_____/ \____/  /_____//_//____/ \__/ 
-------------------------------------------------------
*/
//ALSO ANY INLINE COMMENTS THAT NEED TO BE FIXED LATER START WITH [TODO - ] - so that they can be searched later
#region //Immediate To Do's
/*
Have the inventory transfer to the correct characters when they are in the arena stage
make a full turn cycle that will go back and forth. 
Maybe make an animation when the enemy attacks, but nothing happens yet.
Then lets start looking at inventory onboarding for each character and the enemy.
	Thought on enemy, is when its spawned in on room creation (which it always should be) 
	then declare what monster it is, which just calls a script that auto gives it all its needed
	stats like what AI deck value, and what its movespeed and shit is.


DO COMBAT
that might consist of creating some stats to handle a characters inventory and then handle their weapon and range
this might involve changing how the combatCheck script works to do more than just neighbors based on the range
this could be replicatable from the movement range script
Don't go crazy with this, just add somehting thats like, range 1 first, so that it only has to do
the immediate check, HELL it could honestly call a different script if its more than range 1 tbh
*/
#endregion

#region //Efficiency Ideas
/*


LETS USE A WHOLE FUCKTON OF CSV FILES
make sure to track things soley on the ID of the thing, so if the startinv weapon is wepaonID = 1
then that is the only piece of information that the user holds, everything that needs to,
will go look that up in the 2Dgrid that is made from the csv and pull the rest of the pertinent information
if there is a special ability, likely it will be a ID, this ID will be the location in an array, and then in that array, you can grab the name
of the script of the ability to call.





*/
#endregion

//DON'T FORGET TO SAVE A BUNCH ;)
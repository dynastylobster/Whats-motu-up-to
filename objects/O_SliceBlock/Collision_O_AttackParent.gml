/// @description Insert description here
// You can write your code in this editor
if other.done_attacking = false {
if O_Player.downslicing {
		O_Player.xspeed = O_Player.facing * O_AttackParent.downslice_yeet;
		O_Player.yspeed = - (O_AttackParent.downslice_yeet*2)
		O_Player.boost = true;
}
BreakSliceBlock();
}
//other.done_slicing = true;
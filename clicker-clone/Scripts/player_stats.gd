extends Node

var coins := 0
var dps := 0
var stage := 1
var enemies_this_stage := 0

func _process(delta):
	if enemies_this_stage >= 10:
		stage += 1
		enemies_this_stage = 0

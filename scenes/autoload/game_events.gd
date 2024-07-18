extends Node

var gameStatus = GAME_STATUS.SELECT_MODE
var stageStatus = STAGE_STATUS.NONE
var roundCounter = "0"


func _process(_delta):
	if gameStatus == GAME_STATUS.SELECT_MODE:
		reset()
		

func start_game():
	gameStatus = GAME_STATUS.RACE_START
	
	
func is_race_running():
	if gameStatus == GAME_STATUS.RACE_RUNNING:
		return true
	else:
		return false


func increase_round():
	match roundCounter:
		"0":
			roundCounter = "1"
			return
		"1":
			roundCounter = "2"
			return
		"2":
			roundCounter = "3"
			return
		"3":
			roundCounter = "4"
			stageStatus = STAGE_STATUS.STAGE_ONE_COMPLETE
			return
		"4":
			roundCounter = "5"
			return
		"5":
			gameStatus = GAME_STATUS.SELECT_MODE
			return
	

func reset():
	roundCounter = "0"

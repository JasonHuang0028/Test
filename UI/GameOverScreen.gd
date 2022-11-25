extends CanvasLayer

var stats = PlayerStats

onready var title = $PanelContainer/MarginContainer/Rows/Title

func set_title(win : bool):
	if !win:
		title.text = "YOU LOSE"
		title.modulate = Color.green
	#else:
		#title.text = "YOU LOSE"
		#title.modulate = Color.red

func _on_RestartButton_pressed():
	stats.health = stats.max_health
	get_tree().paused = false
	get_tree().change_scene("res://World.tscn")
	

func _on_QuitButton_pressed():
	get_tree().quit()

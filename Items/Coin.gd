extends Node2D

var taken : bool = false

func _on_Area2D_body_entered(body):
	if not taken:
		taken = true
		$AnimationPlayer.play("Die")
		$AudioStreamPlayer2D.play()
		get_tree().call_group("GameState", "coin_up")

func die():
	queue_free()
	
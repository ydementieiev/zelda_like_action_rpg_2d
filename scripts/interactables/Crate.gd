extends StaticBody2D


func _on_hitbox_area_entered(area):
    if area.name == "Sword":
        $AnimationPlayer.play("Destroyed")
        await $AnimationPlayer.animation_finished
        queue_free()

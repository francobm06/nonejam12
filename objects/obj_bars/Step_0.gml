switch(estado){
	case "fechando":
		alpha = lerp(alpha,1,velocidade1);
		
		if(alpha == 1){
			estado = "abrindo";	
			room_goto(room_destino);
		}
		
	break;
	
	case "abrindo":
		alpha = lerp(alpha,0,velocidade2);
		
		if(alpha <= 0.05){
			instance_destroy();
			//global.dialogue = false;
		}
	break;
}
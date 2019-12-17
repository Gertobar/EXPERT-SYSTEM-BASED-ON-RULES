(defglobal ?*suma* = 0)
(defglobal ?*resp* = 0)
(defrule pregunta1
	(preguntas 	(pr1 ?p1)
			(pr2 ?p2)
			(pr3 ?p3)
			(pr4 ?p4)
			(pr5 ?p5)
			(pr6 ?p6)
			(pr7 ?p7)
			(pr8 ?p8)
			(pr9 ?p9)
			(pr10 ?p10)
			(pr11 ?p11)
			(pr12 ?p12)
			(pr13 ?p13)
			(pr14 ?p14)
			(pr15 ?p15)
			(pr16 ?p16)
			(pr17 ?p17)
			(pr18 ?p18)
			(pr19 ?p19)
			(pr20 ?p20)
			(pr21 ?p21))
	
	(persona	(nombre ?nom) (apellidos ?ape) (edad ?eda) (genero ?gen))

=>
	(bind ?*suma*(+ ?p1 ?*suma*))
	(bind ?*suma*(+ ?p2 ?*suma*))
	(bind ?*suma*(+ ?p3 ?*suma*))
	(bind ?*suma*(+ ?p4 ?*suma*))
	(bind ?*suma*(+ ?p5 ?*suma*))
	(bind ?*suma*(+ ?p6 ?*suma*))
	(bind ?*suma*(+ ?p7 ?*suma*))
	(bind ?*suma*(+ ?p8 ?*suma*))
	(bind ?*suma*(+ ?p9 ?*suma*))
	(bind ?*suma*(+ ?p10 ?*suma*))
	(bind ?*suma*(+ ?p11 ?*suma*))
	(bind ?*suma*(+ ?p12 ?*suma*))
	(bind ?*suma*(+ ?p13 ?*suma*))
	(bind ?*suma*(+ ?p14 ?*suma*))
	(bind ?*suma*(+ ?p15 ?*suma*))
	(bind ?*suma*(+ ?p16 ?*suma*))
	(bind ?*suma*(+ ?p17 ?*suma*))
	(bind ?*suma*(+ ?p18 ?*suma*))
	(bind ?*suma*(+ ?p19 ?*suma*))
	(bind ?*suma*(+ ?p20 ?*suma*))
	(bind ?*suma*(+ ?p21 ?*suma*))

	(if (and(>= ?*suma* 0)(<= ?*suma* 9))
				then
				(printout t "Nombres: "?nom " "?ape" edad: "?eda" genero: "?gen crlf)
				(printout t "Significa que eres una persona con un nivel de autoestima y autocontrol
				apropiado. No te irritas fácilmente, no muestras ser demasiado
				dominante, ni ambiciosa ni competitiva, lo que no quiere decir que en
				algunos momentos de tu vida te muestres una persona un tanto nerviosa
				en determinadas situaciones. Por lo general, dejas que las cosas sigan su
				cauce y te tomas la vida con tranquilidad, lo que te hace ser menos
				vulnerable a sufrir un trastorno de ansiedad o depresión." crlf)

				(open "datos.txt" data "a")
				(printout data "Nombres: "?nom " "?ape" edad: "?eda" genero: "?gen crlf)
				(printout data "Nuestra recomencacion es:" crlf)
				(printout data "Significa que eres una persona con un nivel de autoestima y autocontrol
				apropiado. No te irritas fácilmente, no muestras ser demasiado
				dominante, ni ambiciosa ni competitiva, lo que no quiere decir que en
				algunos momentos de tu vida te muestres una persona un tanto nerviosa
				en determinadas situaciones. Por lo general, dejas que las cosas sigan su
				cauce y te tomas la vida con tranquilidad, lo que te hace ser menos
				vulnerable a sufrir un trastorno de ansiedad o depresión." crlf)
				(close data)


	)
	(if (and (> ?*suma* 9) (< ?*suma* 14))
				then
				(printout t "Nombres: "?nom " "?ape" edad: "?eda" genero: "?gen crlf)
				(printout t "Te encuentras dentro de los parámetros normales, tienes una personalidad
							equilibrada. Eres una persona activa, lo suficiente para ser productivo y
							fructífero en tus relaciones, tanto laboral, social o personal, y que sabes
							mantener la calma en situaciones que así lo exigen, aunque algunas veces
							te sientas algo ansioso o nervioso." crlf)
				(open "datos.txt" data "a")
				(printout data "Nombres: "?nom " "?ape" edad: "?eda" genero: "?gen crlf)
				(printout data "Nuestra recomencacion es:" crlf)
				(printout data "Te encuentras dentro de los parámetros normales, tienes una personalidad
				equilibrada. Eres una persona activa, lo suficiente para ser productivo y
				fructífero en tus relaciones, tanto laboral, social o personal, y que sabes
				mantener la calma en situaciones que así lo exigen, aunque algunas veces
				te sientas algo ansioso o nervioso." crlf)
				(close data)

	)
		
	(if (> ?*suma* 13)
				then
				(printout t "Nombres: "?nom " "?ape" edad: "?eda" genero: "?gen crlf)
				(printout t "Tu puntuación corresponde a la de las personas que experimentan una
							constante preocupación por lo general y que son intolerables al descanso y
							sobre todo a la inactividad. Sientes una enorme necesidad por ocupar
							todo tu tiempo, fruto de tu incapacidad de afrontar algunos problemas.
							Eres una persona dominante con una fuerte tendencia a competir lo que te
							lleva a un constante estado de alerta y lucha. Tienes una gran
							probabilidad de sufrir alguna enfermedad coronaria y algún trastorno de
							ansiedad o depresión. En esta página encontrarás técnicas y ejercicios que
							te ayudarán a relajarte." crlf)
				(open "datos.txt" data "a")
				(printout data "Nombres: "?nom " "?ape" edad: "?eda" genero: "?gen crlf)
				(printout data "Nuestra recomencacion es:" crlf)
				(printout data "Tu puntuación corresponde a la de las personas que experimentan una
				constante preocupación por lo general y que son intolerables al descanso y
				sobre todo a la inactividad. Sientes una enorme necesidad por ocupar
				todo tu tiempo, fruto de tu incapacidad de afrontar algunos problemas.
				Eres una persona dominante con una fuerte tendencia a competir lo que te
				lleva a un constante estado de alerta y lucha. Tienes una gran
				probabilidad de sufrir alguna enfermedad coronaria y algún trastorno de
				ansiedad o depresión. En esta página encontrarás técnicas y ejercicios que
				te ayudarán a relajarte." crlf)
				(close data)

	)
	

)
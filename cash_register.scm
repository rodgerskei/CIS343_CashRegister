;Cash Register code that takes user input until exit token is detected
;Author: Keith Rodgers & Alex Duncanson

(define (register userInput subtotal)
	(cond
		((eq? userInput 0) 
			(display "--------------")(newline)
			(display "Subtotal: $")(display subtotal)(newline)
			(display "Tax: $")(display (* subtotal 0.065))(newline)
			(display "Total: $")(display (* subtotal 1.065))(newline)
		) 
		(else
			(display "Subtotal: $")(display subtotal)(newline)
			(display "Enter a value: ")
			(let ((val (read)))
				(register val (+ val subtotal))
		)
	)
)
)
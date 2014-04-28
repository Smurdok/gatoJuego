class Cat
	def imprimir (c)
		for elm in c
			puts "#{elm}\n"
		end
		puts "\n"
	end

	def insUser (c,fila,col)
		if (col < 3 and fila < 3 and col >= 0 and fila >= 0)
			c[fila][col] = "X"
			c = insPc(c,fila,col)
			return c
		end
		else return c
	end

	def insPc (c,fila,col)
		if (col == 0 and fila == 0)
			if (c[1][col] == "_")
				c[1][col] = "O"
				return c
			elsif (c[1][1] == "_")
				c[1][1] = "O"
				return c
			elsif (c[fila][1] == "_")
				c[fila][1] = "O"
				return c
			end											
			return c		
		else
			if (c[fila-1][col-1] == "_")
				c[fila-1][col-1] = "O"
				return c
			elsif (c[fila-1][col] == "_")
				c[fila-1][col] = "O"
				return c
			elsif (c[fila-1][col+1] == "_")
				c[fila-1][col+1] = "O"
				return c
			elsif (c[fila][col-1] == "_")				
				c[fila][col-1] = "O"
				return c
			elsif (c[fila][col+1] == "_")				
				c[fila][col+1] = "O"
				return c
			elsif (c[fila+1][col-1] == "_")				
				c[fila+1][col-1] = "O"
				return c
			elsif (c[fila+1][col] == "_")				
				c[fila+1][col] = "O"
				return c
			elsif (c[fila+1][col+1] == "_")				
				c[fila+1][col+1] = "O"
				return c
			end
		end
		return c
	end

	#def checar(col,fil) {
	#	if col >= 0 and fila >= 0 and col <= 2 and fila <= 2
	#		return 1
	#	end
	#	return 0
	#}

end

gato = [["_","_","_"],["_","O","_"],["_","_","_"]]
cat = Cat.new
puts "\n Comenzando \n"
cat.imprimir(gato)


i = 0
while  i < 4
	puts "¿Fila?" 
	fil = STDIN.gets
	fil.chop!
	fil = fil.to_i
	puts "¿Columna?" 
	co = STDIN.gets
	co.chop!
	co = co.to_i
	if (gato[fil][co] == "_")
		gato = cat.insUser(gato,fil,co)
		cat.imprimir(gato)
	else
		print "Error\n"
		i -= 1
	end
	i += 1
end


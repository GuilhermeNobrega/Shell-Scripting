# Definir as datas e horas
data1="2024-05-06 11:49:18"
data2="2024-05-06 14:30:43"

# Converter as datas para formato Epoch
epoch1=$(date -d "$data1" +%s)
epoch2=$(date -d "$data2" +%s)

# Calcular a diferença entre as datas (em segundos)
diff=$(( epoch2 - epoch1 ))

# Mostrar a diferença (em segundos)
echo "Diferença entre as datas (em segundos): $diff"

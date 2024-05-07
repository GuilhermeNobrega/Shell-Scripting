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


# Data e hora no formato ISO 8601
iso_date_time="2024-05-07T13:00:43Z"

# Converter a data e hora para o fuso horário local brasileiro
converted_date_time=$(date -d "$iso_date_time" +"%Y-%m-%d %H:%M:%S")

# Exibir a data e hora convertidas
echo "Data e hora convertidas para o fuso horário brasileiro: $converted_date_time"



date_iso="2024-05-06T14:30:43Z"

# Remover 'T' e 'Z' para formatar a data
date_formatted=$(echo "$date_iso" | sed 's/T/ /; s/Z//')

# Exibir a data formatada
echo $date_formatted

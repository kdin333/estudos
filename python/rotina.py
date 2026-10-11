from datetime import datetime, time

print(
    'Olá! Vamos revisar seu dia? Insira algumas informações para ' \
    'iniciar o programa:'
    )

nome = input('Qual o seu nome?: ')
print(f'Prazer em te conhecer {nome}! Agora me diga:')

horario_valido = False # flag
planejamento = None

while horario_valido is False: # preciso de uma condição que faça o código rodar enquanto for necessário
    hora = input('Que horas são? (hh:mm): ')

    try:
        saudacao = datetime.strptime(hora, '%H:%M').time()

        if saudacao >= time(0, 0) and saudacao <= time(11, 59):
            print(f'Você disse {hora}h.')
            print(f'Bom dia {nome}!')
            planejamento = 'Bom dia'

        elif saudacao >= time(12, 0) and saudacao <= time(17, 59):
            print(f'Você disse {hora}h.')
            print(f'Boa tarde {nome}!')
            planejamento = 'Boa tarde'

        elif saudacao >= time(18, 0) and saudacao <= time(23, 59):
            print(f'Você disse {hora}h.')
            print(f'Boa noite {nome}!')
            planejamento = 'Boa noite'

        else:
            print('error01')

        horario_valido = True
    
    except ValueError: # ValueError : deixa o que é diferente do escopo de try mais preciso
        print(f'Isso não são horas {nome}, digite uma hora ' \
            'no formato "hh:mm". Exemplo: 09:45'
            )
        horario_valido = False

if nome == 'Ricardo'and planejamento == 'Bom dia':
    print(
        '08:00: Dê remédio para Cristal' \
        '\n08:10h: Arrume seu quarto' \
        '\n08:30h: Faça café e ovos mexidos' \
        '\n08:50h: Lave a louça' \
        '\n09:20h: Lave o quintal' \
        '\n10:00h: Tempo livre'
        '\n11:00h: Trabalhar até 14:00h'
        )
    
elif nome == 'Ricardo' and planejamento == 'Boa tarde':
    print(
        '14:20: Chegue em casa e prepare o almoço' \
        '\n15:00: Comece a estudar programação' \
        '\n16:30: Vá para a academia e treine por uma hora' \
        '\n18:00: trabalhe até 00h'
    )

elif nome == 'Ricardo' and planejamento == 'Boa noite':
    print(
        '18:00: Trabalhe até 00h' \
        '\n00:10: Vá para casa dê o remédio da Cristal' \
        '\n00:15: Tome banho e se prepare para dormir' \
        '\n00:40: Descanse e durma. Amanhã é outro dia!'
    )

else: 
    print('error02')

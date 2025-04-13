# Usa imagem oficial do Python
FROM python:3.11

# Define diretório de trabalho
WORKDIR /app

# Copia arquivos do projeto
COPY . .

# Instala as dependências
RUN pip install -r requirements.txt

# Expõe a porta 80
EXPOSE 80

# Executa o app com uvicorn na porta 80
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

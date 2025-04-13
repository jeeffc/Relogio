from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"mensagem": "FastAPI rodando no Docker na porta 80!"}

from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy.orm import Session
from sqlalchemy import text

from .database import get_db

app = FastAPI(title="API Comedor OGBU")

@app.get("/")
def leer_raiz():
    return {"mensaje": "API del Comedor OGBU funcionando!"}

@app.get("/test-db")
def probar_conexion_db(db: Session = Depends(get_db)):
    try:
        db.execute(text("SELECT 1"))
        return {"status": "ok", "message": "Conexión a la base de datos exitosa."}
    except Exception as e:
        raise HTTPException(
            status_code=503,
            detail=f"Error al conectar con la base de datos: {e}"
        )
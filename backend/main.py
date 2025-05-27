from contextlib import asynccontextmanager
from fastapi import FastAPI
from backend.core.db import Base, engine
from backend.routes.test_route import router
from backend.models.test_model import TestModel

@asynccontextmanager
async def lifespan(app: FastAPI):
    app.state.db_engine = engine
    Base.metadata.create_all(bind=app.state.db_engine)
    yield

app = FastAPI(lifespan=lifespan)

app.include_router(router, prefix="/test", tags=["test"])
from backend.core.db import Base
from sqlalchemy import Column, Integer, String

class TestModel(Base):
    __tablename__ = "test_model"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, index=True)
    description = Column(String, index=True)

    def __repr__(self):
        return f"<TestModel(id={self.id}, name={self.name}, description={self.description})>"
    
#!/usr/bin/python3
<<<<<<< HEAD
"""This module defines a class User"""
from models.base_model import BaseModel, Base
from sqlalchemy import Column, Integer, String, ForeignKey
=======
"""Defines the User class."""
from models.base_model import Base
from models.base_model import BaseModel
from sqlalchemy import Column
from sqlalchemy import String
>>>>>>> 4c501d4f22acaa3fa758c7957ef0e0ec15597e8a
from sqlalchemy.orm import relationship


class User(BaseModel, Base):
<<<<<<< HEAD
    """This class defines a user by various attributes"""
    __tablename__ = "users"
    email = Column('email', String(128), nullable=False)
    password = Column('password', String(128), nullable=False)
    first_name = Column('first_name', String(128), nullable=True, default="NULL")
    last_name = Column('last_name', String(128), nullable=True, default="NULL")
    # backref may need to be back_populates?Below line commented out bc console
    # would not run with it in. This line was implemented in Task 8
    places = relationship("Place", cascade="delete", backref="user")
    # Below line is commented out for caution and was added in Task 9
    reviews = relationship("Review", cascade="delete", backref="user")
=======
    """Represents a user for a MySQL database.

    Inherits from SQLAlchemy Base and links to the MySQL table users.

    Attributes:
        __tablename__ (str): The name of the MySQL table to store users.
        email: (sqlalchemy String): The user's email address.
        password (sqlalchemy String): The user's password.
        first_name (sqlalchemy String): The user's first name.
        last_name (sqlalchemy String): The user's last name.
        places (sqlalchemy relationship): The User-Place relationship.
        reviews (sqlalchemy relationship): The User-Review relationship.
    """
    __tablename__ = "users"
    email = Column(String(128), nullable=False)
    password = Column(String(128), nullable=False)
    first_name = Column(String(128))
    last_name = Column(String(128))
    places = relationship("Place", backref="user", cascade="delete")
    reviews = relationship("Review", backref="user", cascade="delete")

>>>>>>> 4c501d4f22acaa3fa758c7957ef0e0ec15597e8a

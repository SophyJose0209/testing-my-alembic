"""${message}

Revision ID: ${up_revision}
Revises: ${down_revision | comma,n}
Create Date: ${create_date}

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa
${imports if imports else ""}

# revision identifiers, used by Alembic.
revision: str = ${repr(up_revision)}
down_revision: Union[str, None] = ${repr(down_revision)}
branch_labels: Union[str, Sequence[str], None] = ${repr(branch_labels)}
depends_on: Union[str, Sequence[str], None] = ${repr(depends_on)}


def upgrade() -> None:
<<<<<<< HEAD
    """Upgrade schema."""
=======
>>>>>>> a5b3d3192e8cd31792ce0778e1aa95a0809bac05
    ${upgrades if upgrades else "pass"}


def downgrade() -> None:
<<<<<<< HEAD
    """Downgrade schema."""
=======
>>>>>>> a5b3d3192e8cd31792ce0778e1aa95a0809bac05
    ${downgrades if downgrades else "pass"}

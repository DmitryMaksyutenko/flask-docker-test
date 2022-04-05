from os import environ

from app import create_app

app = create_app(environ.get('ENV', None))
app.run(host='0.0.0.0', port=8080)

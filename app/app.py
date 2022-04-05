from flask import Flask


def create_app(dir: str = None) -> Flask:
    app = Flask(__name__, instance_relative_config=True)
    app.config.from_object(f'settings.{dir}.config')

    @app.route('/')
    def method_name():
        return 'hello app'

    return app

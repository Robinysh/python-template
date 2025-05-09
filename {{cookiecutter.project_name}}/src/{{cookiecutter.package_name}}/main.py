import typer

app = typer.Typer()


@app.command()
def hello(name: str):
    """
    Hello world command.

    Args:
        name (str): Name of the person to greet.
    """
    typer.echo(f"Hello {name}!")

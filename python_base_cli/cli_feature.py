import argparse

from python_base.object import Object


def main():
    """Provide Command Line Interface for Python Base project
    :return:
    """
    parser = argparse.ArgumentParser("Python Base - CLI")

    # Define CLI arguments
    parser.add_argument('--argument', '-a', help=f"Argument")

    args = parser.parse_args()
    Object(argument=args.argument)


if __name__ == "__main__":
    main()

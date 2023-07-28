import yaml


def yaml_coerce(value):
    """
    Convert value into a proper Python object
    """
    if isinstance(value, str):
        return yaml.load(f'key: {value}', Loader=yaml.SafeLoader)['key']

    return value

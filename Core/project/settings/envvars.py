from Core.core.utils.collections import deep_update
from Core.core.utils.settings import gte_settings_from_environment
from Core.project.settings import ENVVAR_SETTINGS_PREFIX

deep_update(globals(), gte_settings_from_environment(ENVVAR_SETTINGS_PREFIX))

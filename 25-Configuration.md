# Configuration with Dynaconf

* https://www.dynaconf.com/

Supports various file formats:

* .toml - Default and recommended file format.
* .yaml|.yml - Recommended for Django applications. (see yaml caveats)
* .json - Useful to reuse existing or exported settings.
* .ini - Useful to reuse legacy settings.
* .py - Not Recommended but supported for backwards compatibility.
* .env - Useful to automate the loading of environment variables.


To initialize:

```
$ dynaconf init -f toml
``` 

Will set up a few files:

```
.
├── config.py       # Where you import your settings object (required)
├── .secrets.toml   # Sensitive data like passwords and tokens (optional)
└── settings.toml   # Application setttings (optional)
```

The config file reaches out to the file:

```python
from dynaconf import Dynaconf

settings = Dynaconf(
    settings_files=['settings.toml', '.secrets.toml'],
)
 ```

Configuration module can be imported and used:

```python
from config import settings

assert settings.key == "value"
assert settings.number == 789
assert settings.a_dict.nested.other_level == "nested value"
assert settings['a_boolean'] is False
assert settings.get("DONTEXIST", default=1) == 1
```
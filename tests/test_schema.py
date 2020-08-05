import pytest

import qhub_ops.schema


@pytest.mark.parametrize(
    "config_filename",
    [
        "tests/assets/config_aws.yaml",
        "tests/assets/config_gcp.yaml",
        "tests/assets/config_do.yaml",
    ],
)
def test_validation(config_filename):
    import yaml

    with open(config_filename) as f:
        data = yaml.safe_load(f.read())

    assert qhub_ops.schema.verify(data) is None

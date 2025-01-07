Option --test-suite: cannot be empty

Usage:
php -f phpunitGroupConfig.php
    [--get-total]
        Option takes no value, when specified, script will return total number of groups for the test suite specified in --test-suite.
        It's the default if both --get-total and --get-group are specified or both --get-total and --get-group are not specified.
    [--get-group="<positive integer>|all"]
        When option takes a positive integer value <i>, script will generate phpunit_<i>.xml file in the same location as the config
        file specified in --configuration with a test suite named "group_<i>" which contains the i-th group of tests from the test
        suite specified in --test-suite.
        When option takes value "all", script will generate config files for all groups at once.
    --test-suite="<name>"
        Name of test suite to be splitted into groups.
    --group-size="<positive integer>"
        Number of tests per group.
    --configuration="<path>"
        Path to phpunit configuration xml or xml.dist file.
    [--isolate-tests="<path>"]
        Path to a text file containing tests that require group isolation. One test path per line.

Note:
Script uses getopt() which does not accept " "(space) as a separator for optional values. Use "=" for [--get-group] and [--isolate-tests] instead.
See https://www.php.net/manual/en/function.getopt.php

# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

echo "We are in conf.sh"

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    echo "We are in pre_build"
    if [ -n "$IS_OSX" ]; then
       echo "We are in IS_OSX"
    else
       echo "We are NOT in IS_OSX"
       sudo yum install pkgconfig libpng-devel
    fi

}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    echo "NOT TESTING"
    python --version
    #python -c 'import sys; import numina; sys.exit(numina.test())'
}

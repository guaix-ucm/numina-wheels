# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

echo "CONFFFFF"

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    echo "OEEEHEHEHEEHEHE"
    build_libpng
    build_freetype
}

function run_tests {
    # Runs tests on installed distribution from an empty directory
    echo "NOT TESTING"
    python --version
    #python -c 'import sys; import numina; sys.exit(numina.test())'
}

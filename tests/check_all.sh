#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
swipl -q -s tests/lesson_examples.plt -g run_tests -t halt
for file in archive/*.pl archive/*/*.pl; do
    printf 'Checking %s\n' "$file"
    ARCHIVE_FILE="$PWD/$file" swipl -q -s tests/archive_examples.plt -g run_tests -t halt
done

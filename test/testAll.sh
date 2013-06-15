#! /bin/sh -e

function test {
    ../oclint-xcodebuild $1
    diff $1.json compile_commands.json
}

test xcode-5.0-5A11314m-pchpch
test full-project-1
test full-project-2
test product-name-with-space

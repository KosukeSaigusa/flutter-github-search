#!/bin/sh

outputFile="$(pwd)/test/import_all_test.dart"
packageName="$(cat pubspec.yaml| grep '^name: ' | awk '{print $2}')"

if [ "$packageName" = "" ]; then
    echo "Run $0 from the root of your Dart/Flutter project"
    exit 1
fi

echo "/// *** GENERATED FILE - ANY CHANGES WOULD BE OBSOLETE ON NEXT GENERATION *** ///\n" > "$outputFile"
echo "// ignore_for_file: unused_import\n" >> "$outputFile"
echo "/// Helper to test coverage for all project files" >> "$outputFile"
find lib -name '*.dart' | grep -v '.g.dart' | grep -v '.freezed.dart' | grep -v 'generated_plugin_registrant' | awk -v package=$packageName '{gsub("^lib", "", $1); printf("import '\''package:%s%s'\'';\n", package, $1);}' >> "$outputFile"
echo "\nvoid main() {}" >> "$outputFile"

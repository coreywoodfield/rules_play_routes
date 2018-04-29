# Do not edit. bazel-deps autogenerates this file from dependencies.yml.
java_import_external = None
scala_import_external = None
#load("@io_bazel_rules_scala//scala:scala_maven_import_external.bzl", "scala_import_external", "java_import_external")

def declare_maven(hash):
    lang = hash.pop("lang")
    import_args = hash["import_args"]

    # TODO: Change this back once java_import works again
    # if lang == "java":
    if False:
        java_import_external(**import_args)
    else:
    #elif lang.startswith("scala"):
        if "testonly_" in import_args:
            import_args.pop("testonly_")
        if "neverlink" in import_args:
            import_args.pop("neverlink")

        scala_import_external(**import_args)

    native.bind(**hash["bind_args"])

def list_dependencies():
    return [
        {
            "bind_args": {
                "actual": "@play_routes_com_github_scopt_scopt_2_11",
                "name": "jar/play_routes_com/github/scopt/scopt_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@scala_scala_library//jar" ],
                "jar_sha256": "cc05b6ac379f9b45b6d832b7be556312039f3d57928b62190d3dcd04f34470b5",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/github/scopt/scopt_2.11/3.7.0/scopt_2.11-3.7.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_github_scopt_scopt_2_11",
                "srcjar_sha256": "1c9111bafb55ec192d04898123199e51440e1633118b112d0c14a611491805ef",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/github/scopt/scopt_2.11/3.7.0/scopt_2.11-3.7.0-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_typesafe_play_routes_compiler_2_11",
                "name": "jar/play_routes_com/typesafe/play/routes_compiler_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_typesafe_play_twirl_api_2_11",
                    "@play_routes_commons_io_commons_io",
                    "@play_routes_org_scala_lang_modules_scala_parser_combinators_2_11",
                    "@scala_scala_library//jar"
                ],
                "jar_sha256": "f91f01e6828b0ef3f893cffa93cb87d755297f993fff3b07cf8eec1144cc1b42",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/routes-compiler_2.11/2.5.18/routes-compiler_2.11-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_typesafe_play_routes_compiler_2_11",
                "srcjar_sha256": "f75fada15f3f866d4310f9d91edc983bc3e200a13da5a50f44c2238becf214a6",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/routes-compiler_2.11/2.5.18/routes-compiler_2.11-2.5.18-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_typesafe_play_twirl_api_2_11",
                "name": "jar/play_routes_com/typesafe/play/twirl_api_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_org_apache_commons_commons_lang3",
                    "@play_routes_org_scala_lang_modules_scala_xml_2_11"
                ],
                "jar_sha256": "8cbc373640e2dab269bc0d4eada8fd47e9a06bb573ea9b7748eada58188547fa",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.11/1.1.1/twirl-api_2.11-1.1.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_typesafe_play_twirl_api_2_11",
                "srcjar_sha256": "aa59cc9ff4a00e95330f8e8fcb4d4489d168bde4c2c433e5741428d62971d5e8",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.11/1.1.1/twirl-api_2.11-1.1.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_commons_io_commons_io",
                "name": "jar/play_routes_commons_io/commons_io"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "cc6a41dc3eaacc9e440a6bd0d2890b20d36b4ee408fe2d67122f328bb6e01581",
                "jar_urls": [
                    "http://central.maven.org/maven2/commons-io/commons-io/2.4/commons-io-2.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_commons_io_commons_io",
                "srcjar_sha256": "d4635b348bbbf3f166d972b052bc4cac5b326c133beed7b8a1cab7ea22b61e01",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/commons-io/commons-io/2.4/commons-io-2.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_apache_commons_commons_lang3",
                "name": "jar/play_routes_org/apache/commons/commons_lang3"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "734c8356420cc8e30c795d64fd1fcd5d44ea9d90342a2cc3262c5158fbc6d98b",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_apache_commons_commons_lang3",
                "srcjar_sha256": "4709f16a9e0f8fd83ae155083d63044e23045aac8f6f0183a2db09f492491b12",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_lang_modules_scala_parser_combinators_2_11",
                "name": "jar/play_routes_org/scala_lang/modules/scala_parser_combinators_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "0dfaafce29a9a245b0a9180ec2c1073d2bd8f0330f03a9f1f6a74d1bc83f62d6",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.0.4/scala-parser-combinators_2.11-1.0.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_lang_modules_scala_parser_combinators_2_11",
                "srcjar_sha256": "8b8155720b40c0f7aee7dbc19d4b407307f6e57dd5394b58a3bc9849e28d25c1",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.0.4/scala-parser-combinators_2.11-1.0.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_lang_modules_scala_xml_2_11",
                "name": "jar/play_routes_org/scala_lang/modules/scala_xml_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "eb84f08e8e1874d56f01ee259f99b8fd3c10676959e45728535411182451eff2",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.11/1.0.1/scala-xml_2.11-1.0.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_lang_modules_scala_xml_2_11",
                "srcjar_sha256": "9f6233bc4240883dbf00bba36554a0864ee3fbab7cf949440d6523a2f882b611",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.11/1.0.1/scala-xml_2.11-1.0.1-sources.jar"
                ]
            },
            "lang": "java"
        }
    ]
def maven_dependencies(callback = declare_maven):
    for hash in list_dependencies():
        callback(hash)

    
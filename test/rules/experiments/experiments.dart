// Copyright (c) 2019, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:linter/src/analyzer.dart';
import 'package:linter/src/rules/always_declare_return_types.dart';
import 'package:linter/src/rules/camel_case_extensions.dart';
import 'package:linter/src/rules/prefer_constructors_over_static_methods.dart';
import 'package:linter/src/rules/public_member_api_docs.dart';
import 'package:linter/src/rules/slash_for_doc_comments.dart';
import 'package:linter/src/rules/type_annotate_public_apis.dart';

final experiments = <LintRule>[
  AlwaysDeclareReturnTypes(),
  CamelCaseExtensions(),
  PreferConstructorsInsteadOfStaticMethods(),
  PublicMemberApiDocs(),
  SlashForDocComments(),
  TypeAnnotatePublicApis(),
];

void registerLintRuleExperiments() {
  experiments.forEach(Analyzer.facade.register);
}

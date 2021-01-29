import 'package:newsa/models/source.dart';

class SourceResponse {
  final List<SourceModel> sources;

  SourceResponse(this.sources);

  SourceResponse.fromJson(Map<String, dynamic> json)
      : sources = (json["sources"] as List)
            .map((e) => new SourceModel.fromJson(e))
            .toList();
}

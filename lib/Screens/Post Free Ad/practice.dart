import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

// class CustomField {
//   Headers? headers;
//   List<Original>? original;
//   Null exception;
//
//   CustomField({this.headers, this.original, this.exception});
//
//    CustomField.fromJson(Map<String, dynamic> json) {
//     headers = json['headers'] != null ? new Headers.fromJson(json['headers']) : null;
//     if (json['original'] != null) {
//       original = <Original>[];
//       json['original'].forEach((v) {
//         original!.add(new Original.fromJson(v));
//       });
//     }
//
//     exception = json['exception'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.headers != null) {
//       data['headers'] = this.headers!.toJson();
//     }
//     data['original'] = this.original!.map((v) => v.toJson()).toList();
//     data['exception'] = this.exception;
//     return data;
//   }
// }
//
// class Headers {
//   Headers.fromJson(Map<String, dynamic> json);
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     return data;
//   }
// }
//
// class Original {
//   String? label;
//   String? name;
//   String? defaultValue;
//   late final options;
//   String? help;
//   String? required;
//   bool? multiple;
//   String? type;
//
//   Original(
//       {this.label,
//       this.name,
//       this.defaultValue,
//       this.options,
//       this.help,
//       this.required,
//       this.multiple,
//       this.type});
//
//   Original.fromJson(Map<String, dynamic> json) {
//     label = json['label'];
//     name = json['name'];
//     defaultValue = json['default_value'];
//     options = json['options'];
//     help = json['help'];
//     required = json['required'];
//     multiple = json['multiple'];
//     type = json['type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['label'] = this.label;
//     data['name'] = this.name;
//     data['default_value'] = this.defaultValue;
//     data['options'] = this.options;
//     data['help'] = this.help;
//     data['required'] = this.required;
//     data['multiple'] = this.multiple;
//     data['type'] = this.type;
//     return data;
//   }
// }
//
// class OptionElement {
//   OptionElement({
//     this.label,
//     this.name,
//     this.defaultValue,
//     this.options,
//     this.help,
//     this.required,
//     this.multiple,
//     this.type,
//   });
//
//   final label;
//   final name;
//   final defaultValue;
//   final options;
//   final help;
//   final required;
//   final multiple;
//   final type;
//
//   factory OptionElement.fromJson(Map<String, dynamic> json) => OptionElement(
//         label: labelValues.map[json["label"]],
//         name: json["name"],
//         defaultValue: json["default_value"],
//         options: List<Map<String, String>>.from(json["options"].map(
//             (x) => Map.from(x).map((k, v) => MapEntry<String, String>(k, v)))),
//         help: json["help"],
//         required: requiredValues.map[json["required"]],
//         multiple: json["multiple"],
//         type: typeValues.map[json["type"]],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "label": label,
//         "name": name,
//         "default_value": defaultValue,
//         "options": List<dynamic>.from(options.map(
//             (x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
//         "help": help,
//         "required": required,
//         "multiple": multiple,
//         "type": type,
//       };
// }
//
// enum Label { MODEL }
//
// final labelValues = EnumValues({"Model": Label.MODEL});
//
// enum Required { REQUIRED, EMPTY }
//
// final requiredValues =
//     EnumValues({"": Required.EMPTY, "required": Required.REQUIRED});
//
// enum Type { SELECT }
//
// final typeValues = EnumValues({"select": Type.SELECT});
//
// class EnumValues<T> {
//   final map;
//   late final reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }

//***************************************************************************************
// To parse this JSON data, do
//
//     final fieldModel = fieldModelFromJson(jsonString);

import 'dart:convert';

FieldModel fieldModelFromJson(String str) => FieldModel.fromJson(json.decode(str));

String fieldModelToJson(FieldModel data) => json.encode(data.toJson());

class FieldModel {
  FieldModel({
    this.headers,
    this.original,
    this.exception,
  });

  Headers? headers;
  List<Original>? original;
  dynamic exception;

  factory FieldModel.fromJson(Map<String, dynamic> json) => FieldModel(
    headers: Headers.fromJson(json["headers"]),
    original: List<Original>.from(json["original"].map((x) => Original.fromJson(x))),
    exception: json["exception"],
  );

  Map<String, dynamic> toJson() => {
    "headers": headers!.toJson(),
    "original": List<dynamic>.from(original!.map((x) => x.toJson())),
    "exception": exception,
  };
}

class Headers {
  Headers();

  factory Headers.fromJson(Map<String, dynamic> json) => Headers(
  );

  Map<String, dynamic> toJson() => {
  };
}

class Original {
  Original({
    this.label,
    this.name,
    this.defaultValue,
    this.options,
    this.help,
    this.required,
    this.multiple,
    this.type,
  });

  String? label;
  String? name;
  String? defaultValue;
  dynamic options;
  String? help;
  Required? required;
  bool? multiple;
  String? type;

  factory Original.fromJson(Map<String, dynamic> json) => Original(
    label: json["label"],
    name: json["name"],
    defaultValue: json["default_value"],
    options: json["options"],
    help: json["help"] == null ? null : json["help"],
    required: requiredValues.map[json["required"]],
    multiple: json["multiple"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "label": label,
    "name": name,
    "default_value": defaultValue,
    "options": options,
    "help": help == null ? null : help,
    "required": requiredValues.reverse[required],
    "multiple": multiple,
    "type": type,
  };
}

class OptionElement {
  OptionElement({
    this.label,
    this.name,
    this.defaultValue,
    this.options,
    this.help,
    this.required,
    this.multiple,
    this.type,
  });

  Label? label;
  String? name;
  String? defaultValue;
  List<Map<String, String>>? options;
  String? help;
  Required? required;
  bool? multiple;
  Type? type;

  factory OptionElement.fromJson(Map<String, dynamic> json) => OptionElement(
    label: labelValues.map[json["label"]],
    name: json["name"],
    defaultValue: json["default_value"],
    options: List<Map<String, String>>.from(json["options"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String>(k, v)))),
    help: json["help"],
    required: requiredValues.map[json["required"]],
    multiple: json["multiple"],
    type: typeValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "label": labelValues.reverse[label],
    "name": name,
    "default_value": defaultValue,
    "options": List<dynamic>.from(options!.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    "help": help,
    "required": requiredValues.reverse[required],
    "multiple": multiple,
    "type": typeValues.reverse[type],
  };
}

enum Label { MODEL }

final labelValues = EnumValues({
  "Model": Label.MODEL
});

enum Required { REQUIRED, EMPTY }

final requiredValues = EnumValues({
  "": Required.EMPTY,
  "required": Required.REQUIRED
});

enum Type { SELECT }

final typeValues = EnumValues({
  "select": Type.SELECT
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map,);

  Map<T, String> get reverse {
      reverseMap = map.map((k, v) => new MapEntry(v, k));

    return reverseMap;
  }
}


class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  String catId = "1";
  String subCatId = "7";

  Future<List<Original>> getCustomField() async {
    final String postsURL =
        "https://dubuz.com/api/custom-fields";
    Response res = await post(
      Uri.parse(postsURL),
      headers: {
        "Content-Type": "application/x-www-form-urlencoded"
      },
      body: {
        "languageCode": "en",
        "catId": "1",
        "subCatId": "7",
        "from": "app"
      }
    );
    print("response ${res.statusCode} ");
    if (res.statusCode == 200) {
      try {
        print("List :${res.body}");
        FieldModel.fromJson(jsonDecode(res.body));
      } catch (e) {
        print("execution : ${e.toString()}");
      }
    } else {
      print("ex ${res.statusCode}");
      // throw "Unable to retrieve posts.";
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getCustomField(),
        builder: (context, AsyncSnapshot<List<Original>> snapshot) {
          if (snapshot.hasData) {
            List<Original>? post = snapshot.data;
            return post != null
                ? ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: post.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      Original _data = post[index];
                       var name = _data.name;
                      print('name: $name');
                      return Column(
                        children: [Text('hi')],
                      );
                    })
                : Container(
                    child: Text("404 ERROR"),
                  );
          } else {
            return Center(
                child: CircularProgressIndicator(
              backgroundColor: Colors.black,
            ));
          }
        },
      ),
    );
  }
}

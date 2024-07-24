// To parse this JSON data, do
//
//     final maxvalue = maxvalueFromJson(jsonString);

import 'dart:convert';

Maxvalue maxvalueFromJson(String str) => Maxvalue.fromJson(json.decode(str));

String maxvalueToJson(Maxvalue data) => json.encode(data.toJson());

class Maxvalue {
    int? count;
    List<Entry>? entries;

    Maxvalue({
        this.count,
        this.entries,
    });

    factory Maxvalue.fromJson(Map<String, dynamic> json) => Maxvalue(
        count: json["count"],
        entries: json["entries"] == null ? [] : List<Entry>.from(json["entries"]!.map((x) => Entry.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "entries": entries == null ? [] : List<dynamic>.from(entries!.map((x) => x.toJson())),
    };
}

class Entry {
    String? api;
    String? description;
    Auth? auth;
    bool? https;
    Cors? cors;
    String? link;
    String? category;

    Entry({
        this.api,
        this.description,
        this.auth,
        this.https,
        this.cors,
        this.link,
        this.category,
    });

    factory Entry.fromJson(Map<String, dynamic> json) => Entry(
        api: json["API"],
        description: json["Description"],
        auth: authValues.map[json["Auth"]]!,
        https: json["HTTPS"],
        cors: corsValues.map[json["Cors"]]!,
        link: json["Link"],
        category: json["Category"],
    );

    Map<String, dynamic> toJson() => {
        "API": api,
        "Description": description,
        "Auth": authValues.reverse[auth],
        "HTTPS": https,
        "Cors": corsValues.reverse[cors],
        "Link": link,
        "Category": category,
    };
}

enum Auth {
    API_KEY,
    EMPTY,
    O_AUTH,
    USER_AGENT,
    X_MASHAPE_KEY
}

final authValues = EnumValues({
    "apiKey": Auth.API_KEY,
    "": Auth.EMPTY,
    "OAuth": Auth.O_AUTH,
    "User-Agent": Auth.USER_AGENT,
    "X-Mashape-Key": Auth.X_MASHAPE_KEY
});

enum Cors {
    NO,
    UNKNOWN,
    UNKOWN,
    YES
}

final corsValues = EnumValues({
    "no": Cors.NO,
    "unknown": Cors.UNKNOWN,
    "unkown": Cors.UNKOWN,
    "yes": Cors.YES
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}

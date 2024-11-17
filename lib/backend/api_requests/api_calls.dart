import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ReversegeocodeCall {
  static Future<ApiCallResponse> call({
    String? latitude = '',
    String? longitude = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'reversegeocode',
      apiUrl:
          'https://geocode.maps.co/reverse?lat=$latitude&lon=$longitude&api_key=6730ebbd61380689728618zvs254033',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? ciudad(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address.suburb''',
      ));
}

class CreatePreferenceCall {
  static Future<ApiCallResponse> call({
    double? precio,
    String? producto = '',
    String? urlAprobado = '',
  }) async {
    final ffApiRequestBody = '''
{
  "items": [
    {
      "id": "001",
      "title": "${escapeStringForJson(producto)}",
      "description": "Descripción del producto",
      "quantity": 1,
      "currency_id": "ARS",
      "unit_price": $precio
    }
  ],
  "payer": {
    "email": "cliente@example.com",
    "name": "Juan",
    "surname": "Pérez"
  },
  "back_urls": {
    "success": "${escapeStringForJson(urlAprobado)}",
    "failure": "https://www.tusitio.com/failure",
    "pending": "https://www.tusitio.com/pending"
  },
  "auto_return": "approved"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createPreference',
      apiUrl: 'https://api.mercadopago.com/checkout/preferences',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer  APP_USR-7185602719378928-111617-86faa19dcb86c83c418cffc1317fb363-388541957',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.init_point''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}

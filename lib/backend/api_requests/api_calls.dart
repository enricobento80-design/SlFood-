import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AuthTokenCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": ${email == null ? 'null' : '"${escapeStringForJson(email)}"'},
  "password": ${senha == null ? 'null' : '"${escapeStringForJson(senha)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'authToken',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:1y-RviMn/auth/login',
      callType: ApiCallType.POST,
      headers: {},
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
}

class BuscaCepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscaCep',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
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

  static String? logradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.estado''',
      ));
}

class CodigoOTPCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "to_email": ${email == null ? 'null' : '"${escapeStringForJson(email)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'codigoOTP',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:Qvd-QuTm/sendgrid/validate',
      callType: ApiCallType.POST,
      headers: {},
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
}

class CadastroUserCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
    String? nome = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": ${nome == null ? 'null' : '"${escapeStringForJson(nome)}"'},
  "email": ${email == null ? 'null' : '"${escapeStringForJson(email)}"'},
  "password": ${senha == null ? 'null' : '"${escapeStringForJson(senha)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastroUser',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:1y-RviMn/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
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

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class CadastroClienteCall {
  static Future<ApiCallResponse> call({
    String? celular = '',
    String? cpf = '',
    String? tokens = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cpf": ${cpf == null ? 'null' : '"${escapeStringForJson(cpf)}"'},
  "celular": ${celular == null ? 'null' : '"${escapeStringForJson(celular)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastroCliente',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:qmIH7GAV/cliente',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${tokens}',
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

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
}

class CadastroEnderecoCall {
  static Future<ApiCallResponse> call({
    String? tokens = '',
    String? bairro = '',
    String? numero = '',
    String? idCli = '',
    String? logradouro = '',
    String? referencia = '',
    String? cepId = '',
    String? complemento = '',
  }) async {
    final ffApiRequestBody = '''
{
  "logradouro": ${logradouro == null ? 'null' : '"${escapeStringForJson(logradouro)}"'},
  "numero": ${numero == null ? 'null' : '"${escapeStringForJson(numero)}"'},
  "bairro": ${bairro == null ? 'null' : '"${escapeStringForJson(bairro)}"'},
  "referencia": ${referencia == null ? 'null' : '"${escapeStringForJson(referencia)}"'},
  "complemento": ${complemento == null ? 'null' : '"${escapeStringForJson(complemento)}"'},
  "padrao": "",
  "cep_id": ${cepId == null ? 'null' : '"${escapeStringForJson(cepId)}"'},
  "cliente_id": ${idCli == null ? 'null' : '"${escapeStringForJson(idCli)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastroEndereco',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:qmIH7GAV/endereco',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${tokens}',
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
}

class TodosOsProdutosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'TodosOsProdutos',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:qmIH7GAV/produto',
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
}

class CadastroCepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
    String? uf = '',
    String? cidade = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cep": ${cep == null ? 'null' : '"${escapeStringForJson(cep)}"'},
  "uf": ${uf == null ? 'null' : '"${escapeStringForJson(uf)}"'},
  "cidade": ${cidade == null ? 'null' : '"${escapeStringForJson(cidade)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastroCep',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:qmIH7GAV/cep',
      callType: ApiCallType.POST,
      headers: {},
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

  static int? idCEP(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class ValidarOTPCall {
  static Future<ApiCallResponse> call({
    String? codigo = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cod_digitado": ${codigo == null ? 'null' : '"${escapeStringForJson(codigo)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'validarOTP',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:qmIH7GAV/validarOtp',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
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
}

class AssasCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? cpfCnpj = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": ${name == null ? 'null' : '"${escapeStringForJson(name)}"'},
  "cpfCnpj": ${cpfCnpj == null ? 'null' : '"${escapeStringForJson(cpfCnpj)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ASSAS',
      apiUrl: 'https://api-sandbox.asaas.com/v3/customers',
      callType: ApiCallType.POST,
      headers: {},
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
  final encoded = jsonEncode(input);
  return encoded.substring(1, encoded.length - 1);
}

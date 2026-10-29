import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'verificao_model.dart';
export 'verificao_model.dart';

/// Gere uma tela de Verificação de E-mail.
///
/// Fundo da tela branco (#FFFFFF).
/// Use uma Column principal com padding de 24px nas laterais e alinhamento
/// superior.
///
/// Adicione os seguintes widgets empilhados verticalmente nesta exata ordem:
/// 1. Text 'Verificação' (Fonte grande/Headline, cor marrom #5D4037, alinhado
/// à esquerda).
/// 2. Espaçamento vertical de 16px.
/// 3. Text 'Informe o código de verificação que foi enviado para o seu e-mail
/// informado:' (Cor marrom #5D4037, alinhado à esquerda).
/// 4. Espaçamento vertical de 32px.
/// 5. PinCodeTextField (Campo de OTP/Código de 4 dígitos. A cor da borda
/// ativa deve ser amarelo mostarda #FFC107 e inativa cinza).
/// 6. Espaçamento vertical de 16px.
/// 7. Text 'Código Inválido!' (Cor vermelha, fonte pequena. Este texto
/// servirá de aviso de erro).
/// 8. Espaçamento vertical de 32px.
/// 9. Button largo (Full Width), cor de fundo amarelo mostarda (#FFC107), cor
/// do texto marrom (#5D4037), com o texto 'Verificar'.
class VerificaoWidget extends StatefulWidget {
  const VerificaoWidget({super.key});

  static String routeName = 'verificao';
  static String routePath = '/verificao';

  @override
  State<VerificaoWidget> createState() => _VerificaoWidgetState();
}

class _VerificaoWidgetState extends State<VerificaoWidget> {
  late VerificaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerificaoModel());

    _model.codigoDigitadoFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Verificação',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 32.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
              Container(
                height: 16.0,
              ),
              Text(
                'Informe o código de verificação que foi enviado para o seu e-mail informado:',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      font: GoogleFonts.poppins(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primary,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
              Container(
                height: 32.0,
              ),
              PinCodeTextField(
                autoDisposeControllers: false,
                appContext: context,
                length: 6,
                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      font: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                    ),
                mainAxisAlignment: MainAxisAlignment.center,
                enableActiveFill: false,
                autoFocus: true,
                focusNode: _model.codigoDigitadoFocusNode,
                enablePinAutofill: false,
                errorTextSpace: 16.0,
                showCursor: true,
                cursorColor: FlutterFlowTheme.of(context).primary,
                obscureText: false,
                hintCharacter: '*',
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                pinTheme: PinTheme(
                  fieldHeight: 44.0,
                  fieldWidth: 44.0,
                  borderWidth: 2.0,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  shape: PinCodeFieldShape.box,
                  activeColor: FlutterFlowTheme.of(context).primaryText,
                  inactiveColor: FlutterFlowTheme.of(context).alternate,
                  selectedColor: FlutterFlowTheme.of(context).primary,
                ),
                controller: _model.codigoDigitado,
                onChanged: (_) {},
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: _model.codigoDigitadoValidator.asValidator(context),
              ),
              Container(
                height: 16.0,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    var _shouldSetState = false;
                    _model.apiResultiw5 = await ValidarOTPCall.call(
                      codigo: _model.codigoDigitado!.text,
                      token: FFAppState().token,
                    );

                    _shouldSetState = true;
                    if ((_model.apiResultiw5?.succeeded ?? true)) {
                      context.pushNamed(CadastroenderecoWidget.routeName);

                      if (_shouldSetState) safeSetState(() {});
                      return;
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Codigo invalido'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Digite novamente'),
                              ),
                            ],
                          );
                        },
                      );
                      if (_shouldSetState) safeSetState(() {});
                      return;
                    }

                    if (_shouldSetState) safeSetState(() {});
                  },
                  text: 'Verificar',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFFFC107),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Color(0xFF5D4037),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Container(
                height: 32.0,
              ),
              Container(
                height: 0.0,
                child: Container(
                  width: 0.0,
                  height: 0.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import '/components/notification_item_widget.dart';
import '/components/section_header_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'paginadenotificacao_model.dart';
export 'paginadenotificacao_model.dart';

/// Crie uma página chamada “Notificações” para o app Sabor Local – Culinária
/// Mineira.
///
/// Use somente widgets e recursos nativos do FlutterFlow, sem Custom Code ou
/// Custom Widgets. Reutilize o tema e os componentes existentes; não defina
/// cores ou fontes diretamente nos widgets. Mantenha a interface em português
/// do Brasil e adequada a um layout mobile.
///
/// A página deve conter:
/// - Título “Notificações”.
/// - Seção “Preferências” com switches “Status do pedido”, “Promoções e
/// cupons” e “Novidades do cardápio”.
/// - Seção com notificações agrupadas por dia. Cada item deve exibir título,
/// mensagem, horário e indicação visual de lida ou não lida.
/// - Estado de carregamento, estado de erro, estado vazio e estado com
/// notificações.
/// - Estrutura preparada para conexão futura com a tabela `notificacao` do
/// Xano, sem inventar uma integração que ainda não esteja configurada.
///
/// Crie apenas esta página. Não modifique outras páginas, componentes ou
/// navegação.
class PaginadenotificacaoWidget extends StatefulWidget {
  const PaginadenotificacaoWidget({super.key});

  static String routeName = 'paginadenotificacao';
  static String routePath = '/paginadenotificacao';

  @override
  State<PaginadenotificacaoWidget> createState() =>
      _PaginadenotificacaoWidgetState();
}

class _PaginadenotificacaoWidgetState extends State<PaginadenotificacaoWidget> {
  late PaginadenotificacaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginadenotificacaoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Text(
                            'Notificações',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                wrapWithModel(
                                  model: _model.sectionHeaderModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SectionHeaderWidget(
                                    title: 'Preferências',
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(24.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Divider(
                                            height: 16.0,
                                            thickness: 1.0,
                                            indent: 0.0,
                                            endIndent: 0.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                          Divider(
                                            height: 16.0,
                                            thickness: 1.0,
                                            indent: 0.0,
                                            endIndent: 0.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                wrapWithModel(
                                  model: _model.sectionHeaderModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SectionHeaderWidget(
                                    title: 'Hoje',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.notificationItemModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: NotificationItemWidget(
                                    isRead: false,
                                    title: 'Pedido em Preparo',
                                    time: '12:30',
                                    message:
                                        'O seu Frango com Quiabo já está sendo preparado pela nossa cozinha!',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.notificationItemModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: NotificationItemWidget(
                                    isRead: true,
                                    title: 'Cupom Disponível',
                                    time: '10:15',
                                    message:
                                        'Use o código MINAS10 para ganhar 10% de desconto no seu jantar.',
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                wrapWithModel(
                                  model: _model.sectionHeaderModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SectionHeaderWidget(
                                    title: 'Ontem',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.notificationItemModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: NotificationItemWidget(
                                    isRead: true,
                                    title: 'Pedido Entregue',
                                    time: '20:45',
                                    message:
                                        'Esperamos que tenha gostado do seu Feijão Tropeiro. Avalie-nos!',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.notificationItemModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: NotificationItemWidget(
                                    isRead: true,
                                    title: 'Novidade no Cardápio',
                                    time: '15:20',
                                    message:
                                        'Chegou o novo Doce de Leite com Queijo Canastra. Venha conferir!',
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

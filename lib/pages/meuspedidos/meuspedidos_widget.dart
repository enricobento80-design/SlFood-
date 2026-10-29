import '/components/order_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'meuspedidos_model.dart';
export 'meuspedidos_model.dart';

/// Crie apenas uma página chamada “Meus Pedidos” para o app Sabor Local –
/// Culinária Mineira.
///
/// Use somente widgets e recursos nativos do FlutterFlow, sem Custom Code ou
/// Custom Widgets. Reutilize o tema e os componentes existentes; não defina
/// cores ou fontes diretamente nos widgets. Mantenha a interface em português
/// do Brasil e adequada a um layout mobile.
///
/// A página deve conter:
/// - Título “Meus Pedidos”.
/// - Duas abas: “Em andamento” e “Histórico”.
/// - Cada pedido deve exibir número, data, total, status e resumo dos itens.
/// - Na aba “Em andamento”, inclua o botão “Acompanhar pedido”.
/// - Na aba “Histórico”, inclua o botão “Pedir de novo”.
/// - Quando não houver pedidos, mostrar exatamente “Você ainda não pediu nada
/// por aqui.” e um botão “Ver cardápio”.
/// - Estados de carregamento, erro e estado com pedidos.
/// - Estrutura preparada para conexão com as tabelas `pedido` e `item_pedido`
/// do Xano, sem inventar dados ou integração ainda não configurada.
///
/// Crie somente essa página. Não modifique outras páginas, componentes ou
/// navegação.
class MeuspedidosWidget extends StatefulWidget {
  const MeuspedidosWidget({super.key});

  static String routeName = 'meuspedidos';
  static String routePath = '/meuspedidos';

  @override
  State<MeuspedidosWidget> createState() => _MeuspedidosWidgetState();
}

class _MeuspedidosWidgetState extends State<MeuspedidosWidget> {
  late MeuspedidosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeuspedidosModel());
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
                    child: Container(
                      child: Text(
                        'Meus Pedidos',
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              font: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: 136.16,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Container(
                width: 0.0,
                height: 0.0,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
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
                              wrapWithModel(
                                model: _model.orderCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  idPedido: '8842',
                                  data: 'Hoje, 12:30',
                                  isActive: true,
                                  status: 'Preparando',
                                  resumo:
                                      '1x Frango com Quiabo, 1x Suco de Milho, 1x Doce de Leite',
                                  total: 'R\$ 84,90',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  child: Text(
                                    'Anteriores',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.orderCardModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  idPedido: '8721',
                                  data: '15 Out 2023',
                                  isActive: false,
                                  status: 'Entregue',
                                  resumo:
                                      '2x Feijão Tropeiro, 1x Porção de Torresmo, 2x Guaraná',
                                  total: 'R\$ 126,00',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.orderCardModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  idPedido: '8650',
                                  data: '10 Out 2023',
                                  isActive: false,
                                  status: 'Entregue',
                                  resumo: '1x Mexido Mineiro, 1x Café Coado',
                                  total: 'R\$ 45,00',
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

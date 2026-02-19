import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'budget_conversation_model.dart';
export 'budget_conversation_model.dart';

class BudgetConversationWidget extends StatefulWidget {
  const BudgetConversationWidget({super.key});

  @override
  State<BudgetConversationWidget> createState() =>
      _BudgetConversationWidgetState();
}

class _BudgetConversationWidgetState extends State<BudgetConversationWidget> {
  late BudgetConversationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BudgetConversationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textScaler: MediaQuery.of(context).textScaler,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Sumita Kale: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                'Good afternoon, and welcome to this post-Budget roundtable. Today, we have an expert panel to give us views from across the board - Dr. Laveesh Bhandari, President of Centre for Social and Economic Progress that is CSEP, Mr. Anil Bhardwaj, Secretary General for Federation of Indian Small and Medium Enterprises, that is FISME, Mr. Unnikrishnan, who is the Joint Director General of the Federation of Indian Export Organizations, that is FIEO, and Mr. Narasimhan (Narsi), who is our Principal Advisor at Jocata.\n\nI will just give a very small introduction to Jocata Sumpoorn, which is an index which has been tracking the sales activity of MSME since 2019. It has stayed the course, averaging around 0.57 over the last year, through all the global trade shocks. But in November and December, it moved up; it went to 0.61 in November and 0.60 in December. So, as we stand today, we are looking at a very positive, very rosy picture and the budget has given us this long-term view, which is also setting a path for sustained growth. We are entering the new financial year with very good sentiment. With that context, I would like to begin by asking Laveesh for a broad overview. What is the government\'s vision for small businesses and where exactly does the budget fit into this vision?\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Vision, Support, and What’s Missing\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Laveesh Bhandari: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                'Thanks, Sumita. Great to be here. Giving credit to the government, within whatever their vision is, they have ticked all the checkboxes. The problem, I feel, lies with the vision itself. The government continues to rely a lot on easing the financial burdens of SMEs and is unable to understand the other issues which are far more important. There\'s a lot of talk about ease of doing business and deregulation, and we all know that that\'s a part of India\'s plumbing. If you\'re not going to make correction on that side, then we will have to keep on giving different kinds of subsidies or interest.\nThe first and foremost problem is that our local governments are just completely dysfunctional. Space or location, the logistical framework required around SMEs - local governments are unable to take these on. The second is this whole issue of various regulations. Governments say they\'re going to deregulate; it\'s going to be impossible to do. There are many compliances which are critical in a smooth functioning economy, but the entity that is enforcing these is completely bankrupt of ideas.\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: '\nSumita Kale:',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                ' If there were a couple of things on your wish list for the central government, what do you think they could do?\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: '\nLaveesh Bhandari:',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                'I think we really need to learn from China. When the managers of the local governments were both empowered and made accountable for the economic growth in those areas, they are the ones who will need to do a whole lot of changes that are required at the local level. It\'s going to be impossible to operate from Delhi to say that an industrial park out here needs to have plug and play. You have to empower local administrators - mayors, municipal CEOs, district officials, and make them accountable for small-scale sector outcomes. That’s the single biggest change I would make. And just to add one more thing: if you don’t fix that, then whatever else the government does will only move things marginally - better here, worse there. The fundamentals won’t change.\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: '\nSumita Kale: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                ' So, what you’re really asking for is change at the ground level. That’s clear. Thank you, Laveesh.\nNarsi, if you would like to come in now?\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Trade, FTAs, and the Export Moment\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Narasimhan Venkatesan: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                'Hello World Thanks, Sumita, I just want to bring in two elements right away. First, the EU-FTA that was signed just days before the Budget. Second, the recent and somewhat unexpected movement from the US on reciprocal tariffs.Access to a 27-country EU market is something we’ve been waiting for, and it helps de-risk our exposure to the US. At the same time, we’ve seen indications that close to USD 33 billion of exports may move into a zero-tariff line, potentially covering about 70% of trade.\nThese are very large numbers. So, before I get ahead of myself, let me bring in Mr. Unnikrishnan. Where do you see immediate action happening, and what needs to change for MSMEs to take advantage quickly?\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'K. Unnikrishnan: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                'At the outset, thank you for inviting me and for these very good questions, which are very relevant today. If you look at India’s manufacturing landscape, we largely produce low-technology products. Globally, about 84% of trade today is in medium- and high-technology products, and that segment is growing fast. India’s share in this category is only about 24%.Last year, India exported over USD 85 billion to the US alone. Of this, 56% came from MSMEs. So, when we talk about opening EU and US markets, manufacturing capability becomes critical. The Budget sends a clear signal on manufacturing competitiveness, infrastructure, and logistics. Our logistics costs are still around 10-12%, compared to single digits globally.That said, one major issue remains unaddressed: CBAM, the Carbon Border Adjustment Mechanism. MSMEs will find it difficult to access EU markets without an EU-approved carbon credit framework. Labour-intensive sectors - textiles, garments, chemicals, agriculture, processed food are likely to see immediate benefits, because labour cost is where India has a natural advantage.\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Narasimhan Venkatesan: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Fantastic – that sets the context. Over to you, Sumita.\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Delayed Payments and TReDS\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Sumita Kale: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                'Coming back to fundamentals - one of the on-the-ground challenges for micro businesses is delayed payments. And FISME has also done a path-breaking study with GAME and C2FO recently on this issue.\nThis Budget has announced four measures to strengthen TReDS. Anilji, how significant do you think these measures are, and how soon might we see change?\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Anil Bhardwaj: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                'Thank you, Sumita. If I had to describe this Budget in one phrase: no big bang, but a steady hand. TReDS has been facing structural problems. Most buyers, particularly CPSEs, are registered but have not been transacting or allowing invoices to be uploaded. The government has now made it mandatory. TReDS has become a clearing house for payments. You will have a clear digital trail available on the platform; you would know who is paying in time and who is not. Previously, banks found it difficult to finance MSMEs whose credit ratings were not good. Now, because they have linked it with CGTMSE, this problem is taken care of; there is insurance available in case of default. I am sure the number of financed invoices is going to jump after making things mandatory for CPSEs. Both Laveeshji and previous speakers pointed out that MSMEs suffer from a problem of scale. This budget announced a Rs 10,000 crore SME growth fund to help in facilitating access to equity. Equity is one of the major bottlenecks because of which MSMEs have not been able to scale up. However, if you look at the Ministry of MSME, they were only able to spend 50% of their allocation last year. That is the question of the state capacity to utilize funds. From a macro perspective, this reinforces a credit-heavy growth strategy and not a capability-building strategy.\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Narasimhan Venkatesan: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                'To that point on mandatory transactions, we have about 316 CPSEs onboarded, but most weren\'t transacting. Anilji, how dramatically do you see this scaling now that it’s \"must-do\"?\nAnil Bhardwaj: It is no longer a choice. Because it is through TReDS only that you can make the payment, it becomes a clearing house. If you are not paying in time, those invoices convert into negotiable instruments financed by banks. This creates a much-needed lift in liquidity.\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Logistics, Clearances, and Ground Reality\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Narasimhan Venkatesan: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                'If I may add one more question - this is to the broader group. Beyond payments, there is the physical movement of goods. The budget refers to the National Trade Facilitation Plan 2.0 with a goal of two-day clearance. Unnikrishnan, what changes at the ground level to make that a reality?\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'K. Unnikrishnan: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                'That is a very valid question. Many times, manufacturers are forced to stop production because there is no predictability of clearance of cargo. The Finance Minister talked about investing in technology, especially AI, so that clearances can happen without manual intervention. Today, the customs system does not interact with other government agency systems like DGFT or the RBI. There are a lot of mismatches of data. A single-window clearance practically is going to help the trade industry clear cargo much faster.\n \n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Anil Bhardwaj: ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                'I would like to add here also, see there are a couple of things to be noted. First, the experience of cargo getting cleared either for export or for import differs very widely within India. So, if it is JNPT or Haldia port, the differences are enormous. So, with the same rule, set of rules and with the same kind of infrastructure, digital infrastructure, single window, etc., the experience of exporters and importers varies from place to place, number one. So, that means there is still a lot of manual involvement in the process and that is why the difference. The second is that in the recent meeting of the Board of Trade, a presentation was made and very soon we will have a single interface for all the agencies that have to say something with regards to export and imports, whether it is testing lab, whether it is certificate of origin, whether it is different agencies involved in the process, all of them are connected to one single interface and I think that is the vision. I think if it is realized, it can have a dramatic impact going forward.\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Clusters, Capacity, and the Local State\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Narasimhan Venkatesan:',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text:
                ' Thank you. One more question, sir. There is going to be a large focus on the 200 legacy clusters and de-bottlenecking them from an infra perspective. If that be so, and I just went through the clusters also, starting with I have the data which says textiles form 40 clusters, we have engineering 30, handicrafts 25, so on and so forth. How many MSMEs would be comprised in these clusters? Because I think that could be a very humongous number where they once again get better capacitized as you all already mentioned in the beginning. How are you going to make sure that they are all now rendered capable to produce and export as well as from a domestic perspective and get the benefit of both the FTA and the budget announcements?\n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Anil Bhardwaj: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'If I may take that first - while the Budget talks about 200 legacy clusters, there’s no additional allocation for the Ministry of MSME. The Cluster Development Programme remains at ₹431 crore, unchanged. What exactly will be done for these clusters, and with what funding, isn’t clear yet, this still feels more like an idea than an operational plan. Most of these clusters are overwhelmingly MSME-driven and face basic gaps in infrastructure and technology.\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'K. Unnikrishnan: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'Just to add - many clusters struggle because of weak connectivity, lack of common facilities like effluent treatment and shared infrastructure, and poor access to raw materials. Unless these basics are fixed, cluster-level interventions won’t move the needle.\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Laveesh Bhandari: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'I’d also like to add that a lot of the issues related to clusters are problems of local governance - roads, effluent treatment, water. All that the central government can do is provide finance because that mechanism is working relatively efficiently. You have to go through the local governance system and that is where the problem is.\n\n',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: ' Anil Bhardwaj: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'Actually, I just wanted to come here and add to what the question that Laveeshji has raised about the municipalities and the capacity of the state at the local level. A couple of very important announcements have been made, pledging allocation of 5,000 crore over 5 years for tier 2 and tier 3 cities. The Finance Commission has doubled the allocation to local municipalities to 7.91 lakh crore. For the first time, it is mandatory that they get their accounts audited and put into the public domain. This may address the issues Laveeshji raised by capacitating the local bodies.\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Narasimhan Venkatesan: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'Hello World  And from the SME growth fund perspective, where 10,000 crores has been allocated, how do we see the ground level action now emanating? Because the process of identification talks about champion SMEs, which are going to be future ready from an export potential perspective, from having demonstrated the production efficiencies, so on and so forth. If that be so, do you see certain immediate guidelines, regulations being notified, so that the selection of these SMEs can happen very rapidly, so that the funds get made available, etc. So, it is an interesting thing for us to look at as to how the SMEs are going to be enabled to avail this excellent opportunity.\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Anil Bhardwaj: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'Hello World In all probability, SIDBI is going to be heading this fund. And I think it could be, there could be two ways. One, some part of it would be used for creating as a mother fund and, you know, there will be daughter funds created for different segments, maybe different sectors also. This is one way of going about doing it. And second is that SIDBI has its own direct connect with MSMEs.\nAnd MSMEs through, for example, there is an institution called Center of Excellence for Aspiring SMEs which FISME and IFCI has set up and SIDBI is also involved. We have an MOU. So, there are a number of MSMEs that are coming to us that are interested in raising funds with the help of external equity.\nSo, I think we have good numbers already present. There is a demand also. So, spending this money should not be a problem.\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Compliance and Legal Frictions\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Sumita Kale: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'Wonderful. So, you know, we have all our newsletters and our commentary that goes out to regular readers. They have sent in some questions and one of them is a little link to what we have been talking about, is that how does the budget concretely reduce the compliance burden for MSMEs beyond intent statements?\nThe question is, are there any measurable time that a small business can expect? Are we looking at a quarter? Are we looking at rolling some?\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Anil Bhardwaj: ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'I do not think there is any concrete initiative in the budget that would reduce the cost of compliance. The budget is almost completely silent with regards to improving access to justice and enforcement of contracts, an area where India is at the bottom of the heap.\n \n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Risks and the Year Ahead\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Sumita Kale: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'I’d like to ask all of you if you could share some concluding remarks - you know where we are today, we have had a very turbulent year, lot of uncertainty, thanks to Trump tariffs and then the war and there has been a lot of upheavals. And we have sailed through this quite well. Everything is looking really, very rosy. So, it just makes us wonder, what are the risks that you would expect small businesses to prep for at this stage? How do you see the year ahead panning out?\n \n',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'K. Unnikrishnan: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'I’d like to answer that first. One important aspect as far as MSME is concerned is involving technology. Unless they adopt technology and, you know, even as a labour-oriented production, unless you use technology, artificial intelligence, etc., it will be very difficult in the coming years. And how we can be more competitive in production that makes you profitable and makes you, you know, grow. So that is an area which one has to use technology and artificial intelligence and see that they invest in that. Especially this is the time where government is also putting in a lot of money and a lot of funding also available with organizations like SIDBI, especially on technology upgradation fund also now being extended during this budget also. I\'m sure that unless they do their homework well, it will be very difficult for them to survive in the competitive environment especially. We are also opening our market for global players. Even MSMEs, UK, UK is dominated by MSME players. So, we have a FTA and we also open up many sectors. So, we have to be competitive with them. And, unless we prepare ourselves now, it will be very difficult in coming years.\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Anil Bhardwaj: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'We need to set things right to take advantage of emerging opportunities. Currently, we have an adversarial ecosystem in India; that\'s why majority of people are interested in the services sector rather than the manufacturing space. We have to work on regulations, access to technology, and scale.\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Laveesh Bhandari: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'We have worked on labour laws, but there is a long path ahead; they are not flexible at the micro and small level. Space is also a very big problem; we need large amounts of space around every single city where SMEs can set up. No SME can afford to go to court for anything; they work on reputation and personal networks. These are long-term constraints. But for the next one year, I think it\'s a phenomenal path ahead.\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Narasimhan Venkatesan:',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                '  MSMEs have demonstrated a lot of resilience in the face of adverse events. This is a once-in-a-lifetime opportunity to get access to a huge market. Digitally, the data infrastructure (DPI) has helped MSMEs become much more comfortable managing their business. The government is doing its bit, but strengthening awareness of the schemes from the MSME side would be a great step.\nBut notwithstanding that, what is it that they should be doing from their side from here on, to not be caught by surprise? And what is it that they would expect from the government to operationalize these policies quickly is perhaps what will allow them to ride the crest of this opportunity that is probably a once-in-a-lifetime opportunity to get started into getting access to a huge market and to become global players, albeit as SMEs.\nSo, it\'s very, very positive to see this. I\'m hopeful that MSMEs should also step forward and seek the required help and assistance that I\'m sure is available and building the awareness. Because from Jocata’s side, for example, we do help MSMEs understand their own businesses by fetching consent-based information about themselves, such as GST, etc., of their own performances. And when we hold the mirror to them, they are themselves surprised as to the facets of their performance and non-performance and allows them to introspect and get course correction done. So in a way, digitally, the data infrastructure, the DPI has helped a lot of MSMEs to become much more comfortable with fetching the data with the help of fintechs like us and starting to make sense out of it, both from managing the business as well as from even establishing their behavioural collateral with the institutions. So that\'s also what I see as a great thing.\nSo overall, I think the sentiment is the best that one can expect. And it would take two hands to clap. The government is doing its bit, but I guess being aware of the schemes, being aware of who to approach, if this is strengthened from the MSME side through various important bodies, associations, etc., I think it would be a great step to help them all move forward more confidently. That\'s my take on this.\n\n',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Sumita Kale: ',
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text:
                'To conclude, we can say that the budget is an accounting exercise and an intent statement. Capital is being taken care of to a large extent. But the fundamentals to reimagine MSMEs are again going to be land, labour, law, and state capacity. These are the things we have to work on over the long term together.\nThank you all for joining us.',
            style: GoogleFonts.inter(
              fontSize: MediaQuery.sizeOf(context).width <
                      valueOrDefault<double>(
                        kBreakpointSmall,
                        900.0,
                      )
                  ? 14.0
                  : 16.0,
              height: 1.2,
            ),
          )
        ],
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              font: GoogleFonts.inter(
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
              fontSize: 16.0,
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              lineHeight: 2.0,
            ),
      ),
    );
  }
}

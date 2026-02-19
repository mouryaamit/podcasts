import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'conversation_zeenat_model.dart';
export 'conversation_zeenat_model.dart';

class ConversationZeenatWidget extends StatefulWidget {
  const ConversationZeenatWidget({super.key});

  @override
  State<ConversationZeenatWidget> createState() =>
      _ConversationZeenatWidgetState();
}

class _ConversationZeenatWidgetState extends State<ConversationZeenatWidget> {
  late ConversationZeenatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConversationZeenatModel());

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
            text: 'Narasimhan V: ',
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
                'Good afternoon, everyone, and welcome to the next edition of Sumpoorn. I’m delighted to have Zeenat with us today. For those who may not know her, Zeenat is the Chief Risk Officer of L&T Finance and has a distinguished career spanning credit policy, underwriting, and pioneering digital initiatives.  \nPrior to joining L&T Finance, Zeenat spent approximately 18 years at ICICI, where she held leadership roles in credit and risk. She also served as a Non-Executive Director at ICICI Home Finance. During her time there, she was instrumental in shaping credit policy and underwriting frameworks across the group. \nAt L&T Finance, she has continued to drive innovation, most notably through Project Cyclops, which has significantly enhanced credit decisioning, particularly in underserved markets. Today, she brings to the table a deep understanding of how ambitious growth can be prudently managed through disciplined risk management and cutting-edge underwriting practices. Without further ado, Sumita, let’s begin with a sum-up of the June Sumpoorn index. \n\n',
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
                'Thanks a lot, Narsi. It’s great to be on this edition, especially with Zeenat joining us. The Sumpoorn index, which serves as our monthly, high-frequency indicator of the sales activity of MSMEs, has come in at 0.58 for June. This is a very interesting development because it marks a consistent upward trend over the last three months, consecutively inching up from 0.56 in April and 0.57 in May. The data places us firmly in the \"zone of mild expansion,\" and while we’re not seeing a sudden burst, this stability and incremental growth confirm the sense of buoyancy we’ve discussed in previous months. It’s a reflection of the resilience we’re seeing on the ground. \nThis sentiment is also borne out by some of our key macroeconomic indicators. The Index of Industrial Production (IIP) for June, for instance, showed a strong YoY manufacturing growth of 3.9%, building on the 3.5% from the previous June. This points to a degree of stability in our manufacturing sector. Interestingly, our non-oil exports have also been holding up, showing a mild growth in June despite the ongoing global trade and tariff uncertainties. But, as with all economic indicators, there are nuances. While engineering goods have done well and electronic goods are slightly up, we are seeing a lack of vigorous growth in segments like ready-made garments, and exports of gems and jewellery have actually gone down. \nThe credit side, which is where we’d like to get Zeenat’s views, presents an even more robust picture. We have seen a surge in bank credit to the micro and small segment, with a dramatic YoY growth of 21.8% in June. For the medium segment, it\'s a healthy 14-15%. With all these official numbers from a macro perspective, we are very keen to know, from the industry’s point of view, what you see on the ground. \n\n',
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
            text: 'Zeenat Hamirani: ',
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
                'In my view, FY25 was a “disruption year” for the MFI industry. While some disruptions like demonetization and COVID-19 were out of our control, this latest cycle was, to a large extent, a creation of the financial institutions themselves. In the rush for growth post-COVID, lenders began over-leveraging customers and encouraging loan stacking without a true assessment of their repayment capacity. \nThis highlighted the need for a more “responsible” approach to lending. At L&T Finance, our crisis mantra was to be the last to fall, fall the least, and be the first and fastest to get up. We had already implemented many of the MFI guidelines, such as income assessments without documentary proof and robust first-line field checks, a year before they became industry regulations. The key is to manage portfolio resilience, not just growth. We focused on continuous leverage monitoring, engaging with customers to ensure their economic activities were going on, and implementing geographical exposure limits all the way down to the village level. This micro-management was crucial. \nAnother critical point is educating the customer. We must not forget that a lender’s responsibility is to protect the borrower\'s interest. We need to help them understand the consequences of non-repayment, how their bureau records are impacted, and how we can support them in distress. Finally, we need to avoid the extreme approach of stopping disbursements during a stress cycle. Instead, we should continue diligent lending. By doing so, we can manage these cycles better. This approach is why we were among the least impacted by the crisis in FY25.\n\n',
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
            text: 'Narasimhan V: ',
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
                'Speaking of the auto sector, our Jocata Auto Index, which is based on Vahan registrations data, also shows a mixed bag. And we do see that it shows some flattening, there has been some decline in the light motor vehicles as well as in the light goods vehicles, but two-wheeler is kind of up and down. \nSo, this is something that definitely needs watching out for next month. July normally is a better month from many perspectives. And we\'re hoping that the index should look slightly better, which does seem to look so because when I\'m looking at the monthly business updates from the auto majors, for both two-wheelers and four-wheelers, the numbers do seem very, very encouraging. And I hope that this continues to translate into better MSME growth as far as economic activity is concerned and more personal consumption that can trigger all around growth. \nVahan data shows that light motor vehicles were almost flat in May and then negative 4% in June, while two-wheelers saw a good growth in May before dropping to negative 2% in June. I worry about this because the auto sector is a key indicator of consumer confidence and a major driver of credit A slowdown here has wide-ranging implications for MSME growth, for broader economic activity, and for personal consumption. \n\n',
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
            text: 'Zeenat Hamirani: ',
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
                'I’m seeing a different picture on the ground. When I speak to dealers, they are very optimistic, especially with the festive season approaching. The slowdown you see is partly due to lenders strengthening their lending practices, which has led to a reduction in financing, particularly for low-touch products like two-wheelers. The industry is also seeing a decline in lending to \"new-to-credit\" (NTC) borrowers. \n',
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
            text:
                'However, there is a tremendous opportunity here. We must move beyond traditional bureau and financial data. There is a huge amount of ecosystem data available now, including payments data, UPI data, and Account Aggregator banking data. At L&T Finance, we\'ve developed an AI/ML-based initiative - Project Cyclops for two-wheelers, which we launched in June. The performance has been superlative. We are able to underwrite NTC customers better by triangulating this data.\n',
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
            text:
                'For MSME lending, we’ve moved from simply collecting financials to using dynamic digital data. For example, the Udyam registration portal is a game changer, and I was thrilled to learn that 50% of Udyam registrations are by women. We also use GST data, but we go beyond just turnover information. We analyse sales returns, supplier and customer concentration, and the discipline of filing returns. We combine this with banking data, looking at more than just bounces, to perform a comprehensive cash flow assessment. We must use all these data points - GST, banking, bureau, and payments, to make better decisions. And as I\'ve said, a little bit of \"happy friction\" is perfectly acceptable if it means a sustainable loan at the right cost, rather than a rapid, high-cost loan. \n\n',
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
            text: 'Narasimhan V: ',
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
                'That’s a very valid point. I think the idea of a slightly delayed, well-underwritten loan is far more comforting for an MSME than a two-minute decision that puts them at risk. Sumita, looking ahead, what is your best estimate for the Sumpoorn index in July? \n\n',
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
                ' I\'m still looking at it in a similar range of 0.57 to 0.58. While there is optimism, there\'s still a lot of short-term uncertainty. I’d be happy to see it at higher levels as we get into the festive season. \n\n',
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
            text: 'Narasimhan V: ',
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
                'I would probably stick my neck out and say it could be in the region of 0.59 or even 0.6. July has historically been a better month, and I\'m optimistic about the economic activity. \n\n',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Colors.black,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          TextSpan(
            text: 'Zeenat Hamirani: ',
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
                'I second Narsi on the optimism. I also believe the Sumpoorn index can play a much bigger role. It\'s a fantastic benchmark for MSMEs, which has been missing. Lenders could use it as an \"overlay\" to monitor their portfolios, helping to classify customers as red, green, or amber based on broader macro trends. \n\n',
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
            text: 'Narasimhan V: ',
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
                'That’s an excellent suggestion. Under the Sumpoorn initiative, we are already moving towards providing dissected versions of the data, allowing us to profile the behaviour of specific industries and even compare different geographical clusters. We’re very glad you’re finding it relevant and useful, and we\'re working on providing more granular analytics that can be leveraged for better risk decisioning and capital allocation. Thank you so much, Zeenat, for your deep insights and comprehensive views. It’s been an extremely interesting and insightful conversation. \n\n',
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
              lineHeight: MediaQuery.sizeOf(context).width >
                      valueOrDefault<double>(
                        kBreakpointSmall,
                        900.0,
                      )
                  ? 2.0
                  : 1.5,
            ),
      ),
    );
  }
}

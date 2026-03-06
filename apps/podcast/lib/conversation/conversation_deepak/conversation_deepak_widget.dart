import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'conversation_deepak_model.dart';
export 'conversation_deepak_model.dart';

class ConversationDeepakWidget extends StatefulWidget {
  const ConversationDeepakWidget({super.key});

  @override
  State<ConversationDeepakWidget> createState() =>
      _ConversationDeepakWidgetState();
}

class _ConversationDeepakWidgetState extends State<ConversationDeepakWidget> {
  late ConversationDeepakModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConversationDeepakModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: RichText(
        textScaler: MediaQuery.of(context).textScaler,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Setting the Context: What the October Index Reveals\n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Good afternoon and welcome everyone to our Sumpoorn MSME Conversation series.\n\nSumpoorn for October has come down quite sharply to 0.53, from 0.58 in September. That reflects marginal year-on-year growth in MSME sales activity, but the drop is largely because October had fewer working days with festivals. This is also visible in macro indicators, with IIP growth at just 0.4% and GST collections at 2%. Moreover, there was also a decline in merchandise exports and non-petroleum exports\n\nOn the positive side, GDP for Q2 came in at a remarkable 8.2% in real terms and 8.7% in nominal, though some statistical concerns remain around the deflator, we will not be going into those. While there are many bright spots in the economy like resilient consumption, good agricultural prospects this year and so on, yet we are still not seeing a strong spurt of growth for small businesses, and that is what we will focus on today.\n\nWe’re delighted to welcome our expert guest, Mr. Deepak K, seasoned industrialist from Pune, former President of the Mahratta Chamber of Commerce, Industries and Agriculture, and former Chairperson of their MSME Committee.\n\nBefore we go over to him, I’ll request Narsi to share his initial comments.\n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Macro Overview & Auto Sector Strength\n\nNarasimhan V: ',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Thank you, Sumita, and thank you, Deepak, for joining. You’ve already summed up the situation very crisply.\n\nSumpoorn at 0.53 is still in the expansion zone, but noticeably lower than the 0.58 last October, a level that was held for three months then. This year, we had expected GST 2.0 to transmit benefits into increased demand, with lower slabs leading to higher consumption and improved GST collections, but so far GST collections growth has been muted, and is flat in November.\n\nExports have contracted in October, down 11.82% YoY, and several MSME-heavy sectors such as leather, gems and jewellery, jute, carpets, cotton yarn\n\nhave shown double-digit declines. Drugs and pharma are also slightly down. The only major positive surprise is electronic goods.\n\nWhere I’m far more optimistic is the auto sector. October was decent for sales, am just going through the numbers, my eyes are lighting up because for auto ancillaries, which is a very important segment for MSMEs, the November numbers are very good. Just sharing some numbers here of growth-\n\nIn the Passenger Vehicles segment Maruti (+26%), Tata (+25%), Mahindra (+17%), Hyundai (+4.3%); for Two-wheelers: TVS (+30%), Eicher (+22%), Hero (+31%) and for CVs: Ashok Leyland (+29%), Eicher Volvo (+37%), Tata Motors (+29%).\n\nThis is very positive for MSMEs, given the depth of ancillary clusters. So, the November auto numbers make me confident that activity will pick up.\n\nWith that, let me request Deepak to step in here.\n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Ground Reality from Industry\n\nDeepak Karandikar: ',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Thanks, Narsi. The auto numbers are good, and Pune - the “Detroit of the East”, we do contribute to a large percentage of the auto industry, in Pune as well as in Chennai and Gurgaon are serviced from Pune. And I\'m happy to see the rhythm amongst the industry here.\n\nYet, there is also one persistent concern that all MSMEs face, which I would like to highlight as an industry representative. For years, MSMEs have been described as major contributors to exports, employment, and GDP. This is extremely encouraging to hear, but we can do much more than we do right now. And the biggest strain we face in our growth is of blockage of working capital due to delayed payments. After several representations were made by us and other associations to the government, there have been many reforms, but frankly much more needs to be done.\n\nWhen working capital is blocked like this in receivables, MSMEs are forced to bear the burden of interest on the uncollected amounts When small firms are strapped for working capital, they go for loans to banks. There instead of easing their financing needs immediately, decisioning can take days and sometimes even months. Then MSMEs are forced to turn to cooperatives (at an additional 2%), or then informal lenders or gold loans (18–20%). The point I’m trying to make is that access to credit is still not as easy as it should be for small firms.\n\nI have to say that Government redressal systems like Samadhaan are well intentioned but again have not worked effectively mainly because small firms fear retaliation from large buyers.\n\nTake Section 43B(h), this has been a welcome change, but I find that it does not fully resolve the problem since the penalty of non-compliance can often be too small for a large firm to change behaviour towards a small firm. Even when it comes to TReDS, there the registrations have definitely increased when the turnover threshold was reduced from 500 crore to 250 crore, but actual usage of the platform is still not optimal.\n\nAs I said, MSMEs are growing, but there is still a lot more than can be done. MSMEs are spending a lot of time chasing collections, and this definitely reins in our growth, though all entrepreneurs have the fire in the belly to keep them going!\n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Digital Credit as a Structural Solution\n\nSumita Kale: ',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Your angst has come through clearly. One of the recommendations in the recent report by GAME, FISME and C2FO on access to finance and timely payments is on expanding digital credit through GST and UPI data. Could that be a solution to Deepak’s point about banks not giving loans soon?\n\n',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.normal,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Very much so. In fact, two recommendations stand out in that report:\n\nOne is to expand digital credit using GSTN + UPI + bank data.\n\nThis is consent-based, secure, and already adopted by many lenders. Jocata has been powering such credit workflows for banks and NBFCs for years.\n\nLoan decisions can now be made within 48 hours or even faster. What Deepak pointed out that processing time is very long, I am, in fact, so happy to see that many of our lenders have been able to process their MSME loans in 48 hours. And the decision to do that is generatable with all the information that is required from an accrual perspective of the business performance and from a cash flow assessment is all possible within five minutes flat and integrated right into the assessment systems of the institutions.\n\nAnother recommendation made in the report is to reform SMA-1 and SMA-2 classifications. I believe short delays in receivables cause repayment delays; repeated SMA-1 flags then restrict further credit. One cannot fault risk mitigation to be at the core of lending because that\'s the very nature of lending. But as Deepak pointed out, rightly so, all the MSMEs are always chasing collections. Therefore, delayed collections are likely to cause delayed repayments to the institutions\n\nAnd if that is again going to come and bite them and the SMA-1 is going to put them under some constraints in the form of further additional loans being granted, etc., yes, this ought to be addressed. I\'m very keen and hopeful that some very positive measures will be taken, basis this report recommendations on the SMA classification. I think that\'s a very positive development in my view.\n\n',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.normal,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Crystal Ball Gazing\n\nNarasimhan V: ',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'So, we always end the conversation with some crystal ball gazing. Sumita, over to you for numbers.\n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'For November and December, I expect Sumpoorn to move back to 0.56–0.57. I’d love to see it go beyond 0.6, but that depends on stronger demand impulses.\n\n',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.normal,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'If exports strengthen, crossing 0.58 is possible.',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Deepak Karandikar: ',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'I would like to add here that exports were quiet for three months, but sentiment is improving again.\n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'That’s good to know, new markets are beginning to compensate for US slowdowns. MSMEs are diversifying well.\n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Deepak Karandikar: ',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'I must congratulate all MSMEs in India because they\'re extremely vibrant and that\'s what keeps them going.\n\n',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.normal,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Thank you so much, Deepak for being with us today in the afternoon to give us views from the factory floor, so to speak!\n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Thank you so much, Deepak. It was wonderful talking to you.',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            )
          ],
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
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
      ),
    );
  }
}

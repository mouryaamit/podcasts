import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'conversation_tirthankar_model.dart';
export 'conversation_tirthankar_model.dart';

class ConversationTirthankarWidget extends StatefulWidget {
  const ConversationTirthankarWidget({super.key});

  @override
  State<ConversationTirthankarWidget> createState() =>
      _ConversationTirthankarWidgetState();
}

class _ConversationTirthankarWidgetState
    extends State<ConversationTirthankarWidget> {
  late ConversationTirthankarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConversationTirthankarModel());

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
              text: 'Sumpoorn Index: November Overview\n\n',
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
                  'There has been a sharp increase in the Jocata-Sumpoorn index in November, the strongest pace of growth in sales activity of small businesses in FY26. In October growth in sales was muted mainly due to festivals leading to lesser working days, and now there is clear promise of improved prospects for the year ahead. \n\nThe impact of the GST rate cuts, the drop in repo rate, the income tax rebate, low inflation have kicked in, even as the government and export-oriented firms have deftly handled the US-tariff challenge. Growth in manufacturing has picked up overall in the country, as shown by the 8.0 percent YoY growth in IIP Manufacturing index in November, particularly strong for basic metals, pharmaceuticals and motor vehicles. This gives a boost to demand for all small businesses in the supply chain of these industries. Auto sector, which had been going through challenging times with OEMs engaged in inventory management, has seen a turnaround, with more than 20 percent growth for several companies in December and waiting period for several models of vehicles – again, this gives a big boost to MSMEs in the auto sector supply chain. Good Kharif crop production, higher reservoir level than last year and better Rabi crop sowing give comfort for rural demand going forward. GST collections for December have moved up to INR 1.75 lakh crore, up 6.1 percent YoY and for the period April-December, aggregate collections stood at INR 16.5 lakh crore, up 8.6 percent from the same period last year, reflecting good momentum.\n\nOn the external front, exports have diversified beyond dependence on US markets, and non-petroleum goods saw November exports at USD 34.20 billion, compared to USD 28.42 last November, the sectors that stood out with strong growth were Engineering Goods, Electronic Goods, Gems & Jewellery, Drugs & Pharmaceuticals – all these have MSMEs either directly exporting or in the value chain. Bank credit has also been extremely robust with 23.7 percent YoY growth in credit to micro and small firms in November. \n\nLooking back on the year, the challenges in the macro-economic environment have been effectively overcome, and there is optimism going forward. \n\n',
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
              text:
                  'MSMEs in India’s Capital Markets: Growth, Behaviour, and Future Perspectives \n\n',
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
                  'Good evening and welcome to this special edition of our monthly MSME Conversations. We are pleased to have Dr. Tirthankar, from the largest stock exchange in the country, with us today, bringing his perspective on MSMEs and their growing engagement with India’s capital markets. Before we dive in, let me quickly recap what we have seen in the MSME space in 2025. \n\nIn October, the SIDBI-Jocata Sumpoorn Index stood at 0.53, down from its peak of 0.62 in March. There were several reasons for this dip, including the impact of tariffs introduced by the Trump administration, which hit MSMEs supplying to OEMs and export-dependent sectors. Despite these challenges, MSMEs showed remarkable resilience. GST collections in November were ₹1,70,000 crores, albeit muted growth up 0.7 percent from the previous year, yet demand recovery is visible, led by auto and ancillaries. Textiles are regaining ground, though gems and jewellery remain muted. \n\nMerchandise exports held steady between April and November at USD 292 billion versus USD 284 billion last year. Credit flow to MSMEs improved, though working capital needs and payment delays persist. A recent report recommends better credit access via GST and UPI data and revisiting SMA and NPA norms. \n\nNow, here is what I am curious about. MSMEs have always faced challenges in accessing capital. Between 2012 and 2025, about 690 companies raised ₹10,000 crores, with a combined market cap of ₹1 lakh crores. That is not a small number, but given the size of the MSME universe, it feels like just the tip of the iceberg. What will enable greater MSME participation in capital markets? And what role do you see regulations and investor appetite playing in this? \n\n',
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
              text: 'Dr. Tirthankar Patnaik: ',
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
                  'Thank you for having me. MSMEs are critical: they contribute 30 percent of GDP, 45 percent of exports, and employ nearly half our workforce. \n\nYes, 700 listed companies seem small, but the growth trajectory has been sharp. NSE Emerge and BSE SME started around FY12–13. Back then, 2 companies raised ₹44 crores. By FY22, 31 companies raised ₹500 crores. FY23 doubled to 60 companies and ₹1,300 crores. FY24 saw 130 companies raising ₹4,600 crores. FY25 peaked at 160 companies and ₹7,000 crores. \n\nThis year (till December 19, 2025), 89 companies raised ₹4,300 crores. Market cap now stands at ₹2.2 lakh crores. In the last two years alone, about 600 companies listed, 480 of them MSMEs. So, the hockey-stick growth is real, and scope remains huge. \n\nIndia has crores of MSMEs. Even among medium enterprises, more than 35,000 firms, listing potential is significant.\n\n',
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
                  'When you said 35,000, my ears perked up straight away, because it is a very large number. And I would say ambitious, though, not an impossibility. But here is what I want to understand better. SEBI norms now require minimum EBITDA in two of three years, promoter lock-ins, and restrictions on fund use. Do these changes create the right governance framework? And equally important, do you think investors will feel confident enough to welcome these IPOs? Because for this magic number of 30,000 aspirants to become real, we need both hands to clap. \n\n',
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
              text: 'Dr. Tirthankar Patnaik: ',
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
                  'That is a very fair question. Regulations balance two goals: enabling listings and ensuring investor comfort. SME platforms have lighter norms than main boards, such as half-yearly versus quarterly reporting.\n\nRecent criteria like positive free cash flow to equity aim to ensure quality. Yes, tighter norms reduced listings slightly, but post-listing performance improved. Sustained gains remain above 50 percent, making these stocks long-term plays, not just IPO lotteries. \n\nInvestor interest has been not just looking up but rocking up! Stock market investors grew from 2.7 crores in 2019 to 13 crores today. Household ownership of Indian markets rose from 2 percent to about 19 percent, and mutual funds now hold 11 percent. With India’s USD 5.2 trillion market, liquidity is strong.\n\n',
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
                  'That is a huge jump in investor participation. And it makes me wonder about promoter behaviour. MSME promoters have worked hard to build their businesses. Do you see them using IPOs as an opportunity to dilute stakes and realize gains? Or do they behave like main-board promoters, who often increase their holdings? \n\n',
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
              text: 'Dr. Tirthankar Patnaik: ',
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
                  'So, the behaviour of promoters, in my understanding, depends on two factors. One, the company\'s own prospects. And second, general market environment. In bullish phases, some skim gains. In steady markets, many maintain or increase stakes. MSMEs behave similarly to main-board firms. \n\n',
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
                  'Interesting. Now, liquidity is another big piece of the puzzle. Market cap tells us the size of the opportunity, but what truly builds confidence is active trading because it allows investors to enter and exit positions easily. This creates better price discovery and signals a healthy, vibrant market. So, are we seeing enough depth and width in liquidity to make MSMEs feel that the market is not just a place to raise capital but also a dynamic space for ongoing participation?\n\n',
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
              text: 'Dr. Tirthankar Patnaik: ',
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
                  'On the primary side, the appetite is strong with hundreds of IPOs and thousands of crores raised in the last couple of years. When it comes to the secondary market, liquidity is improving, although it still trails the large-cap universe.\nNifty 50 companies dominate turnover because they have far more information available and attract institutional interest. SMEs, by contrast, trade less frequently due to limited visibility. Over time, as the market matures and more products such as SME indices and derivatives are introduced, liquidity will deepen significantly. That will transform these platforms from being only fundraising avenues into truly dynamic marketplaces for growth.\n\n',
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
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Interesting. You mentioned that the companies, due to better entry criteria, display more robust performance post IPO. Do MSMEs outperform their own projections post-listing? Are they delivering better than promised in their forward-looking statements?\n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Dr. Tirthankar Patnaik: ',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Too early for definitive India-specific evidence, but global trends show post-listing discipline improves performance and reduces earnings volatility. Companies avoid making unnecessary expenses once there is the big search light on them, driving growth. \n\n',
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
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Are you seeing a change in the trend of the value of capital that is being raised? Capital raised seems to cluster between ₹10 and ₹40 crores. Is that some line which the MSMEs are reluctant to cross? Does cost make small raises inefficient? \n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Dr. Tirthankar Patnaik: ',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'SME platforms cater to companies with post-issue capital between ₹1 and ₹25 crores. Beyond that, main-board listing applies. Of 672 companies listed since January 2024, 193 went straight to main board, 480 listed on the Emerge platform. And within that 480, 290 are NSE and about 190 are BSE. Out of the 700 listed SME companies, more than 150 have graduated to main board as they scaled. \n\n',
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
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Right. What according to you are the most recent regulatory changes that has helped the MSMEs garner capital from the capital markets better?\n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Dr. Tirthankar Patnaik: ',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Exchange-level norms tightened for quality. And that gives a lot more confidence to investors. Government schemes have also come out with incentives. Nine states offer subsidies to meet IPO-related expenditure: \n\n•Tamil Nadu: 75 percent of expenses, up to ₹30 lakhs \n \n•Gujarat: 25–30 percent, up to ₹5 lakhs \n \n•Rajasthan: ₹15 lakhs; UP: ₹5 lakhs plus MOU with NSE \n \n•Kerala: 50 percent, up to ₹1 crore \n\nOthers include Haryana, Himachal, Punjab, Odisha.Maharashtra and Gujarat lead listings with over 100 each, while states with lower awareness offer higher subsidies. NSE has MOUs with seven states for outreach. Awareness remains the biggest gap. \n\n',
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
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'The Sumpoorn initiative is closely associated with SIDBI, which has always been at the forefront of creating better credit inclusion for MSMEs. Given their access to MSMEs on both direct finance and refinancing, do you see a greater opportunity for SIDBI to help create awareness so that MSMEs understand the benefits of coming to the market, not just access to capital at modest cost, but also the ability to graduate to the main board, strengthen governance, and become bigger, better players in the supply chain ecosystem?\n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Dr. Tirthankar Patnaik: ',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Absolutely, Awareness is the missing link. Demand and supply exist. Bridging the information gap will unlock the next wave of growth. And I believe that\'s where the grunt work, frankly, lies. How do you make good companies, realize that this is a channel which can give them access to capital. That this is a channel which can improve their company\'s performance to the next level. \n\n',
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
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Before we wrap up, what are the key lessons from the last five years for policymakers, promoters, and investors? \n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Dr. Tirthankar Patnaik: ',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'If I look at the key lessons, I would frame them from three perspectives\n\nFrom a policymaker’s point of view, MSMEs are absolutely central to India’s growth story. They need continued support through easier access to credit, smoother ways to raise capital, and a governance framework that builds confidence. Without that, the momentum we are seeing will be hard to sustain. \n\nFrom a promoter’s perspective, the opportunity is tremendous. Equity markets are no longer something to be wary of. They are a real channel to tap national pools of capital and eventually attract institutional investors.\n\nFrom an investor’s perspective, transparency and performance matter the most. Investors want to see companies that can thrive under public scrutiny and deliver on their promises. Guardrails like disclosure norms and due diligence are essential to maintain trust and attract investments. \n\nAnd if we step back, the bigger picture is very encouraging. Household savings behaviour in India has changed dramatically. Ten years ago, only about 3 percent of savings were in equities and mutual funds. Today, that number is close to 15.2 percent. This shift has created a deep pool of capital that MSMEs can tap. With strong guardrails and continued confidence, India has a very long runway ahead for MSME listings, and that could transform the growth story for years to come.\n\n',
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
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Thank you for this insightful discussion. Wishing you and your institution a prosperous new year. \n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text: 'Dr. Tirthankar Patnaik: ',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'A happy new year to you as well. Thank you once again. It was a pleasure. ',
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

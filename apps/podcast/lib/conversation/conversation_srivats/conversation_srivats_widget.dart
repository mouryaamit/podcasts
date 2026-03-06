import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'conversation_srivats_model.dart';
export 'conversation_srivats_model.dart';

class ConversationSrivatsWidget extends StatefulWidget {
  const ConversationSrivatsWidget({super.key});

  @override
  State<ConversationSrivatsWidget> createState() =>
      _ConversationSrivatsWidgetState();
}

class _ConversationSrivatsWidgetState extends State<ConversationSrivatsWidget> {
  late ConversationSrivatsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConversationSrivatsModel());

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
              text: 'MSMEs through the lens of manufacturing \n\n',
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
                  'Good afternoon and welcome to Sumpoorn MSME Conversations. Last month we deep dived into exports. This time we’re looking at MSMEs from the manufacturing perspective. We’re very happy to have ',
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
              text: 'Srivats Ram, ',
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
                  'MD, Wheels India, to help unpack this for us. \n \nA quick introduction to Sumpoorn - it tracks MSME sales activity (since Oct 2019). Over the past year, the index has been marginally higher than the previous year but has stayed in a mild expansion zone. This shows resilience on one hand, but we’re all still waiting for a strong spurt in growth and wondering where it could possibly be coming from. Two macro notes before we begin: the RBI has raised FY26 GDP outlook to 6.8% with “risks evenly balanced” and this is good, but we all know that small businesses are more vulnerable to shocks than large firms. And the RBI Industry Outlook Survey (Oct 1) showed a lower Q2 assessment for demand conditions than Q1 (production, order books). While there is optimism, we would like to know more from Srivats about the ground reality. \n\nWith that backdrop, Srivats, what’s your six-month outlook for manufacturing, and what do you see as the big risks? \n\n',
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
                  'GST spillover, monsoon math, and where demand shows up\n\nSrivats Ram: ',
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
                  'Thanks, Sumita. A couple of points. One is, you know, when we look at outlook, it is always a relative measure. if I compare with what I probably thought the outlook would have been in March for the year, despite the fact that we\'ve had a lot of chaos on the international side of business with the Trump tariffs, and all the uncertainty related to that, I think the GST rate reduction has definitely helped sentiment. And sentiment reflects forward expectations more than the immediate past. \n\nOn the immediate past: Q2 was fairly damp by industry standards. Some of that is expected - monsoons slow categories like construction equipment. Also, because the GST cut was announced a month in advance, buyers held back to benefit after Sept 22. I’m not sure how much of that could be completed between Sept 22-30; some will likely spill into October. \n\nIf we talk about prospects, and again, prospects are a very funny thing, because it\'s not exactly what you see immediately in front of you in October - October itself has fewer working days (Puja, Gandhi Jayanti, Diwali), so don’t expect a big step-up in output. But I am from the automotive industry, so will talk about that, post-monsoon, infrastructure activity should improve, so trucks should do better in Q3 vs Q2. For passenger cars and two-wheelers, the cut is price-sensitive and helps the lower end, so I expect retail growth. Tractors should benefit too. \n\nLet me just go back a little bit and look at the various measures that the government has indicated from the beginning of the year, starting with the budget. The budget\'s Rs 1 lakh crore income-tax relief hasn\'t really boosted consumption as much as anticipated. It has probably gone more into helping citizens manage or pare down household debt. But the GST cut is consumption-oriented, and while different sectors will respond differently, it signals demand will improve, which likely shaped the RBI upgrade.\n\nOn exports: I got a chance to travel across Tamil Nadu extensively last year, at least nine of the districts or zones that CII is involved in, and I checked in again before this conversation. MSMEs are broadly positive vs last year, including exports. But some companies, sectors which are US-centric and where large global buyers can switch quickly, these have been affected, like textiles/garments in Tirupur. Some of the more labour-intensive segments, which are more of the MSME category, like textile garments, footwear, leather footwear, leather and footwear, for example, and gems and jewellery are affected. Outside of that, I think the engineering sector has not so far been hit, in engineering, switching is harder (validation/testing), so the impact is more about sharing price reductions than demand loss. This situation is not likely to change in the immediate future, provided this 50% tariff comes down. At 25% people manage, at 50% it doesn’t work. There’s hope of a US resolution by year-end; until then, there is uncertainty, and we all know that uncertainty delays capex. \n\n',
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
                  'Auto vs textiles, jobs vs value-add, and GST 2.0\n\nSumita Kale: ',
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
              text: 'Narsi, you had a question about the auto sector? \n\n',
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
              text: ' Narasimhan V: ',
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
                  'Yes, thanks. I have a few specific questions and the best person to answer is here. But just to say where I am coming from, a recent GoI study (Apr 2025) on auto components put the sector in perspective. Compared to textiles (2.3% of GDP, 100M direct+indirect jobs), auto is 7.1% of GDP with 4.5M direct and 30M total). Value-add is high, employment intensity is lower. Components alone employ about 1.5M directly. With GST 2.0, Srivats, where do you see (1) employment creation, and (2) personal consumption across PVs/2Ws/CVs? \n\n',
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
              text: 'Srivats Ram: ',
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
                  'Thanks Narsi, I think it is a very keen observation that you have made Auto is more capital-intensive than textiles, so labour intensity is lower (with variation within auto). The recent challenge for auto has been modest growth and spare capacity. Without strong growth, firms won’t add capital or people. In fact, in the auto sector, there are constant price pressures that drive productivity, which can counter job creation. We need sustained growth for net additions.\n\nGST 2.0 leans toward <4-metre cars, two-wheelers, and tractors. I expect retail growth in 2Ws and PVs, certainly through the festive season, likely some post-Diwali carry-over. Tractors will benefit, though they’ve already had a reasonable year. CVs should benefit too, but that depends on infrastructure. Tractors and CV segments are commercial decisions, based on forward prospects. So, we have to see how those segments translate but retail should definitely grow, and this time some of it should translate to jobs. \n\nOn MSME exporters tied to the US, retaining people is getting hard. If the US issue settles, rehiring isn’t easy, yet many are bleeding now and some support would help. \n\n',
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
                  'We still haven’t seen anything specific from the government for MSMEs, especially exporters, have we? \n\n',
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
              text: 'Srivats Ram: ',
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
                  'No, the government has acknowledged the pain but there’s nothing explicit yet. While larger firms have scale, resilience; for MSMEs, letting this drag is dangerous. Even before Trump tariffs, MSME cash flows were tight (since last July) and haven’t eased. Two steps would help: (1) ease financing for export-oriented MSMEs; (2) a time-bound employee-retention scheme (1–2 months), targeted to specific segments of MSMEs. \n\n',
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
              text: 'Scale, tariffs, and the “magic bullet” \n\nNarasimhan V: ',
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
                  'The government’s stated objective is to move auto-component production from approximately USD 60B to USD 145B by 2030, to lift our global value-chain share from 3% to 8–9% and shift from trade-neutral (0.99) to a USD 25B surplus. Don\'t you think that the auto sector is very well positioned to get to realize this ambition of higher value creation, larger ability to play a much more pivotal role in spurring the exports? With all this put together, and the fact that auto is at the centre of tremendous value creation from a manufacturing perspective, what do you see as the future? \n\n',
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
              text: 'Srivats Ram: ',
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
                  'For the automotive sector, you know, honestly, the domestic market is much more significant. We do export about a quarter or more of our produce to other countries. But majority of it, if you look at the entire industry is largely domestic. If India grows closer to 7%, demand will spur investment. OEMs have announced expansions, and the components sector will need to invest to meet this demand.\n\nOn exports of components, if you see, the big buyers are the US, Europe, China. China is essentially not competitive for us. In the US, you have 25% duty vis-a-vis other countries like Thailand and Indonesia, who are potentially competitors, who are at 19% rate of duty, or Europe, which is at 15% for the US. So effectively, your existing business is not affected, but your future competitiveness is at a slight disadvantage vis-a-vis countries like Thailand and Indonesia. It’s manageable, but a level playing field with other countries will matter. And we need stability from the US, but I know the Indian government can\'t promise something that the US government themselves don\'t know! \n\n',
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
                  'So, what’s the magic bullet? GST 2.0 has rationalized most structures (inverted duty only in a few inputs like tractors). With auto touching 49% of manufacturing GDP (within a 13-18% manufacturing band), what unlocks investment? \n\n',
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
              text: 'Srivats Ram: ',
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
                  'See, for people to make investment, they need to have a certain degree of certainty. Uncertainty is the biggest enemy of making investment decisions, which are done looking at the next three to five years type of scenario. So, I think some degree of stability or some signal towards this is what it is going to be, would be useful. A level playing field helps. Also watch Europe’s CBAM, a sophisticated trade barrier in the making. \n\nSo, I think India\'s ability to navigate these are very important if our export potential is to be truly realized. Of course, India has done well too, for eg., two-wheeler manufacturers have been successful exporting to Africa and Latin America. But for the component manufacturers, the big markets are US and Europe. And the extent to which we are able to manage trade agreements or at least a stable environment with these two countries is very important. \n\nEven now, with all the duties and the oil surcharges, which are being placed upon our country, there are a lot of manufacturers who are looking at India and who, as a matter of fact, are saying, let\'s wait till the end of the year. Let\'s see what happens. And then depending on that, we\'ll relocate. I\'ve been dealing with some of these multinational companies and the global purchasing offices for 20 odd years at least and I see a better positioning of India now, they look at India as a credible supply source. \n\nI think from a geopolitical angle, they would like to maybe limit sourcing from China, at least from a de-risking angle, because they\'re significantly exposed. India is relatively small. So, the opportunity for India to increase our stake in these markets is large. But I think in the US at least, what I\'m hearing from customers is, let\'s wait and watch and see what happens before the end of the year. And then either things settle down in which we can do something or look at alternate locations to supply from. But there is a need for supply chain both in Europe and US because the labour skill level available is relatively low. \n \nThe other thing is that there are a lot of opportunities which have come to the auto competence sector also, partly due to multiple energy sources for the automotive industry. So, there\'s obviously there\'s the ICE engine, which is petrol, diesel, CNG, electric, all these expand the market a little bit, increase what is the supply content that can go into the market. So, there is enough that\'s kind of happening probably in the domestic market, especially now that GST is done. Export is the only side which has, hopefully, we can navigate the current uncertainty and come out of it, then we should be OK. \n\n',
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
              text:
                  'Domestic vs exports, PLI/Atmanirbhar, chips, and state capacity \n\nNarasimhan V: ',
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
                  'Given the 70:30 domestic-to-exports split (globally and in India), near-term domestic demand post-GST 2.0 is key. How does manufacturing scale to meet it (credit offtake, banking, employment)? \n\n',
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
              text: 'Srivats Ram: ',
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
                  'The government has introduced a couple of schemes, nothing new but PLI and Atmanirbhar together encourage localization of technology and manufacturing value-add, helping rebalance exports vs imports. We’ve narrowed the tech gap. As we close it further, domestic scale lets you “do everything” locally. One area needing special attention is semiconductors/chips. Government has taken steps, but it could be a decade before full benefits accrue. \n\n',
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
              text: 'Sumita Kale: ',
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
                  'I find that most of our expectation is from the central government. But what about the state governments? And from the point of view of Tamil Nadu, is there something that they\'ve done specific for your sector? \n\n',
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
              text: 'Srivats Ram: ',
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
                  'The government has been reasonably proactive in Tamil Nadu in two or three ways. One is outreach programmes to Japan, Taiwan, Germany, US, UK. The CM has travelled to these places and brought in FDI commitments. The State’s role is to attract industry, ensure infrastructure, and ease of doing business. My concern in India is that the larger you are, the easier it gets; the smaller, the harder. And I\'ve had a unique opportunity of being in both, running a large company and also simultaneously running a small company. and the difference is stark, even with the same bank. And even though you\'re, you know, the same person that deals with sometimes the same bank, their expectations of smaller companies or companies that are starting up are very, very unreasonable. Working capital remains a pain point, scaling finance is also hard. \n \n',
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
                  'On supplier ecosystems, how do OEMs help MSME suppliers access credit within clusters? \n \n',
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
              text: 'Srivats Ram: ',
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
                  'The 45-day MSME payment rule has helped (with pluses/minuses - MSMEs who buy from smaller MSMEs feel a squeeze). It’s less effective when MSMEs deal with some government agencies, recoveries aren’t always smooth. Firms exposed to government or to international demand shocks are more vulnerable. \n\nOn fresh capital, risk is higher for MSMEs, any expansion is a bigger percentage of their base. A stable environment helps decisions. just one more point. There\'s also a lot of opportunity for, you know, component manufacturers to look at a wider set of customers, perhaps. For example, while they are focused on auto, there may be people in the industrial sector who use some similar components. So broad basing your customer base will also probably help to some extent. The government’s push for localization in allied sectors is another opportunity. \n\n',
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
              text: 'Monsoons, prints, and the near path \n\nSumita Kale: ',
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
                  'We’re running out of time, but thank you, Srivats. This has been mostly positive. The economist’s dismal hat isn’t much in evidence today. \n\n',
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
                  'Sumita has written about monsoon impacts, temporary demand destruction in some places, while others benefited. Marathwada is a stark case - drought-prone yet flooded this year. Still, September auto prints were striking: Royal Enfield +43% YoY, Skoda +101%, others +9-10%. How much sustains beyond Deepavali? Festive sentiment should be robust; perhaps the season holds positive cues into Christmas. \n\n',
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
              text: 'Srivats Ram: ',
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
                  'Forecasting is thankless. Too optimistic and something drags you down, too pessimistic and you’re surprised. I’d say before the GST cut; growth could have been sub-6. The GST cut has pushed it above 6% - a conservative view. Deepavali should be good. Nov-Mar: we don’t expect major surprises; the outlook is positive.\n\n',
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
              text: 'That should comfort banks/NBFCs on auto loans. \n\n',
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
              text: 'Sumita Kale: ',
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
              text: 'We can hope so. Thank you, Srivats. Thank you, Narsi.\n',
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

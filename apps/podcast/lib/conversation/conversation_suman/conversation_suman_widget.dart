import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'conversation_suman_model.dart';
export 'conversation_suman_model.dart';

class ConversationSumanWidget extends StatefulWidget {
  const ConversationSumanWidget({super.key});

  @override
  State<ConversationSumanWidget> createState() =>
      _ConversationSumanWidgetState();
}

class _ConversationSumanWidgetState extends State<ConversationSumanWidget> {
  late ConversationSumanModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConversationSumanModel());

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
                  'We’re seeing resilience hold up in MSME activity. This month’s Index reading of 0.57 keeps us in the mild expansion zone. This is higher than the 0.56 recorded in April and 0.55 recorded last May. Even more encouraging is the consistent pattern since last November, every month has surpassed its counterpart from the previous year. And this is despite strong global headwinds. \n \nWe’ve also been tracking 10 major states. Two especially stand out as top performers in May: Telangana at 0.62 and Uttar Pradesh at 0.60. Meanwhile, Maharashtra and Gujarat are roughly in line with the average. \n \nOf course, if we are talking about growth in India, we have to talk about the monsoon. It arrived early this year in May and had covered the entire country by the 29th of June, nine days ahead of schedule. That’s good news for Kharif sowing, which has picked up nicely. \n \nBut the other side of early, intense rains is flash flooding, landslides, and urban disruption - from Mumbai to Assam and the Northeast. While the current monsoon appears to be favourable, extreme weather events such as floods in the North-east, landslides in Uttarakhand and Himachal through May and June may have a localised impact on small businesses. \n \nDespite these challenges, the outlook remains positive overall. Last year’s crop estimates were at record highs for both rice and wheat. With solid foodgrain buffers, rural demand should continue to support MSME activity in the coming months. But let’s move from this macro view to sector-specific trends. Narsi, what are you seeing in household spending and sector demand? \n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'Thanks, Sumita. Let’s look at private consumption and household expenditure. The Retailers Association of India business survey for May showed retail sales up 7% YoY, compared to just 3% in May 2024. That’s a broad-based improvement. \n \nI often use the QSR segment - quick-service restaurants like pizza chains - as a bellwether for discretionary spend. That grew 10% in May. Consumer durables and furniture both grew 8%, and apparel was up 7%. These are confidence markers. People generally spend on these items when they feel secure about jobs and incomes. \n\nInterestingly, the South recorded the highest retail uptick at 9%, with the West at 7% and the East at 4%. So, there are clear regional differences. \n \nWhen we shift to autos, the picture is more muted. May’s growth in Vahan vehicle registrations was 5.7% over the last year and SIAM data shows two-wheelers seeing some increase but personal vehicles softening. Even the June numbers I’ve seen so far look mixed. LCV (Light Commercial Vehicles) sales dropping is a bit worrying since they’re so critical for short-haul goods movement. \n \nExports are another piece of the puzzle, the numbers there look quite positive. Despite tariff uncertainty, we saw around 5% YoY growth in May in non-petroleum exports. Data from PLEXCONCIL (Plastics Export Promotion Council) showed 4.2% export growth in May 2025 vs May 2024. Some of this is likely driven by China+1 sourcing strategies. Notably, US-bound consumer houseware products grew 13%, with tableware and kitchenware being surprise stars. \n \nIn fact, Indian exports overall have performed very well, despite all the global uncertainties on tariffs. Sectors that have strong MSME presence giving excellent performance such as electronic goods exports increased by 54.10%, marine products exports increased by 26.79% and garment exports increased by 11.35%with the global tariff uncertainty providing an opportunity to exporters. \n \nBut credit trends deserve scrutiny too. Credit to micro and small segments slipped from 19.9% last May to 18.7% growth YoY this year. Is that a worry or just a blip? And though the gross NPA ratio of MSME portfolio of has improved from 4.5% in March 2024 to 3.6% as at end-March 2025 - the decline in the share of subprime borrowers in this segment is a positive sign; but one further question is whether small borrowers who tend to opt for unsecured loans are finding willing lenders, given perhaps a higher emphasis by lenders on secured loans for lowering the risk and the bad-rates? \n \nSuman, since you’re here, I’d love your take on the credit space, especially given the RBI’s latest data. \n',
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
              text: '\nSuman Chowdhury: ',
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
                  'Sure, let’s talk credit. Overall, there is a clear moderation in bank credit growth compared to last year. Around May 2024, bank credit was growing in the mid-teens. As of end-May this year, it\'s down to about 9%. \n \nBut if we look specifically at MSME priority sector lending, it remains healthy, showing about 18% YoY growth. According to RBI’s annual report, MSME credit rose from ₹27.3  lakh crore in March 2024 to ₹31.3 lakh crore in March 2025, which is roughly 14.7% growth through the banking system. Including NBFCs, SIDBI CIBIL MSME Pulse report shows a very similar annualized growth of around 13.5%. Credit growth has been consistent across micro, small, and medium segments, generally between 12% and 14%. Even the five-year CAGR is about 13%, indicating steady progress. \n \nThat said, there is a slowdown in new disbursements, especially for unsecured small-ticket business loans. NBFCs and microfinance institutions have tightened their lending, partly due to regulatory caution and rising delinquencies. While RBI has spoken about lightening some regulations, overall norms for unsecured consumer and business loans have tightened over the past few quarters, impacting fresh disbursement in this segment. \n \nDespite these short-term challenges, the drivers of credit demand remain strong. There’s a clear policy push for digital inclusion. Several government schemes are supporting MSMEs, with SIDBI playing a key facilitating role. \n \nOne data point I wanted to share, which CIBIL has published, is that over the last one year, 55% of the borrowers in the category of loans of less than 1 crore are new-to-credit (NTC). NTC means that they\'re coming to the formal lending system for the first time to take loans. And that\'s very significant. This is happening because there is a lot of policy push to bring informal micro enterprises into the formal system. And if you ask me one of the game changers or transformative impact of all this has been the Udyam. The Udyam Assist portal, which is managed now by SIDBI, shows how fast the formalization is happening. \n \nThe second part I wanted to address, which Narsi sir also mentioned, is the health of the MSME portfolio. MSME Pulse data shows a consistent decline in delinquencies over the last five years. Specifically, 90+ day past-due rates fell from 2.1% in March 2024 to a five-year low of 1.8% in March 2025. That’s a very good portfolio number, considering the typical risk involved and the large number of new borrowers. \n \nBut when we deep-dive into segment-wise numbers, there are areas of concern. For loans under ₹1 crore, delinquency is at 3.1%, up from 2.9% last year. The sub-₹10 lakh segment is even more stressed, with delinquencies at 5.8%, compared to 5.1% a year ago. \n \nThis is significant because many borrowers in this category are NTC, with no bureau history. To maintain portfolio health, there has to be much more financial awareness and discipline. It\'s the age of credit bureaus now, a healthy track record is essential. On the lender side, more credit monitoring is necessary. It’s not enough to just give a loan and forget about it. Engagement and handholding are essential, especially for micro borrowers. These are the kinds of interventions the credit system needs to focus on to ensure a truly healthy portfolio. \n \n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  ' Thank you, that was very comprehensive. While overall trends remain positive, I’d note one area of caution. The slowdown in new real estate launches, especially in Mumbai, is larger than just ‘modest.’ We’re seeing a 36% decline in launches. It’s not a red flag yet, but definitely something to monitor, given how real estate touches so many MSME-linked sectors - paints, cement, furniture, logistics, daily-wage employment. \n \nOn the other hand, look at the government’s infrastructure pipeline: over ₹27 lakh crore in projects under implementation, with roads and transport alone at nearly ₹7.5 lakh crore. That kind of public investment will have a positive knock-on effect on MSME activity and employment. So, while real estate is a slight concern, Government infrastructure spending offers a counterbalance. \n \nA crucial question we should address is why NPAs are ticking up in the sub-₹10 lakh segment. It’s largely unsecured lending. Are we seeing underwriting weaknesses? Many of these borrowers are NTC - with no bureau track record, lenders need to rely on business behaviour data like GST filings and bank statements. That’s where advanced data-driven scoring can help manage risk while expanding access.\n\n',
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
                  'That’s a very good point. When we talk about MSME credit growing in double digits overall, the details matter. The Financial Stability Report, for instance, shows micro-segment growth in the second half of FY25 at 13.3%, but if you break it down by sector, credit to micro industry had an annualised growth rate of 2.8% during H2FY25, while to services grew 17.3%. \n\n',
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
              text: 'Suman Chowdhury: ',
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
                  'Correct. There are many nuances, not only sector-wise but also region-wise. For example, Telangana shows more MSME activity, while in UP a lot of new loan origination is for trading companies, not manufacturing. Manufacturing growth is more concentrated in Gujarat, Maharashtra, and Tamil Nadu. \n \nNarsi sir’s points are very relevant. I think there is optimism. We’re running another outlook survey this quarter, and it seems that optimism is continuing. The Sumpoorn Index suggests that too. But there are mixed signals. Real estate data is something I also came across. Passenger car data isn’t encouraging. Maruti has been talking about weak demand for small cars for some time now. Certain consumption segments are not doing well. \n \nRural demand seems to be holding up thanks to the good monsoon. But urban demand is still not in full gear. There are challenges. Hopefully, policy supports like income tax benefits and the 1% interest rate cut, which is slowly being transmitted, will help consumer and housing loans. But we’ll need to watch consumption carefully. It’s not all good; some parts are not doing well. \n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'I think overall Sumpoorn for May didn’t throw surprises. It was actually slightly better than many of us feared. Last time we talked about 0.55 being possible, so 0.57 is encouraging. But going into June and beyond, we’ll need to watch consumption trends, credit flow, and sector variations carefully. \n\n',
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
              text: 'Suman Chowdhury: ',
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
                  'Yes, last time I remember we were worried it might dip a little bit. We were talking about 0.55 or so. So, it does look better than our expectations. \n\n',
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
              text: ' Sumita Kale: ',
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
                  ' An interesting anecdotal point - I was at a Maratha Chamber of Commerce roundtable recently, talking to MSME manufacturers. Despite all the export uncertainty and tariff talk, they were clear that orders are flowing. They’re getting strong inquiries. Sometimes we take on these risks in our analysis, but on the ground, industry is pushing ahead. \n\n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  'True, though it’s a mixed picture. Tractor sales are strong for Mahindra but weaker for others. Passenger vehicles are uneven -SUVs doing better than sedans, but overall, the market was expected to decline, and that’s what we saw. LCVs were a surprise drop, and even large commercial vehicles were tepid. Two-wheelers seem to be holding steady. So yes, slight optimism is warranted, but with eyes open. \n \n',
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
              text: 'Suman Chowdhury: ',
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
                  'I think credit growth will hold up. There are strong policy initiatives to support MSME lending. The government, SIDBI, and other institutions are focused on maintaining or even increasing credit flow. Of course, the sub-₹10 lakh segment will need more rigorous underwriting, but the ₹1-10 crore segment is still growing well. Especially in manufacturing, demand for credit remains strong, with even textiles seeing unexpected export orders. Overall, I see MSME credit growth continuing in healthy double digits. \n \nOn the trade front, there’s also potential. The new free trade agreement with the UK is being finalised and will be implemented over time. This offers significant opportunities for labour-intensive industries like leather, textiles, and gems and jewellery. Even in our surveys, manufacturers in these sectors are showing optimism about business improving. Of course, a lot depends on how these trade negotiations are implemented on the ground. Given the healthy domestic economic outlook and the continuing policy initiatives to strengthen credit access, we expect to see consistently good credit growth in MSME sector in 2025-26. \n\n',
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
                  'Agreed. Thank you both for a really rich conversation. It’s always valuable to bring these sectoral and credit insights together, and I’m sure our readers will appreciate the depth. ',
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

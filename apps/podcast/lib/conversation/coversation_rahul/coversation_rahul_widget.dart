import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'coversation_rahul_model.dart';
export 'coversation_rahul_model.dart';

class CoversationRahulWidget extends StatefulWidget {
  const CoversationRahulWidget({super.key});

  @override
  State<CoversationRahulWidget> createState() => _CoversationRahulWidgetState();
}

class _CoversationRahulWidgetState extends State<CoversationRahulWidget> {
  late CoversationRahulModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoversationRahulModel());

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
              text: 'Tariffs, Exports, and Global Headwinds\n\n',
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
                  'Welcome back to MSME Conversations. In July, our Index number moved up to 0.59, from 0.58 in June. It’s been inching up since April - 0.56, 0.57, 0.58 and now 0.59. But if you look at the full year, the momentum seems to be muted compared to FY24. We had a much higher pace last year, now that momentum is moderating. This aligns with what we’re seeing in GVA numbers too. \n \nGrowth estimates show GVA at current prices in Q1 was 8.8% YoY, lower than 9.5% last year. In real terms, growth in agriculture is steady, manufacturing is flat, construction sector growth is a bit lower than last year, and services remain the standout performer. \n \nRight now, we’re in what I’d call, not “turbulent”, that’s a strong word, but definitely not very stable times. I say this for two reasons: weather and tariffs. On the weather side, we initially expected an above average rainfall this monsoon making for bright prospects. But the intense rainfall in August has caused severe flooding and crop damage in many states, especially in Punjab, which has seen its worst flood since 1988, has about 4.5 lakh hectares affected so far. IMD has also projected September to see above-average rains. \n \nOn the tariff side, much is unfolding, and to help us unpack that, we’re joined today by ',
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
              text: 'Rahul Mazumdar ',
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
                  'from Exim Bank. He has deep expertise in trade policy. Rahul, thank you for joining us. \n \nWhen I saw your LinkedIn post last month on the Trump tariffs, it struck a chord. You wrote about the \"fatigue\" of watching these tariff announcements, and how even tracking their impact was draining. So now that much of it has been implemented, how do you feel? \n\n',
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
              text: 'Rahul Mazumdar: ',
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
                  'Thanks so much, Sumita. It’s a pleasure to be here. \n \nWell, I think Trump is here to stay, at least for the remainder of his term. He’s clearly using it to push his trade agenda. The 50% tariffs on Indian exports were unexpected. India assumed our relationship with the U.S. was stable enough to prevent such measures, but here we are. \n \nA big area of concern for India in global trade has always been agriculture. It’s something we’ve fought for in the WTO, and now it seems like the U.S. is trying to get a foot in the door. Recently, India has quietly reduced some agricultural imports from the U.S., and that too has had tariff implications. \n \nInterestingly, the current focus of U.S. tariffs is mostly on goods. Services haven’t come under fire yet. That is important for India, because our exports have consistently been buoyed by services - IT, remittances, etc. Together with merchandise, our total exports crossed USD 820 billion, the highest ever. But that strength came from services, not merchandise. \n \nLet me give you some numbers. Pre-COVID in FY20, India’s merchandise exports were USD 331 billion. They rose to USD 450 billion by FY23 and slightly dipped to USD 437 billion last year. Services carried the growth. \n \nMeanwhile, Trump has continuously not touched sectors which are of U.S. interest, like pharma, electronic goods such as smartphones, semiconductors, rare earths, amongst a few others. \n \nBut the sectors affected most by these high tariffs are labour-intensive, and that’s where MSMEs come in, and the various clusters - gems and jewellery (Surat), textiles (Tirupur, Surat, Panipat) leather (Agra, Kanpur, Kolkata, Ambur-Ranipet), Carpets (Bhadohi, Mirzapur, Srinagar) - all these sectors are being hit hard. \n \nEstimates show 54-55% of India’s goods exports to the U.S. are impacted, valued at nearly USD 51 billion in 2024 and which will face some element of turbulence in the short term. \n \nThe interesting thing is that many exporters had anticipated this. Early in Feb/March when Trump has announced his intention to have a 25% tariff on April 2nd (or what he called as Liberation Day), many exporters did quickly look at the short-term gains by frontloading their shipments to US which is a crucial market for them. In fact, India’s exports to the USA had increased by over 22% y-o-y during April-June 2025 (first Q1 2026), as compared to a growth of just 1.7% in overall exports from India to US. India’s export of telecom instruments to US experienced a 191% y-o-y growth, while electronic components saw y-o-y growth of 35% during Q1 of FY2026. There was also a double-digit growth of India’s exports of items like - marine products, electrical machinery, and RMG, indicating a significant frontloading of shipments. \n \nWhile Q1 looks good. But this won’t last. Q2 may hold up, but Q3 and Q4 will be tough. \n \nFrom April to July, India’s total merchandise exports stood at USD 144 billion, compared to USD 140 billion last year. So, the story looks good where we stand with this data but looking ahead, we’ll see stress in export numbers. \n\n',
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
                  'What about the recent FTAs that have been signed, for instance with the UK, how do you view these?\n\n',
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
              text: 'Rahul Mazumdar: ',
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
                  'So far, our trade deals have not panned out as anticipated. India has signed three major FTAs between 2010 and 2012, with ASEAN, Japan and South Korea, but all of them led to trade deficits. Then came RCEP, which we opted out of. Post- COVID, we revisited FTAs and signed new ones with UAE, Australia, and the UK. \n \nSo, India having burnt its fingers in FTA in the past, and having showed reluctance to sign RCEP, the recent ones are a brave step forward. In fact, the one with UK signed a few months back offers lot of hope for India, as it presents a huge opportunity for MSMEs as it allows duty-free access for approximately 99% of Indian exports by value into the UK, encompassing nearly entire range of goods and services, alongside simplified rules of origin. Sectors in which MSMEs may witness high gains through the FTA with UK will possibly be, textiles & garments, sports goods and toys, engineering goods, chemicals, pharmaceuticals, electronics, etc. \n \nIt may also be worth noting that in the FTA with UK, India has a dedicated Government Procurement chapter which outlines rules for fair and non-discriminatory access to procurement markets for both countries\' businesses. \n\n',
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
                  'That’s a huge gap. Who do you think is responsible for spreading this awareness amongst the MSMEs? \n\n',
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
              text: 'Rahul Mazumdar: ',
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
                  'Both the government and industry chambers need to work together to ameliorate all the issues plaguing awareness. In fact, Ministries like Commerce, MSMEs, including Finance should look at providing clear directions to these chambers to disseminate relevant information towards capacity-building amongst exporters. \n \nRemember, nearly 46% of India’s exports come from MSMEs. Without proper outreach, they’ll never tap into these opportunities like FTA. We talk about India becoming the 4th largest economy by year-end. But we forget that our global goods export share is still hovering around 1.8%. \n \nAnd here’s the real reason why the U.S. can push us around but not China. We thrive because of the market we provide, and not essentially the goods that we produce. China, in contrast, built capabilities through technology-oriented products and at times also because of their ability to produce at mass scale thus offering both quality and price competitiveness. \n \nA lot of what we export today is still commodity-based - petroleum products, gems and jewellery. Even electronics, now a top 10 export, is largely due to PLI-fuelled assembly. It’s a start, but we’re still far from becoming a hi-tech-driven exporter. No firm is ready to put in money into R&D, which needs serious introspection if India wants to be recognized beyond its huge consuming market. \n \nIf you look at pharma and auto, both came up post-2000. These were innovative sectors. Today, Tamil Nadu, Gujarat and Haryana are hubs for auto. That’s what scale and investment can do. \n\n',
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
                  'So, if I summarise your views: Q1 has been good for exports, but the rest of this year will be harder. The tariff shock has sectoral and regional impacts. And unless we are jolted into long-term capability-building, we may just continue playing catch up.\n\n',
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
              text: 'Rahul Mazumdar: ',
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
                  'Exactly. MSMEs in clusters like Surat, Tiruppur, Kanpur will feel the heat. Especially in Q3 and Q4. \n\nThere’s talk of market diversification, but that’s easier said than done. Bangladesh and Cambodia enjoy lower tariffs in many EU countries. Even if we look at the UAE or Australia, the markets are small. UK offers some hope, given the FTA and trade surplus, but it’s not enough. \n\n',
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
                  'And none of this was anticipated before Trump returned to office. \n\n',
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
              text: 'Rahul Mazumdar: ',
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
                  'Not at all. The whole strategy defies traditional trade theory. The U.S. is going against Ricardian logic. The US has even made a fuss about Harley-Davidson again. While India did reduce the tariffs from 100% to 50% and later to 30-40%, Trump continued to push for a zero-tariff policy. \n \nBut let me give you an example where we need to work on ourselves – since 2013-14, India has been exploring opportunities in CLMV countries - Cambodia, Laos, Myanmar, Vietnam, so Indian companies could enter ASEAN, and thereafter to other countries benefitting from the FTAs signed by them. But very few firms were willing to go. Even with incentives, they preferred to play safe in India. \n \nSo, unless MSMEs build an appetite for risk, nothing changes. Many don’t explore Africa either. Our share in African imports is 6-7%, while Europe’s is 33% - a huge anomaly exists. \n\n',
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
              text: 'Is the government considering any targeted support? \n\n',
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
              text: 'Rahul Mazumdar: ',
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
                  'Yes. The upcoming Export Promotion Mission, with a corpus of ₹25,000 crore, was announced in the February Budget to provide financial aid, improved credit facilities, enhanced market access, and branding support to help Indian businesses navigate global market challenges. It’s not just a Trump response, but a broader initiative. That said, it should’ve come earlier. \n \nSupport is one part. MSMEs also need to learn how to use these schemes and as I mentioned earlier the Chamber of Commerce has an important role to play with their members. \n \nIn fact, fintechs are playing a huge role. In fact, many banks in private and public are using digital platforms to provide in-principle sanctions up to ₹1 crore within an hour or even less. However, many a times traditional MSMEs still prefer age-old banking or in-person dealings. They need to adapt to new age tools and systems. Only then will policy support truly reach them. \n \nThere are certain things which I feel needs a concerted effort by India over a 5-year horizon which will help Indian goods to be taken seriously - firstly, producing quality goods and possibly at a mass scale; secondly, exporters should be aware of the changing market dynamics globally; and thirdly, sustainability is no more a vogue, it’s becoming a rule in many developed countries like EU and Indian businesses should plan accordingly if it wants to continue to exports in these regions. \n\n',
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
                  'Absolutely. Thank you so much, Rahul. That was incredibly insightful. \n\n',
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
              text: 'Domestic Demand, GST Reforms, and MSME Impacts \n\n',
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
                  'Welcome back, Narsi. We missed you in yesterday’s conversation with Rahul. Hope you enjoyed your time away. I’m sure you’ve heard the recording by now. A lot of voices in the industry feel that the GST reform was too little, too late. What’s your take on the policy changes we’ve seen? Do you think they’ll help lift demand? \n \n',
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
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            TextSpan(
              text:
                  ' So Sumita, I think the GST rate changes are part of a much larger rationalisation agenda and could not have come at a better time. Eventually, we’re moving to a simplified two-rate slab structure. What they’ve done is move most merit goods into the 5% slab, the larger group into the 18% slab, and a few sin and luxury goods into the 40% slab. \n \nThis is a good move. Whether the rate reduction will get passed on in full by firms, and whether that triggers demand straight away, those are two separate questions. \n\n',
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
                  'So, the impact on demand is not to be seen simply as sector-wise? \n\n',
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
                  ' Right. So, let’s say a particular good that costs 100 now costs ₹93. That’s ₹7 serving. But that ₹7 won’t necessarily go back into the same sector. I may use it to go get a blood test I’d been postponing, or I may renew my insurance. \n \nSo, it’s not that the electronics sector, or the diagnostic sector, or the travel sector that may see a spike. The impact is likely to be broad-based and spread across sectors. \n',
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
              text: '\nSumita Kale: ',
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
                  'So, what we may see is a slow, broad-based rise in demand. \n\n',
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
                  'Exactly. In many sectors, people are already anticipating this. Take auto for example. They waited for the GST rate announcement to be implemented, and now we should see a demand spurt. If a two-wheeler that costs ₹90,000 drops by 10%, the new price becomes ₹81,000. That directly impacts EMI amounts. For people who are taking loans, this matters. \n\n',
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
              text: 'And this kind of drop helps banks too?\n\n',
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
                  'Yes, in fact, it does. For banks, if EMIs reduce, the repayment schedule becomes less stressful. And customers may upgrade, so instead of a ₹90,000 bike, someone might now opt for a ₹1 lakh model with better features. It helps the manufacturer, the bank, and the consumer. \n \nAlso, if people start taking more loans and repaying them well, that helps the banks build a better profile of household behaviour. If more customers are added to the banking system with good repayment habits, it strengthens the financial system overall. \n\n',
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
              text: 'And you mentioned healthcare as well earlier? \n\n',
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
                  'Yes. The reduction in diagnostic charges, say for a CT scan, might lead to more people coming in earlier for testing rather than waiting. Similarly, some may choose to buy better health insurance. \n \nEven if 50% of the GST rate cut benefit is passed on, that still leaves people with more disposable income. And that affects how they spend or save. \n \nSome of it may even go into CASA deposits, which again helps the banking system. \n \n',
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
              text: 'And for firms? \n\n',
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
                  'For firms, especially in sectors like cement or construction, we’ve seen some lack of full pass-through in the past. So, implementation is key. But for industries where competition is intense, like autos or FMCG, the rate cut benefit will be passed on more aggressively. \n \nI’d just add one note of caution, on input tax credit (ITC). In some categories, the ITC benefit may not be available anymore. So that needs to be clarified and addressed to avoid any distortions. \n \nBut overall, this is a big reform. It sends a signal to the market that the government is serious about putting more money into consumers’ hands. And if the industry responds responsibly by passing on the benefits, we’ll see a positive shift in both demand and formalisation. \n\n',
              style: TextStyle(),
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
                  'Right, we have some other positive trends for the economy also, for instance the business survey from the Retailers Association has seen a robust 8% YoY growth for two consecutive months of June and July, with good sales growth in QSR chains, jewellery, footwear. Also bank credit to MSME has been growing extremely robustly- at around 24.5% YoY for micro and small firms in July. \n\n',
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
                  'Yes, so there is some momentum in credit already. If the rate cuts spur more demand, more firms will come forward to borrow for expansion or working capital. And that becomes a virtuous cycle.\n\n',
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
                  'Let’s hope so. This will prove a good counterbalance to the shocks that we were talking about earlier coming from tariff and weather. Thanks Narsi and Rahul. I think this was a very insightful session and our readers will enjoy it. ',
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

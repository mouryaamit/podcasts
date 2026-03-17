/* Auto-generated seed file from db-full.json */
START TRANSACTION;

-- Clear existing data
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE videos;
TRUNCATE TABLE conversation_messages;
TRUNCATE TABLE conversation_blocks;
TRUNCATE TABLE ai_summary_conversations;
TRUNCATE TABLE ai_summaries;
TRUNCATE TABLE timestamps;
TRUNCATE TABLE highlight_tags;
TRUNCATE TABLE highlights;
TRUNCATE TABLE episode_details;
TRUNCATE TABLE episode_people;
TRUNCATE TABLE people;
TRUNCATE TABLE episode_tags;
TRUNCATE TABLE episodes;
SET FOREIGN_KEY_CHECKS = 1;

-- episodes
INSERT INTO episodes (slug, title, banner, subtext, month, duration, youtube_share_link, featured) VALUES ('msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead', 'MSMEs at a Turning Point: Budget 2026, FTAs, and the Road Ahead', 'Explore_Budget_cover.webp', 'India''s Union Budget 2026 arrives as MSMEs show cautious recovery...', 'February 2026', '45 min', 'https://youtu.be/eL6ee7hfAqo?si=4ytuSofESouU66mC', 'true');
INSERT INTO episodes (slug, title, banner, subtext, month, duration, youtube_share_link, featured) VALUES ('how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets', 'How MSMEs, Retail Investors & Smarter IPOs Are Reshaping Capital Markets', 'Explore_Tirthankar_cover.webp', 'India''s capital markets are undergoing a transformation...', 'January 2026', '30 min', 'https://youtu.be/7emcFg25dHY?si=A3Hy-SN2z9oA8dT3', 'false');
INSERT INTO episodes (slug, title, banner, subtext, month, duration, youtube_share_link, featured) VALUES ('the-crisis-choking-india-s-6-4-cr-msmes-into-silence', '₹18 Lakh Cr Unpaid:The Crisis Choking India''s 6.4 Cr MSMEs into Silence', 'Explore_Deepak_cover.webp', 'India''s economy rarely moves in a single direction...', 'December 2025', '24 min', 'https://youtu.be/2CUpoozOBBk?si=WaEu6QhqlHLjZNDO', 'false');
INSERT INTO episodes (slug, title, banner, subtext, month, duration, youtube_share_link, featured) VALUES ('podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive', 'GST 2.0 vs. 50% US Tariffs: Can India''s Manufacturing MSMEs Survive?', 'Explore_Srivats_cover.webp', 'The numbers look promising. RBI upgraded GDP outlook to 6.8%...', 'October 2025 ', '37 min', 'https://youtu.be/eLxnZ85mbkA?si=V7ivFPzTk7_Zyqtp', 'false');
INSERT INTO episodes (slug, title, banner, subtext, month, duration, youtube_share_link, featured) VALUES ('podcast/the-real-impact-of-trumps-tariff-uncertainty-lessons-for-indias-exporters', 'The Real Impact of Trump''s Tariff Uncertainty & Lessons for India''s Exporters', 'Explore_Rahul_cover.webp', 'India''s MSME story is shifting: activity is ticking up, but...', 'September 2025', '22 min', 'https://youtu.be/xAnDzidUwGU?si=Qiqce31weGhgSNd3', 'false');
INSERT INTO episodes (slug, title, banner, subtext, month, duration, youtube_share_link, featured) VALUES ('podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit', 'From Fast Money to Smart Money: How Data, Discipline can Rewrite MSME Credit', 'Explore_Zeenat_cover.webp', 'India''s MSME sector is resilient but that doesn''t mean lenders...', 'August 2025', '42 min', 'https://youtu.be/hhbeWmcBhHo?si=ke-NEbNxjAgtgCz0', 'false');
INSERT INTO episodes (slug, title, banner, subtext, month, duration, youtube_share_link, featured) VALUES ('podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist', 'Decoding India''s MSME Growth Paradox with SIDBI''s Chief Economist', 'Explore_Suman_cover.webp', 'India''s MSME sector is showing resilience—delinquency...', 'July 2025', '35 min', 'https://youtu.be/zO9ZsZCiZX8?si=d36tb8IuHdcAx-a_', 'false');

-- episode_tags
INSERT INTO episode_tags (episode_id, tag)
SELECT id, 'MSME Conversations' FROM episodes WHERE slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO episode_tags (episode_id, tag)
SELECT id, 'MSME Conversations' FROM episodes WHERE slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO episode_tags (episode_id, tag)
SELECT id, 'MSME Conversations' FROM episodes WHERE slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO episode_tags (episode_id, tag)
SELECT id, 'MSME Conversations' FROM episodes WHERE slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO episode_tags (episode_id, tag)
SELECT id, 'MSME Conversations' FROM episodes WHERE slug = 'podcast/the-real-impact-of-trumps-tariff-uncertainty-lessons-for-indias-exporters';
INSERT INTO episode_tags (episode_id, tag)
SELECT id, 'MSME Conversations' FROM episodes WHERE slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO episode_tags (episode_id, tag)
SELECT id, 'MSME Conversations' FROM episodes WHERE slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';

-- people + episode_people
INSERT INTO people (name, profile_image) VALUES ('Mr. Unnikrishnan Kottekkat', 'unnikrishnan.webp');
INSERT INTO people (name, profile_image) VALUES ('Dr. Laveesh Bhandari', 'Lavesh.webp');
INSERT INTO people (name, profile_image) VALUES ('Mr. Anil Bharadwaj', 'anil.webp');
INSERT INTO people (name, profile_image) VALUES ('Dr. Sumita Kale', 'sumita_circle_img.webp');
INSERT INTO people (name, profile_image) VALUES ('Mr. Narasimhan V', 'narsi_circle_img.webp');

-- episode_people
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'guest'
FROM episodes e
JOIN people p ON p.name = 'Mr. Unnikrishnan Kottekkat'
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'guest'
FROM episodes e
JOIN people p ON p.name = 'Dr. Laveesh Bhandari'
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'guest'
FROM episodes e
JOIN people p ON p.name = 'Mr. Anil Bharadwaj'
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Dr. Sumita Kale'
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Mr. Narasimhan V'
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Dr. Sumita Kale'
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Mr. Narasimhan V'
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Dr. Sumita Kale'
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Mr. Narasimhan V'
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Dr. Sumita Kale'
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Mr. Narasimhan V'
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Dr. Sumita Kale'
WHERE e.slug = 'podcast/the-real-impact-of-trumps-tariff-uncertainty-lessons-for-indias-exporters';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Mr. Narasimhan V'
WHERE e.slug = 'podcast/the-real-impact-of-trumps-tariff-uncertainty-lessons-for-indias-exporters';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Dr. Sumita Kale'
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Mr. Narasimhan V'
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Dr. Sumita Kale'
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO episode_people (episode_id, person_id, role)
SELECT e.id, p.id, 'index'
FROM episodes e
JOIN people p ON p.name = 'Mr. Narasimhan V'
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';

-- episode_details
INSERT INTO episode_details (episode_id, description, youtube_link, youtube_share_link)
SELECT e.id, '["India’s Union Budget 2026 arrives as MSMEs show cautious recovery, reflected in the Sumpoorn Index’s late-2025 uptick. This post-Budget roundtable brings together voices from policy, trade, exports, credit, and fintech to assess whether Budget intent can translate into on-ground execution. In this discussion, experts examine credit and liquidity reforms like mandatory TReDS usage and the new ₹10,000 crore SME Growth Fund, alongside export opportunities from recent FTAs with the EU and UK.","At the same time, panelists highlight persistent frictions - delayed payments, compliance burden, logistics variability, weak local governance, and limited state capacity. The core question remains: while capital access is improving, can India address land, labour, law, and local execution to truly reimagine MSME growth?"]', 'https://www.youtube.com/embed/eL6ee7hfAqo?playsinline=1&rel=0&modestbranding=1', 'https://youtu.be/eL6ee7hfAqo?si=NNTopsNeGdYJwgX2'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO episode_details (episode_id, description, youtube_link, youtube_share_link)
SELECT e.id, '["India''s capital markets are undergoing a transformation so significant, so structural, that its full scale is still difficult to comprehend in real time. This conversation unpacks three of the most important forces driving that change — and the data behind each one is remarkable."]', 'https://www.youtube.com/embed/7emcFg25dHY?si=99WG6-TZcDQj4-o7?playsinline=1&rel=0&modestbranding=1', 'https://youtu.be/7emcFg25dHY?si=A3Hy-SN2z9oA8dT3'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO episode_details (episode_id, description, youtube_link, youtube_share_link)
SELECT e.id, '["India''s economy rarely moves in a single direction — and the October 2024 Sumpoorn Index makes that contradiction vivid.","In this episode, we unpack a month where the headline composite index dropped, macro indicators stayed soft, two-wheeler sales went through the roof, and the MSME payment crisis deepened to levels that demand urgent national attention."]', 'https://www.youtube.com/embed/2CUpoozOBBk?si=B03KC7rglr-iBuZB?playsinline=1&rel=0&modestbranding=1', 'https://youtu.be/2CUpoozOBBk?si=WaEu6QhqlHLjZNDO'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO episode_details (episode_id, description, youtube_link, youtube_share_link)
SELECT e.id, '["The numbers look promising. RBI upgraded GDP outlook to 6.8%, GST 2.0 is boosting sentiment, September auto sales are robust. But beneath the headline optimism, export-oriented MSMEs are in crisis, facing the deadly combination of US tariff uncertainty, tight cash flows, and zero explicit government support.","In this crucial conversation, Srivats Ram breaks down India''s manufacturing outlook with brutal honesty—what''s working, what''s failing, and why uncertainty is the biggest enemy of MSME investment."]', 'https://www.youtube.com/embed/eLxnZ85mbkA?si=k8z2D1fStX6itg1i?playsinline=1&rel=0&modestbranding=1', 'https://youtu.be/eLxnZ85mbkA?si=GpHhOKBZdTd44FW7'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO episode_details (episode_id, description, youtube_link, youtube_share_link)
SELECT e.id, '["India’s MSME story is shifting: activity is ticking up, but the pace of growth is cooling. This discussion unpacks what’s behind it—weather shocks and tariff uncertainty—and what they mean for exp"]', 'https://www.youtube.com/embed/xAnDzidUwGU?si=h_MNa3MAAoxC4fME?playsinline=1&rel=0&modestbranding=1', 'https://youtu.be/xAnDzidUwGU?si=Qiqce31weGhgSNd3'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO episode_details (episode_id, description, youtube_link, youtube_share_link)
SELECT e.id, '["India''s MSME sector is resilient but that doesn''t mean lenders should deploy capital indiscriminately. In this crucial conversation, Zeenat Hamirani, Chief Risk Officer at L&T Finance, breaks down what sustainable MSME growth requires: good data, disciplined decision-making, and moving beyond fragmented credit signals."]', 'https://www.youtube.com/embed/hhbeWmcBhHo?si=f4b4CCQVHP9vOIT_?playsinline=1&rel=0&modestbranding=1', 'https://youtu.be/hhbeWmcBhHo?si=c-wAocSnHz9KPxdu'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO episode_details (episode_id, description, youtube_link, youtube_share_link)
SELECT e.id, '["India''s MSME sector is showing resilience—delinquency at a 5-year low of 1.8%, credit expanding 14.7%, exports up 5% YoY. But beneath these encouraging numbers lies an uncomfortable truth: with 6.53 crore registered MSMEs, a ₹30 lakh crore credit gap still chokes growth potential.","In this crucial conversation, Dr. Sumita Kale and Narasimhan V from Jocata sit down with Suman Chowdhury, Chief Economist at SIDBI, to decode the May Sumpoorn MSME Index and answer the critical question: Are MSMEs truly resilient, or are we missing warning signs?"]', 'https://www.youtube.com/embed/zO9ZsZCiZX8?si=d6xGI7TcHh7H48lg?playsinline=1&rel=0&modestbranding=1', 'https://youtu.be/zO9ZsZCiZX8?si=inpB3ApBA16qD6oH'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';

-- highlights
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_krishnan_details1_cover.webp', 'India''s MSME Export Challenge: What''s Holding Small Businesses Back?', 'February 2026', '1.47 min', 'https://www.youtube.com/embed/k2eFUgXjDNc?si=LNHdxtzmAgdnRWdY', 'https://youtu.be/eL6ee7hfAqo?si=mjGVWGshmeU93uU4'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
WHERE h.episode_id = e.id AND h.title = 'India''s MSME Export Challenge: What''s Holding Small Businesses Back?';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_laveesh_details_cover.webp', 'India''s ''Plumbing'' Needs Fixing for MSME Growth', 'February 2026', '2.30 min', 'https://www.youtube.com/embed/oQfrtpOHFJE?si=LvPO0jTqFWJvP1Yj', 'https://youtu.be/oQfrtpOHFJE?si=H_9ht5Uy59A0FXoT'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
WHERE h.episode_id = e.id AND h.title = 'India''s ''Plumbing'' Needs Fixing for MSME Growth';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_anil_details_cover.webp', 'India''s MSME Paradox: ₹10,000 Crore Announced, Half Unspent', 'February 2026', '2.31 min', 'https://www.youtube.com/embed/270f2erlmyM?si=yll1Ktr6RxYnRAsb', 'https://youtu.be/270f2erlmyM?si=JssxNzz7ZFWDi5X9'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
WHERE h.episode_id = e.id AND h.title = 'India''s MSME Paradox: ₹10,000 Crore Announced, Half Unspent';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_krishnan_details2_cover.webp', 'Technology Is No Longer Optional for Indian MSMEs', 'February 2026', '1.18 min', 'https://www.youtube.com/embed/humb-kbsNDY?si=nVq6-2Hm0-aj3n9t', 'https://youtu.be/humb-kbsNDY?si=pedxoFXpMRjw_fG3'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
WHERE h.episode_id = e.id AND h.title = 'Technology Is No Longer Optional for Indian MSMEs';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_Tirthankar_details1_cover.webp', 'How Stricter Listing Rules Cut IPOs But Improved Performance', 'January 2026', '1.27 min', 'https://www.youtube.com/embed/zyJczm_CqW4?si=kceA1aIUJcM8aM1b', 'https://youtu.be/zyJczm_CqW4?si=4jzurFrtYDyDva2q'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
WHERE h.episode_id = e.id AND h.title = 'How Stricter Listing Rules Cut IPOs But Improved Performance';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_Tirthankar_details2_cover.webp', 'Why Indian Households Are Driving the Stock Market', 'January 2026', '1.42 min', 'https://www.youtube.com/embed/XGVaehWKQd4?si=mrn2hBbm7cjYnNBt', 'https://youtu.be/XGVaehWKQd4?si=Gc-xnAkXkp_Ri7JC'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
WHERE h.episode_id = e.id AND h.title = 'Why Indian Households Are Driving the Stock Market';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_Tirthankar_details3_cover.webp', 'How India''s Listed MSMEs Went From 2 to 130 And Why It Changes Everything', 'January 2026', '1.28 min', 'https://www.youtube.com/embed/JyshXeGMLsw?si=OWefZ4z_HGBiQW6v', 'https://youtu.be/JyshXeGMLsw?si=zOgrdZGXV_BDfv-0'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
WHERE h.episode_id = e.id AND h.title = 'How India''s Listed MSMEs Went From 2 to 130 And Why It Changes Everything';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_Deepak_details1_cover.webp', '48-Hour Credit & the MSME Digital Revolution', 'December 2025', '3.47 min', 'https://www.youtube.com/embed/MYgBmspJuzI?si=z_xYNA23aX3k1U_y', 'https://youtu.be/MYgBmspJuzI?si=n8Pcs1UPGqh-WVfQ'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
WHERE h.episode_id = e.id AND h.title = '48-Hour Credit & the MSME Digital Revolution';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_Deepak_details2_cover.webp', 'Compliance Over Credit: PSBs Failing MSMEs?', 'December 2025', '1.50 min', 'https://www.youtube.com/embed/twNw7lmaRdc?si=j7bys_kzqz29j9gs', 'https://youtu.be/twNw7lmaRdc?si=ECK8uGX5WZCfr2zW'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
WHERE h.episode_id = e.id AND h.title = 'Compliance Over Credit: PSBs Failing MSMEs?';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_Deepak_details3_cover.webp', '₹18 Lakh Crore Unpaid: MSMEs Waiting for Payment', 'December 2025', '3.21 min', 'https://www.youtube.com/embed/mEFhSHo9v1w?si=zUKthLr8ZtyBA9IK', 'https://youtu.be/mEFhSHo9v1w?si=W1lLa9dnB03bi6RU'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
WHERE h.episode_id = e.id AND h.title = '₹18 Lakh Crore Unpaid: MSMEs Waiting for Payment';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_srivats_details1_cover.webp', 'Is there a Magic Bullet to Aid the Auto Sector?', 'October 2025', '1.31 min', 'https://www.youtube.com/embed/LpOLpSboZUw?si=N2OVWv5B-CdQkkY4', 'https://youtu.be/LpOLpSboZUw?si=_nULVURWxCtF_JJG'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
WHERE h.episode_id = e.id AND h.title = 'Is there a Magic Bullet to Aid the Auto Sector?';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_srivats_details2_cover.webp', 'Atmanirbhar Auto Sector – Import-Export Rebalanced', 'October 2025', '1.41 min', 'https://www.youtube.com/embed/Y-A8PEWr5Cs?si=MBBr1J0T7SaxI3T0', 'https://youtu.be/Y-A8PEWr5Cs?si=W85DuTLyY7NC12qO'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
WHERE h.episode_id = e.id AND h.title = 'Atmanirbhar Auto Sector – Import-Export Rebalanced';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_srivats_details3_cover.webp', 'How ''Ease of Doing Business'' Only Works If You''re Already Big', 'October 2025 ', '1.33 min', 'https://www.youtube.com/embed/ApZaW_AafqQ?si=6vyPrh6_W1PtyUll', 'https://youtu.be/ApZaW_AafqQ?si=wFqCqf5IWvYQ6i4r'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
WHERE h.episode_id = e.id AND h.title = 'How ''Ease of Doing Business'' Only Works If You''re Already Big';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_Rahul_details1_cover.webp', 'How textiles, pharma led Q1 exports but road ahead gets tough', 'September 2025', '1.14 min', 'https://www.youtube.com/embed/a07zDbOUrew?si=rX7jOpHNLRXkLfrD', 'https://youtu.be/a07zDbOUrew?si=3mPcGcMAxMJGs1HW'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
WHERE h.episode_id = e.id AND h.title = 'How textiles, pharma led Q1 exports but road ahead gets tough';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_Rahul_details2_cover.webp', 'India’s FTAs Are Opening Doors But Are MSMEs Aware?', 'September 2025', '1.15 min', 'https://www.youtube.com/embed/QMTtp1Gv7qE?si=hnZqO_i1rlOdjoi_', 'https://youtu.be/QMTtp1Gv7qE?si=RioItY4RjyfT3Oel'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
WHERE h.episode_id = e.id AND h.title = 'India’s FTAs Are Opening Doors But Are MSMEs Aware?';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_Rahul_details3_cover.webp', 'Is India''s Export Problem Less About Capacity and More About Capability?', 'September 2025', '2.26 min', 'https://www.youtube.com/embed/HPLfXNGeyoI?si=uGuBruuu9NXJDbsU', 'https://youtu.be/HPLfXNGeyoI?si=ynUOoHo7uCI-jQdA'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
WHERE h.episode_id = e.id AND h.title = 'Is India''s Export Problem Less About Capacity and More About Capability?';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_zeenat_details1_cover.webp', 'Happy Friction Beats Fast Money for India’s MSMEs', 'August 2025', '1.08 min', 'https://www.youtube.com/embed/tblOtk562Mo?si=ld-Xz1YK0Xdcc6km', 'https://youtu.be/tblOtk562Mo?si=9jOsfUL2ExSmXx8M'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
WHERE h.episode_id = e.id AND h.title = 'Happy Friction Beats Fast Money for India’s MSMEs';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_zeenat_details2_cover.webp', 'Sumpoorn as the Missing Link in MSME Assessment for Financiers', 'August 2025', '1.52 min', 'https://www.youtube.com/embed/veBfkxTIGuQ?si=01PuSNIfBcXDH3fJ', 'https://youtu.be/veBfkxTIGuQ?si=MO9fHuAEGjwjc3pv'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
WHERE h.episode_id = e.id AND h.title = 'Sumpoorn as the Missing Link in MSME Assessment for Financiers';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_zeenat_details3_cover.webp', 'Digital India’s Real Impact: How Tier 3 & 4 MSMEs are Unlocking Growth', 'August 2025', '1.27 min', 'https://www.youtube.com/embed/9uZk68lWeNs?si=MbKOL7Z0XvLddSVi', 'https://youtu.be/9uZk68lWeNs?si=MbKOL7Z0XvLddSVi'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
WHERE h.episode_id = e.id AND h.title = 'Digital India’s Real Impact: How Tier 3 & 4 MSMEs are Unlocking Growth';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_zeenat_details4_cover.webp', 'What Data Reveals about MSME Resilience?', 'August 2025', '1.08 min', 'https://www.youtube.com/embed/uJ0HYxLQp-Q?si=jmKpi0pZS-_Zq7N9', 'https://youtu.be/uJ0HYxLQp-Q?si=jmKpi0pZS-_Zq7N9'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
WHERE h.episode_id = e.id AND h.title = 'What Data Reveals about MSME Resilience?';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_suman_details1_cover.webp', 'Credit Landscape: Has the Share of Micro Borrowers Gone Up?', 'July 2025', '2.13 min', 'https://www.youtube.com/embed/aTaC-fRVMos?si=9U6vjtHGe_WM-LGb', 'https://youtu.be/aTaC-fRVMos?si=xT8NIMWtY9YOOIvB'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
WHERE h.episode_id = e.id AND h.title = 'Credit Landscape: Has the Share of Micro Borrowers Gone Up?';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_suman_details2_cover.webp', 'How Digital India Is Bringing Millions of MSMEs Into Formal Credit', 'July 2025', '1.40 min', 'https://www.youtube.com/embed/kFgdT5Min_Q?si=1aZfjZ_Kf6ljKDxw', 'https://youtu.be/kFgdT5Min_Q?si=2tdoP8ePziNSbwjU'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
WHERE h.episode_id = e.id AND h.title = 'How Digital India Is Bringing Millions of MSMEs Into Formal Credit';
INSERT INTO highlights (episode_id, banner, title, month, duration, youtube_link, youtube_share_link)
SELECT e.id, 'Highlights_suman_details3_cover.webp', 'Trading vs. Manufacturing – Who’s Winning Where?', 'July 2025 ', '1.04 min', 'https://www.youtube.com/embed/HzdTmRU1Kr0?si=XR32rOBr3oQzH42C', 'https://youtu.be/HzdTmRU1Kr0?si=rZp7sarV2lhOgTuP'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO highlight_tags (highlight_id, tag)
SELECT h.id, 'MSME Conversations'
FROM highlights h
JOIN episodes e ON e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
WHERE h.episode_id = e.id AND h.title = 'Trading vs. Manufacturing – Who’s Winning Where?';

-- timestamps
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '0:57', '1:41', 'Introduction to Sumpoorn Index'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '1:54', '2:00', 'Government''s Vision for Small Businesses'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '3:24', '3:51', 'Dysfunctional Local Governments'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '4:45', '5:26', 'Empowering Local Government Managers'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '5:42', '7:42', 'EU-FTA Deal and Export Opportunities'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '8:11', '9:10', 'India''s Manufacturing Landscape for Export'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '10:09', '11:26', 'Budget''s Focus Areas'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '11:32', '12:29', 'Mechanism'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '13:36', '14:32', 'Key Beneficiary Industries from FTAs'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '15:04', '18:03', 'Budget Measures for TReDS'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '19:55', '21:22', 'Champion MSMEs and SME Growth Fund'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '22:41', '26:02', 'Expediting Import/Export Clearances'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '27:24', '29:50', 'Focus on 200 Legacy Clusters'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '31:01', '32:18', 'Capacity of State at Local Level'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '32:27', '33:31', 'Ground Rules for MSME Growth Fund'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '33:48', '34:59', 'Reducing Compliance Burden'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '35:38', '38:48', 'Year Ahead Outlook and Risks'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '39:00', '40:33', 'Long-Term Constraints for MSME Growth'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '41:21', '43:36', 'Role of MSMEs and Government in Opportunities'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '0:30', '2:40', 'MSME Index Performance'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '4:25', '5:00', 'Challenges in Accessing Capital'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '6:15', '7:30', 'Growth in MSME Capital Raising'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '8:50', '9:50', 'Long-Term Vision for MSME Listings'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '10:20', '11:30', 'Role of SEBI Regulations and Investor Confidence'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '13:50', '15:05', 'Impact of NSE''s FCFE Criterion'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '15:32', '17:10', 'Rise of Retail Investors in India'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '17:58', '18:50', 'Promoter Behaviour and Equity Stakes'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '20:00', '22:50', 'Market Liquidity for MSMEs'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '24:00', '25:30', 'Post-Listing Business Performance'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '25:40', '27:20', 'Supporting MSME Growth'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '29:15', '30:00', 'Role of Awareness in MSME Participation'
FROM episodes e
WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '0:21', '1:05', 'Sumpoorn Index Overview'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '0:45', '1:01', 'Macro Economic Indicators'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '6:16', '7:13', 'Auto Ancillary Bright Spot'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '7:51', '12:15', 'MSME Payment Crisis'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '12:17', '13:20', 'PSU Non-Payments'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '13:21', '13:50', 'High-Interest Borrowing'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '16:45', '19:50', 'Digital Credit Solution'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '21:45', '22:52', 'SMA/NPA CI assification Reform'
FROM episodes e
WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '0:19', '1:02', 'Introduction to Sumpoorn MSME Conversations'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '1:02]', '1:36', 'Overview of MSME Sales Activity'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '1:36', '2:18', 'Macroeconomic Context and RBI Outlook'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '2:18', '4:47', 'Outlook for India''s Manufacturing Sector'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '4:47', '7:17', 'Impact of GST Reduction on Consumption'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '7:17', '9:53', 'Challenges for Export-Oriented MSMEs '
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '9:53', '12:19', 'Auto Component Industry and Employment'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '12:19', '13:46', 'Capital Intensity vs. Labor Intensity in Auto Sector'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '13:46', '15:03', 'GST 2.0 Impact on Automotive Segments'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '15:03', '17:47', 'MSME Export Sector Challenges and Government Support'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '17:47', '21:18', 'Future of the Automotive Sector and Export Ambitions'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '21:18', '25:59', 'Magic Bullet for Auto Sector Growth'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '26:03', '28:03', 'Domestic Manufacturing and Government Schemes'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '28:03', '33:37', 'Role of State Government and Access to Capital'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '33:37', '36:34', 'Optimistic Outlook and Parting Remarks'
FROM episodes e
WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '0:20', '0:47', 'MSME Activity & Growth Momentum'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '0:48', '1:12', 'GVA Results and Sectoral Performance'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '1:13', '1:25', 'Unstable Times - Weather & Tariffs'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '1:25', '1:57', 'Impact of Weather'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '1:58', '2:18', 'Introduction of Rahul Mazumdar'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '2:19', '2:46', 'Fatigue with Trump''s Tariffs'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '2:56', '4:25', 'India''s Response to Tariffs'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '4:26', '5:36', 'Focus on Merchandise vs. Services'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '5:37', '6:10', 'India''s Export Composition'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '6:11', '7:10', 'US Strategic Tariff Avoidance'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '6:10', '6:47', 'Impact on Labor-Intensive Industries'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '6:48', '8:00', 'Exporters'' Preemptive Measures'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '8:01', '8:19', 'Future Challenges for Exports'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '8:20', '9:02', 'Government Mechanisms & GST'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '9:03', '10:08', 'Changing Global Markets & FTAs'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '10:09', '11:08', 'Lack of Awareness Among MSMEs'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '11:09', '11:59', 'Responsibility for Awareness'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '12:01', '12:57', 'India''s GDP vs. Export Strategy'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '12:58', '13:42', 'RCEP and Missed Opportunities'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '13:43', '14:59', 'European Union''s CBAM'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '14:50', '17:03', 'Disparity in Exported Products'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '17:04', '17:55', 'Electronic Industry & PLI Scheme'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '17:04', '17:55', 'Strong Industries - Pharma & Automobiles'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '17:56', '18:48', 'Impact on MSME Clusters'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '18:49', '19:57', 'Challenges of Diversification'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '20:03', '21:49', 'Government Support & Future Outlook'
FROM episodes e
WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '1:53', '2:17', 'Bank Credit to MSMEs'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '3:38', '3:38', 'Sectoral Performance and Stress Points'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '3:41', '4:02', 'Stressed Sectors'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '4:12', '4:50', 'Impact of E-commerce'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '4:51', '5:35', 'Flourishing Sectors'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '6:43', '6:43', 'Challenges and Solutions in MSME Lending'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '6:43', '7:12', 'Unsecured Credit Concerns'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '10:31', '10:57', 'Responsible Lending'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '11:00', '11:27', 'Lessons from MFI Industry'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '11:45', '12:00', 'Crisis Management Mantra'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '12:03', '12:13', 'Implementing Regulations: Proactive implementation of MFI guidelines'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '20:03', '20:03', 'Data-Driven Lending and Future Outlook'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '20:03', '20:32', 'Utilizing Ecosystem Data'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '20:38', '20:55', 'Cyclops Initiative'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '23:16', '24:11', 'Comprehensive Data Analysis'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '24:22', '24:35', 'Holistic Banking Assessment'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '25:26', '26:08', 'Happy Friction'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '26:35', '26:35', 'Sumpoorn Index Predictions'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '28:08', '28:47', 'Role of Sumpoorn Index'
FROM episodes e
WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '0:23', '1:16', 'Introduction to Sumpoorn MSME Index & Sales Activity'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '1:17', '1:45', 'Top Performing States (Telangana & Uttar Pradesh)'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '1:50', '3:31', 'Monsoon Impact & Rural Demand Outlook'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '3:35', '5:16', 'Private Consumption & Retail Sector Trends'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '5:23', '7:31', 'Auto Sector Performance & Export Growth'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '9:00', '12:01', 'MSME Credit Landscape & Asset Quality'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '12:01', '18:00', 'Microcredit Moderation & Policy Initiatives'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '18:15', '21:07', 'Health of MSME Portfolio & Delinquency Rates'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '21:11', '23:25', 'Real Estate Slowdown & Infrastructure Projects'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';
INSERT INTO timestamps (episode_id, from_time, to_time, title)
SELECT e.id, '31:27', '34:28', 'Optimism for MSME Lending & Export Orders'
FROM episodes e
WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist';

-- ai_summaries + ai_summary_conversations
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '1', 'MSMEs Enter FY26 with Strong Sentiment', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["The Sumpoorn Index closed 2025 at 0.60, signaling improving momentum.","Despite global volatility, MSMEs are entering the new financial year with confidence and stability."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '2', 'Budget 2026: Intent Is Clear — Execution Is the Real Test', 'The Budget ticks the boxes on:'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Credit access","Liquidity","Manufacturing competitiveness","Trade facilitation","But the core question remains:","Can intent translate into ground-level execution?"]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '3', 'Trade Opportunity: EU-FTA & US Tariff Shifts', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Access to a 27-country EU market.","Potential USD 33 billion export opportunity.","Labour-intensive sectors (textiles, garments, processed food) stand to gain","But competitiveness depends on upgrading manufacturing capability."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '4', 'The CBAM Challenge', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('[" The Carbon Border Adjustment Mechanism (CBAM) remains a key gap.","Without an EU-aligned carbon framework, MSMEs may struggle to scale exports to Europe."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '5', 'Delayed Payments: TReDS Gets a Structural Push', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Mandatory CPSE participation.","Digital invoice trail.","CGTMSE-linked protection for lenders.","This could significantly improve MSME liquidity — if enforced rigorously."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '6', '₹10,000 Crore SME Growth Fund: Equity Gets Attention', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Access to equity remains a scaling bottleneck.","The Growth Fund aims to support “champion SMEs” — but operational clarity and speed of deployment will matter."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '7', 'Clusters Need More Than Announcements', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["200 legacy clusters identified, but no additional allocation for cluster development.","Infrastructure gaps, connectivity, and shared facilities remain key constraints."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '8', 'State Capacity Is the Real Constraint', 'Recurring theme across speakers:'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Land, labour, law, logistics, and local governance.","Without empowering local administrators and improving execution capacity, structural bottlenecks will persist."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '9', 'Compliance & Justice Gaps Remain', 'Budget largely silent on:'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Contract enforcement","Reducing compliance burden","Access to justice","Ease of doing business still requires deeper reform."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '10', 'Technology & Competitiveness Are Non-Negotiable', 'MSMEs must:'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Adopt AI & technology","Improve production efficiency","Upgrade capabilities","With FTAs opening markets, global competition is no longer optional — it’s immediate."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '11', 'One-Year Outlook: Cautiously Optimistic', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Short-term outlook: positive momentum.","Long-term transformation depends on fixing fundamentals — Land, labour, law, logistics, and local governance."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '1', 'Sumpoorn Index Shows Sharp Rebound', NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["The Index rises to 0.61, marking the strongest sales growth pace of FY26.","Festival-related slowdown in October reversed, with clear signs of renewed demand momentum."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '2', 'Policy Tailwinds Are Supporting Recovery', NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["GST rate cuts, repo rate reduction, income tax rebate and low inflation are translating into improved business confidence.","Policy transmission is beginning to reflect in MSME operating conditions."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '3', 'Manufacturing Revival Is Driving Supply-Chain MSMEs', NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Manufacturing IIP grew 8.0% YoY in November, led by basic metals, pharma and automobiles.","This strengthens demand across MSME supplier ecosystems."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '4', 'Auto Sector Turnaround Offers Strong Multiplier Effects', NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Auto companies reported strong growth in December, with rising waiting periods for certain models.","Improved auto demand supports ancillary MSMEs through higher order flows."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '5', 'Rural Conditions Remain Supportive', NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Strong Kharif output, better reservoir levels and improved Rabi sowing signal stable rural demand.","Agriculture-linked optimism continues to underpin MSME resilience."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '6', 'Exports Are Diversifying Beyond Traditional Dependence', NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Non-petroleum exports rose sharply, with engineering goods, electronics, pharma and gems & jewellery showing strength.","Export diversification is helping MSMEs manage external uncertainties."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '7', 'Credit Growth Remains Extremely Robust', NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Credit to micro and small enterprises expanded 23.7% YoY in November.","Strong credit flow indicates lender confidence and sustained borrowing demand."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '8', 'MSME Capital Markets Are Entering a High-Growth Phase', NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["SME listings have accelerated significantly over the last few years, with capital raised and market participation expanding rapidly.","Capital markets are emerging as a credible growth path beyond traditional credit."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '9', 'Governance and Investor Participation Are Strengthening the Ecosystem', NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Stronger SEBI norms and improved disclosure standards are enhancing post-listing performance.","Rising retail and mutual fund participation is deepening liquidity and confidence."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '10', 'Awareness Is the Next Big Unlock', NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["GST rate cuts, repo rate reduction, income tax rebate and low inflation are translating into improved business confidence.","Policy transmission is beginning to reflect in MSME operating conditions."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '1', 'Sumpoorn Index Softens — But Stays in Expansion', NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["The Index drops to 0.53 from 0.58 in September, reflecting slower sales activity.","The fall is largely seasonal, driven by fewer working days during the festive period, rather than a structural slowdown."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '2', 'Macro Indicators Echo the Soft Patch', 'October data shows weaker activity across indicators:'
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["IIP growth at 0.4%","GST growth around 2%","Exports declining year-on-year","Despite strong GDP growth, MSME sales momentum remains muted."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '3', 'Export Slowdown Is Concentrated in MSME-Heavy Sectors', 'Exports fell 11.8% YoY in October, with sharp contractions in sectors such as:'
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Leather, gems & jewellery, jute, carpets, cotton yarn.","Electronics remains the standout exception."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '4', ' Auto Sector Emerges as the Bright Spot', 'Auto sales surged across categories in November:'
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Passenger vehicles, two-wheelers and commercial vehicles all reported strong growth.","This is a positive signal for MSME auto-ancillary clusters."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '5', 'Festive Consumption Is Uneven Across Sectors', NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["While auto demand surged, MSME sales overall did not reflect the same festive boost.","The divergence highlights how sector-specific demand patterns shape MSME performance."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '6', 'Delayed Payments Remain the Biggest MSME Constraint', NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Working capital blockage due to delayed receivables from large buyers continues to strain MSMEs.","Even with reforms like Section 43B(h) and TReDS expansion, payment cycles remain slow."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '7', 'Credit Access Still Forces MSMEs Toward Costly Borrowing', NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["When receivables are delayed, MSMEs often turn to cooperatives, gold loans or informal lenders, sometimes at 18–20% interest rates.","Formal credit channels remain slower than required for small business needs."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '8', 'Digital Credit Infrastructure Could Be a Game-Changer', NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Consent-based lending using GST, UPI and banking data can enable loan approvals within 48 hours or less.","Data-driven underwriting has the potential to dramatically reduce MSME credit friction."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '9', 'SMA Classification Rules May Need Recalibration', NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Delayed receivables can trigger SMA-1 or SMA-2 flags, restricting future borrowing even when businesses are fundamentally healthy.","Policy reform in this area could improve credit flow to MSMEs."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '10', 'Outlook: Gradual Recovery Expected', NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["With improving auto demand, potential export diversification, and digital credit expansion, the Index is expected to move back toward 0.56–0.57 in the coming months.","However, sustained acceleration will depend on stronger demand impulses."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '1', 'MSMEs Stay Resilient — But the “Spurt” Is Still Missing', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["The Index remains at 0.57, holding mild expansion.","The story is stability and resilience, but the economy is still searching for a decisive growth trigger."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '2', 'GST Cuts Lift Sentiment More Than Recent Performance', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Q2 was dampened by monsoon-linked slowdown and “wait-and-watch” buying ahead of GST implementation (Sept 22).","The GST cut is functioning as a forward-looking confidence signal — not a reflection of the immediate past."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '3', 'Festive Quarter Output Will Be Lumpy', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["October has fewer working days (Puja, Gandhi Jayanti, Diwali), so output may not jump visibly even if sentiment improves.","Expect demand to show up in retail and order pipelines, not immediately in production numbers."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '4', 'Auto Demand Likely Improves Post-Monsoon', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Infrastructure-led activity supports trucks/CVs in Q3 vs Q2.","GST 2.0 is price-sensitive at the lower end — likely boosting 2Ws and <4m cars, with spillovers to MSME ancillaries."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '5', 'Income-Tax Relief Didn’t Translate Into Consumption as Expected', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["The ₹1 lakh crore tax relief appears to have aided household balance sheets more than discretionary spending.","GST cuts, by contrast, are more consumption-oriented — and therefore more visible for demand."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '6', 'Export Picture Is Divergent: Engineering Stable, Labour-Intensive Hit', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["US-centric, switchable categories like textiles/garments (e.g., Tiruppur) are pressured.","Engineering is more insulated because switching suppliers requires validation/testing — impact shows up as margin-sharing, not demand collapse."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '7', 'Tariff Uncertainty Is Delaying Capex', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["At 25% duty, firms adjust; at 50%, business models break.","Uncertainty itself is the capex killer — buyers are “waiting till year-end,” and MSMEs feel the delay first."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '8', 'MSME Exporters Need Targeted Support on Cash Flows and Jobs', 'Two tasks were clear:'
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Easier finance for export-oriented MSMEs","Short, time-bound employee retention support (1–2 months) for stressed segments.","Letting the strain drag risks permanent capacity loss and hard-to-reverse layoffs."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '9', 'Manufacturing Scale Will Be Shaped by Localization + Chips', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["PLI/Atmanirbhar is nudging deeper localization and value-add — narrowing the tech gap.","But semiconductors/chips remain a long-gestation constraint; full benefits may take a decade."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '10', 'State Capacity and MSME Credit Friction Remain the “Quiet Bottleneck”', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Tamil Nadu’s proactive FDI outreach helps, but the broader issue persists: the smaller the firm, the harder the system becomes (even with the same bank).","Working capital access and scaling finance remain structural pain points — and will determine how widely manufacturing growth spreads through MSMEs."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, NULL, 'Key Takeaways | July Sumpoorn MSME Conversations', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('[]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '1', 'Sumpoorn Index Continues Gradual Rise', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["The Index moves up to 0.59 in July, continuing a steady climb from 0.56 in April.","MSMEs remain in mild expansion, though overall momentum is slower than FY24 — suggesting resilience without acceleration."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '2', 'Growth Is Holding — But Momentum Is Moderating', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Q1 GVA at current prices grew 8.8% YoY vs 9.5% last year.","Agriculture stable","Manufacturing flat","Construction softer","Services leading","The economy is stable, but growth engines are uneven."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '3', 'External Environment: Weather + Tariffs Are Key Risks', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Severe flooding and above-average rainfall create supply-side uncertainties.","Simultaneously, new U.S. tariff measures increase trade pressure.","MSMEs face a dual shock: climate volatility and policy uncertainty."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '4', 'Export Numbers Look Strong — But Frontloading Is Distorting Reality', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Q1 export growth benefited from shipment frontloading ahead of tariff implementation.","Telecom exports up sharply","Electronics components showed strong growth"]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '5', 'Tariff Impacts Are Cluster-Heavy and MSME-Centric', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Labour-intensive sectors such as textiles, leather, gems & jewellery face the strongest impact.","Export clusters like Surat, Tiruppur, Kanpur may feel pressure first.","Trade shocks are regional and sector-specific."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '6', ' FTAs Offer Opportunity — But Awareness Is the Missing Link', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["The UK FTA provides duty-free access across most goods and services.","High potential sectors include textiles, engineering, toys, chemicals, and electronics.","Execution depends on whether MSMEs understand and use these frameworks."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '7', 'India’s Long-Term Export Challenge Is Capability, Not Market Access', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["India’s goods export share remains around 1.8% globally.","Growth has largely come from services, while manufacturing competitiveness and R&D investment lag.","Long-term success requires moving from commodity exports to technology-led production."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '8', 'GST Rationalisation Could Create Broad-Based Demand Support', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Movement toward a simplified slab structure signals policy intent to boost consumption.","Lower prices may reduce EMI burdens, improve affordability, and support loan repayment behaviour.","Demand gains are likely to be diffused across sectors rather than concentrated."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '9', 'Credit Momentum and Policy Reform Could Create a Virtuous Cycle', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["MSME credit growth remains strong, with micro and small firms showing robust lending expansion.","If GST reductions translate into higher spending, it could drive borrowing, investment, and healthier repayment trends.","Demand + credit = potential positive feedback loop."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '10', 'Outlook: Cautious Optimism with Diverging Forces', NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Domestic demand and GST reforms provide support.","However, tariffs, weather risks, and export uncertainty remain key watchpoints.","The MSME landscape is balancing external stress with internal resilience."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '1', 'Sumpoorn Index Signals Steady Expansion', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["The June Sumpoorn Index rises to 0.58, marking three consecutive months of improvement. MSMEs remain in the zone of mild expansion — stable, resilient, and gradually strengthening."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '2', 'Manufacturing & Exports Show Mixed Momentum', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Manufacturing IIP growth at 3.9% YoY","Non-oil exports resilient despite global trade stress","Engineering & electronics up","Textiles, garments, gems & jewellery under pressure","Growth is uneven — resilience is sector-specific."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '3', 'MSME Credit Growth Is Strong — But Underwriting Is Tightening', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Micro & Small segment credit up 21.8% YoY","Medium segment growing 14–15%","Lenders becoming cautious on unsecured lending","Growth is robust — but risk discipline is returning."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '4', 'FY25 Was a “Disruption Year” for Microfinance', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["The stress wasn’t external — it was self-created.","Post-COVID over-lending and loan stacking exposed weaknesses.","The lesson: Portfolio resilience > blind growth."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '5', 'Responsible Lending & “Happy Friction” Matter', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Fast approvals are not always healthy.","A slightly slower, well-underwritten loan is better than instant, high-cost credit.","Better data + better assessment = sustainable MSME growth."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '6', 'Data Is Transforming MSME Credit', 'Beyond bureau scores:'
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["GST analytics","UPI & payments data","Account Aggregator banking data","Udyam registration insights","AI/ML underwriting is improving access for New-to-Credit borrowers."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '7', 'Auto Sector Is a Key Watchpoint', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["LMVs & LGVs soft","Two-wheelers volatile","Festive season optimism building","Auto trends remain a leading indicator for ","MSME and consumption growth."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '8', 'Domestic Demand Remains the Anchor', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Consumption growth, logistics, pharma, food processing, green energy and tourism are supporting MSME resilience — even as exports face headwinds."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '9', 'July Outlook: Cautious Optimism', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Expect the Index in the 0.58–0.60 range.","Festive season could provide further momentum."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '10', 'Sumpoorn as a Risk Overlay', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["The Index can help lenders classify portfolios (red / amber / green) and align capital allocation with macro trends, moving toward smarter, data-backed risk management."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '1', 'Sumpoorn Index Holds Mild Expansion', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["The Index prints 0.57, staying in the mild expansion zone and improving versus 0.56 (April) and 0.55 (May last year).","MSME activity remains resilient despite global headwinds."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '2', 'A Quiet but Important Year-on-Year Signal', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Since last November, each month has outperformed its previous-year counterpart.","This suggests underlying strengthening — not a surge, but a sturdier base."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '3', 'State Divergence Is Getting Sharper', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Among tracked states, Telangana (0.62) and Uttar Pradesh (0.60) lead performance.","State-wise overlays are becoming essential for both lenders and policymakers."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '4', 'Monsoon Is a Tailwind — With Localised Shock Risk', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Early monsoon coverage supports Kharif sowing and rural sentiment.","But floods/landslides/urban disruption can create localized MSME stress pockets even in a “good monsoon” year."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '5', 'Consumption Is Clearly Healthier Than Last Year', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Retail sales grew 7% YoY in May vs 3% in May 2024.","Discretionary markers are strong: QSR +10%, durables +8%, furniture +8%, apparel +7%."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '6', 'Regional Demand Is Uneven', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Retail performance diverges: South +9%, West +7%, East +4%.","The recovery is not uniform — regional patterns will shape sector outcomes."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '7', 'Auto Signals Are Mixed — LCV Weakness Is a Watchpoint', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Overall registrations improved, but personal vehicle demand softened and LCVs declined, raising concern.","LCVs are a key MSME logistics proxy — weakness here often shows up early."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '8', 'Exports Are Resilient — Helped by China+1 and Category Winners', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["Non-petroleum exports grew ~5% YoY in May; select MSME-heavy segments are doing very well.","Examples cited include strong performance in electronics, marine products, garments, and consumer housewares."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '9', 'Credit Growth Is Moderating — Especially for Unsecured Small-Ticket Loans', NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["System-wide bank credit has slowed (~9%), but MSME PSL remains healthy (~18% YoY).","The key tightening is in fresh unsecured disbursements, reflecting risk discipline and regulatory caution."]') WITH ORDINALITY t(msg, seq);
WITH s AS (
  INSERT INTO ai_summaries (episode_id, summary_index, title, subtitle)
  SELECT e.id, '10', 'Portfolio Quality Is Improving — But Micro Stress Is Rising', ' Yet stress is higher for the smallest borrowers:'
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO ai_summary_conversations (ai_summary_id, sequence, message)
SELECT s.id, seq, msg
FROM s, jsonb_array_elements_text('["MSME portfolio health has improved overall (lower GNPA trend; better quality mix).","<₹1 crore loans: delinquency 3.1% (up)","<₹10 lakh: delinquency 5.8% (up)","With 55% of <₹1 crore borrowers being New-to-Credit, the system needs tighter monitoring + behavioural data underwriting."]') WITH ORDINALITY t(msg, seq);

-- conversation_blocks + conversation_messages
WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Good afternoon, and welcome to this post-Budget roundtable. Today, we have an expert panel to give us views from across the board - Dr. Laveesh Bhandari, President of Centre for Social and Economic Progress that is CSEP, Mr. Anil Bhardwaj, Secretary General for Federation of Indian Small and Medium Enterprises, that is FISME, Mr. Unnikrishnan, who is the Joint Director General of the Federation of Indian Export Organizations, that is FIEO, and Mr. Narasimhan (Narsi), who is our Principal Advisor at Jocata.","I will just give a very small introduction to Jocata Sumpoorn, which is an index which has been tracking the sales activity of MSME since 2019. It has stayed the course, averaging around 0.57 over the last year, through all the global trade shocks. But in November and December, it moved up; it went to 0.61 in November and 0.60 in December. So, as we stand today, we are looking at a very positive, very rosy picture and the budget has given us this long-term view, which is also setting a path for sustained growth. We are entering the new financial year with very good sentiment. With that context, I would like to begin by asking Laveesh for a broad overview. What is the government''s vision for small businesses and where exactly does the budget fit into this vision?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Vision, Support, and What’s Missing'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thanks, Sumita. Great to be here. Giving credit to the government, within whatever their vision is, they have ticked all the checkboxes. The problem, I feel, lies with the vision itself. The government continues to rely a lot on easing the financial burdens of SMEs and is unable to understand the other issues which are far more important. There''s a lot of talk about ease of doing business and deregulation, and we all know that that''s a part of India''s plumbing. If you''re not going to make correction on that side, then we will have to keep on giving different kinds of subsidies or interest.","The first and foremost problem is that our local governments are just completely dysfunctional. Space or location, the logistical framework required around SMEs - local governments are unable to take these on. The second is this whole issue of various regulations. Governments say they''re going to deregulate; it''s going to be impossible to do. There are many compliances which are critical in a smooth functioning economy, but the entity that is enforcing these is completely bankrupt of ideas."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["If there were a couple of things on your wish list for the central government, what do you think they could do?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I think we really need to learn from China. When the managers of the local governments were both empowered and made accountable for the economic growth in those areas, they are the ones who will need to do a whole lot of changes that are required at the local level. It''s going to be impossible to operate from Delhi to say that an industrial park out here needs to have plug and play. You have to empower local administrators - mayors, municipal CEOs, district officials, and make them accountable for small-scale sector outcomes. That’s the single biggest change I would make. And just to add one more thing: if you don’t fix that, then whatever else the government does will only move things marginally - better here, worse there. The fundamentals won’t change."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["So, what you’re really asking for is change at the ground level. That’s clear. Thank you, Laveesh.","Narsi, if you would like to come in now?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Trade, FTAs, and the Export Moment'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Hello World Thanks, Sumita, I just want to bring in two elements right away. First, the EU-FTA that was signed just days before the Budget. Second, the recent and somewhat unexpected movement from the US on reciprocal tariffs.Access to a 27-country EU market is something we’ve been waiting for, and it helps de-risk our exposure to the US. At the same time, we’ve seen indications that close to USD 33 billion of exports may move into a zero-tariff line, potentially covering about 70% of trade.","These are very large numbers. So, before I get ahead of myself, let me bring in Mr. Unnikrishnan. Where do you see immediate action happening, and what needs to change for MSMEs to take advantage quickly?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["At the outset, thank you for inviting me and for these very good questions, which are very relevant today. If you look at India’s manufacturing landscape, we largely produce low-technology products. Globally, about 84% of trade today is in medium- and high-technology products, and that segment is growing fast. India’s share in this category is only about 24%.Last year, India exported over USD 85 billion to the US alone. Of this, 56% came from MSMEs. So, when we talk about opening EU and US markets, manufacturing capability becomes critical. The Budget sends a clear signal on manufacturing competitiveness, infrastructure, and logistics. Our logistics costs are still around 10-12%, compared to single digits globally.That said, one major issue remains unaddressed: CBAM, the Carbon Border Adjustment Mechanism. MSMEs will find it difficult to access EU markets without an EU-approved carbon credit framework. Labour-intensive sectors - textiles, garments, chemicals, agriculture, processed food are likely to see immediate benefits, because labour cost is where India has a natural advantage."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Fantastic – that sets the context. Over to you, Sumita."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Delayed Payments and TReDS'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Coming back to fundamentals - one of the on-the-ground challenges for micro businesses is delayed payments. And FISME has also done a path-breaking study with GAME and C2FO recently on this issue.","This Budget has announced four measures to strengthen TReDS. Anilji, how significant do you think these measures are, and how soon might we see change?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thank you, Sumita. If I had to describe this Budget in one phrase: no big bang, but a steady hand. TReDS has been facing structural problems. Most buyers, particularly CPSEs, are registered but have not been transacting or allowing invoices to be uploaded. The government has now made it mandatory. TReDS has become a clearing house for payments. You will have a clear digital trail available on the platform; you would know who is paying in time and who is not. Previously, banks found it difficult to finance MSMEs whose credit ratings were not good. Now, because they have linked it with CGTMSE, this problem is taken care of; there is insurance available in case of default. I am sure the number of financed invoices is going to jump after making things mandatory for CPSEs. Both Laveeshji and previous speakers pointed out that MSMEs suffer from a problem of scale. This budget announced a Rs 10,000 crore SME growth fund to help in facilitating access to equity. Equity is one of the major bottlenecks because of which MSMEs have not been able to scale up. However, if you look at the Ministry of MSME, they were only able to spend 50% of their allocation last year. That is the question of the state capacity to utilize funds. From a macro perspective, this reinforces a credit-heavy growth strategy and not a capability-building strategy."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["To that point on mandatory transactions, we have about 316 CPSEs onboarded, but most weren''t transacting. Anilji, how dramatically do you see this scaling now that it’s ''must-do''?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["It is no longer a choice. Because it is through TReDS only that you can make the payment, it becomes a clearing house. If you are not paying in time, those invoices convert into negotiable instruments financed by banks. This creates a much-needed lift in liquidity."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Logistics, Clearances, and Ground Reality'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["If I may add one more question - this is to the broader group. Beyond payments, there is the physical movement of goods. The budget refers to the National Trade Facilitation Plan 2.0 with a goal of two-day clearance. Unnikrishnan, what changes at the ground level to make that a reality?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["That is a very valid question. Many times, manufacturers are forced to stop production because there is no predictability of clearance of cargo. The Finance Minister talked about investing in technology, especially AI, so that clearances can happen without manual intervention. Today, the customs system does not interact with other government agency systems like DGFT or the RBI. There are a lot of mismatches of data. A single-window clearance practically is going to help the trade industry clear cargo much faster."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I would like to add here also, see there are a couple of things to be noted. First, the experience of cargo getting cleared either for export or for import differs very widely within India. So, if it is JNPT or Haldia port, the differences are enormous. So, with the same rule, set of rules and with the same kind of infrastructure, digital infrastructure, single window, etc., the experience of exporters and importers varies from place to place, number one. So, that means there is still a lot of manual involvement in the process and that is why the difference. The second is that in the recent meeting of the Board of Trade, a presentation was made and very soon we will have a single interface for all the agencies that have to say something with regards to export and imports, whether it is testing lab, whether it is certificate of origin, whether it is different agencies involved in the process, all of them are connected to one single interface and I think that is the vision. I think if it is realized, it can have a dramatic impact going forward."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Clusters, Capacity, and the Local State'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[" Thank you. One more question, sir. There is going to be a large focus on the 200 legacy clusters and de-bottlenecking them from an infra perspective. If that be so, and I just went through the clusters also, starting with I have the data which says textiles form 40 clusters, we have engineering 30, handicrafts 25, so on and so forth. How many MSMEs would be comprised in these clusters? Because I think that could be a very humongous number where they once again get better capacitized as you all already mentioned in the beginning. How are you going to make sure that they are all now rendered capable to produce and export as well as from a domestic perspective and get the benefit of both the FTA and the budget announcements?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["If I may take that first - while the Budget talks about 200 legacy clusters, there’s no additional allocation for the Ministry of MSME. The Cluster Development Programme remains at ₹431 crore, unchanged. What exactly will be done for these clusters, and with what funding, isn’t clear yet, this still feels more like an idea than an operational plan. Most of these clusters are overwhelmingly MSME-driven and face basic gaps in infrastructure and technology."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Just to add - many clusters struggle because of weak connectivity, lack of common facilities like effluent treatment and shared infrastructure, and poor access to raw materials. Unless these basics are fixed, cluster-level interventions won’t move the needle."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I’d also like to add that a lot of the issues related to clusters are problems of local governance - roads, effluent treatment, water. All that the central government can do is provide finance because that mechanism is working relatively efficiently. You have to go through the local governance system and that is where the problem is."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Actually, I just wanted to come here and add to what the question that Laveeshji has raised about the municipalities and the capacity of the state at the local level. A couple of very important announcements have been made, pledging allocation of 5,000 crore over 5 years for tier 2 and tier 3 cities. The Finance Commission has doubled the allocation to local municipalities to 7.91 lakh crore. For the first time, it is mandatory that they get their accounts audited and put into the public domain. This may address the issues Laveeshji raised by capacitating the local bodies."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Hello World  And from the SME growth fund perspective, where 10,000 crores has been allocated, how do we see the ground level action now emanating? Because the process of identification talks about champion SMEs, which are going to be future ready from an export potential perspective, from having demonstrated the production efficiencies, so on and so forth. If that be so, do you see certain immediate guidelines, regulations being notified, so that the selection of these SMEs can happen very rapidly, so that the funds get made available, etc. So, it is an interesting thing for us to look at as to how the SMEs are going to be enabled to avail this excellent opportunity."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Hello World In all probability, SIDBI is going to be heading this fund. And I think it could be, there could be two ways. One, some part of it would be used for creating as a mother fund and, you know, there will be daughter funds created for different segments, maybe different sectors also. This is one way of going about doing it. And second is that SIDBI has its own direct connect with MSMEs.","And MSMEs through, for example, there is an institution called Center of Excellence for Aspiring SMEs which FISME and IFCI has set up and SIDBI is also involved. We have an MOU. So, there are a number of MSMEs that are coming to us that are interested in raising funds with the help of external equity.","So, I think we have good numbers already present. There is a demand also. So, spending this money should not be a problem."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Compliance and Legal Frictions'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Wonderful. So, you know, we have all our newsletters and our commentary that goes out to regular readers. They have sent in some questions and one of them is a little link to what we have been talking about, is that how does the budget concretely reduce the compliance burden for MSMEs beyond intent statements?","The question is, are there any measurable time that a small business can expect? Are we looking at a quarter? Are we looking at rolling some?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I do not think there is any concrete initiative in the budget that would reduce the cost of compliance. The budget is almost completely silent with regards to improving access to justice and enforcement of contracts, an area where India is at the bottom of the heap."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Risks and the Year Ahead'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I’d like to ask all of you if you could share some concluding remarks - you know where we are today, we have had a very turbulent year, lot of uncertainty, thanks to Trump tariffs and then the war and there has been a lot of upheavals. And we have sailed through this quite well. Everything is looking really, very rosy. So, it just makes us wonder, what are the risks that you would expect small businesses to prep for at this stage? How do you see the year ahead panning out?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I’d like to answer that first. One important aspect as far as MSME is concerned is involving technology. Unless they adopt technology and, you know, even as a labour-oriented production, unless you use technology, artificial intelligence, etc., it will be very difficult in the coming years. And how we can be more competitive in production that makes you profitable and makes you, you know, grow. So that is an area which one has to use technology and artificial intelligence and see that they invest in that. Especially this is the time where government is also putting in a lot of money and a lot of funding also available with organizations like SIDBI, especially on technology upgradation fund also now being extended during this budget also. I''m sure that unless they do their homework well, it will be very difficult for them to survive in the competitive environment especially. We are also opening our market for global players. Even MSMEs, UK, UK is dominated by MSME players. So, we have a FTA and we also open up many sectors. So, we have to be competitive with them. And, unless we prepare ourselves now, it will be very difficult in coming years."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["We need to set things right to take advantage of emerging opportunities. Currently, we have an adversarial ecosystem in India; that''s why majority of people are interested in the services sector rather than the manufacturing space. We have to work on regulations, access to technology, and scale."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["We have worked on labour laws, but there is a long path ahead; they are not flexible at the micro and small level. Space is also a very big problem; we need large amounts of space around every single city where SMEs can set up. No SME can afford to go to court for anything; they work on reputation and personal networks. These are long-term constraints. But for the next one year, I think it''s a phenomenal path ahead."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["MSMEs have demonstrated a lot of resilience in the face of adverse events. This is a once-in-a-lifetime opportunity to get access to a huge market. Digitally, the data infrastructure (DPI) has helped MSMEs become much more comfortable managing their business. The government is doing its bit, but strengthening awareness of the schemes from the MSME side would be a great step.","But notwithstanding that, what is it that they should be doing from their side from here on, to not be caught by surprise? And what is it that they would expect from the government to operationalize these policies quickly is perhaps what will allow them to ride the crest of this opportunity that is probably a once-in-a-lifetime opportunity to get started into getting access to a huge market and to become global players, albeit as SMEs.","So, it''s very, very positive to see this. I''m hopeful that MSMEs should also step forward and seek the required help and assistance that I''m sure is available and building the awareness. Because from Jocata’s side, for example, we do help MSMEs understand their own businesses by fetching consent-based information about themselves, such as GST, etc., of their own performances. And when we hold the mirror to them, they are themselves surprised as to the facets of their performance and non-performance and allows them to introspect and get course correction done. So in a way, digitally, the data infrastructure, the DPI has helped a lot of MSMEs to become much more comfortable with fetching the data with the help of fintechs like us and starting to make sense out of it, both from managing the business as well as from even establishing their behavioural collateral with the institutions. So that''s also what I see as a great thing.","So overall, I think the sentiment is the best that one can expect. And it would take two hands to clap. The government is doing its bit, but I guess being aware of the schemes, being aware of who to approach, if this is strengthened from the MSME side through various important bodies, associations, etc., I think it would be a great step to help them all move forward more confidently. That''s my take on this."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["To conclude, we can say that the budget is an accounting exercise and an intent statement. Capital is being taken care of to a large extent. But the fundamentals to reimagine MSMEs are again going to be land, labour, law, and state capacity. These are the things we have to work on over the long term together.","Thank you all for joining us."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Sumpoorn Index: November Overview'
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["There has been a sharp increase in the Jocata-Sumpoorn index in November, the strongest pace of growth in sales activity of small businesses in FY26. In October growth in sales was muted mainly due to festivals leading to lesser working days, and now there is clear promise of improved prospects for the year ahead.","The impact of the GST rate cuts, the drop in repo rate, the income tax rebate, low inflation have kicked in, even as the government and export-oriented firms have deftly handled the US-tariff challenge. Growth in manufacturing has picked up overall in the country, as shown by the 8.0 percent YoY growth in IIP Manufacturing index in November, particularly strong for basic metals, pharmaceuticals and motor vehicles. This gives a boost to demand for all small businesses in the supply chain of these industries. Auto sector, which had been going through challenging times with OEMs engaged in inventory management, has seen a turnaround, with more than 20 percent growth for several companies in December and waiting period for several models of vehicles – again, this gives a big boost to MSMEs in the auto sector supply chain. Good Kharif crop production, higher reservoir level than last year and better Rabi crop sowing give comfort for rural demand going forward. GST collections for December have moved up to INR 1.75 lakh crore, up 6.1 percent YoY and for the period April-December, aggregate collections stood at INR 16.5 lakh crore, up 8.6 percent from the same period last year, reflecting good momentum.","On the external front, exports have diversified beyond dependence on US markets, and non-petroleum goods saw November exports at USD 34.20 billion, compared to USD 28.42 last November, the sectors that stood out with strong growth were Engineering Goods, Electronic Goods, Gems & Jewellery, Drugs & Pharmaceuticals – all these have MSMEs either directly exporting or in the value chain. Bank credit has also been extremely robust with 23.7 percent YoY growth in credit to micro and small firms in November.","Looking back on the year, the challenges in the macro-economic environment have been effectively overcome, and there is optimism going forward."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'MSMEs in India’s Capital Markets: Growth, Behaviour, and Future Perspectives '
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Good evening and welcome to this special edition of our monthly MSME Conversations. We are pleased to have Dr. Tirthankar, from the largest stock exchange in the country, with us today, bringing his perspective on MSMEs and their growing engagement with India’s capital markets. Before we dive in, let me quickly recap what we have seen in the MSME space in 2025.","In October, the SIDBI-Jocata Sumpoorn Index stood at 0.53, down from its peak of 0.62 in March. There were several reasons for this dip, including the impact of tariffs introduced by the Trump administration, which hit MSMEs supplying to OEMs and export-dependent sectors. Despite these challenges, MSMEs showed remarkable resilience. GST collections in November were ₹1,70,000 crores, albeit muted growth up 0.7 percent from the previous year, yet demand recovery is visible, led by auto and ancillaries. Textiles are regaining ground, though gems and jewellery remain muted.","Merchandise exports held steady between April and November at USD 292 billion versus USD 284 billion last year. Credit flow to MSMEs improved, though working capital needs and payment delays persist. A recent report recommends better credit access via GST and UPI data and revisiting SMA and NPA norms.","Now, here is what I am curious about. MSMEs have always faced challenges in accessing capital. Between 2012 and 2025, about 690 companies raised ₹10,000 crores, with a combined market cap of ₹1 lakh crores. That is not a small number, but given the size of the MSME universe, it feels like just the tip of the iceberg. What will enable greater MSME participation in capital markets? And what role do you see regulations and investor appetite playing in this?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thank you for having me. MSMEs are critical: they contribute 30 percent of GDP, 45 percent of exports, and employ nearly half our workforce.","Yes, 700 listed companies seem small, but the growth trajectory has been sharp. NSE Emerge and BSE SME started around FY12–13. Back then, 2 companies raised ₹44 crores. By FY22, 31 companies raised ₹500 crores. FY23 doubled to 60 companies and ₹1,300 crores. FY24 saw 130 companies raising ₹4,600 crores. FY25 peaked at 160 companies and ₹7,000 crores.","This year (till December 19, 2025), 89 companies raised ₹4,300 crores. Market cap now stands at ₹2.2 lakh crores. In the last two years alone, about 600 companies listed, 480 of them MSMEs. So, the hockey-stick growth is real, and scope remains huge.","India has crores of MSMEs. Even among medium enterprises, more than 35,000 firms, listing potential is significant."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["When you said 35,000, my ears perked up straight away, because it is a very large number. And I would say ambitious, though, not an impossibility. But here is what I want to understand better. SEBI norms now require minimum EBITDA in two of three years, promoter lock-ins, and restrictions on fund use. Do these changes create the right governance framework? And equally important, do you think investors will feel confident enough to welcome these IPOs? Because for this magic number of 30,000 aspirants to become real, we need both hands to clap."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["That is a very fair question. Regulations balance two goals: enabling listings and ensuring investor comfort. SME platforms have lighter norms than main boards, such as half-yearly versus quarterly reporting.","Recent criteria like positive free cash flow to equity aim to ensure quality. Yes, tighter norms reduced listings slightly, but post-listing performance improved. Sustained gains remain above 50 percent, making these stocks long-term plays, not just IPO lotteries.","Investor interest has been not just looking up but rocking up! Stock market investors grew from 2.7 crores in 2019 to 13 crores today. Household ownership of Indian markets rose from 2 percent to about 19 percent, and mutual funds now hold 11 percent. With India’s USD 5.2 trillion market, liquidity is strong."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["That is a huge jump in investor participation. And it makes me wonder about promoter behaviour. MSME promoters have worked hard to build their businesses. Do you see them using IPOs as an opportunity to dilute stakes and realize gains? Or do they behave like main-board promoters, who often increase their holdings?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["So, the behaviour of promoters, in my understanding, depends on two factors. One, the company''s own prospects. And second, general market environment. In bullish phases, some skim gains. In steady markets, many maintain or increase stakes. MSMEs behave similarly to main-board firms."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Interesting. Now, liquidity is another big piece of the puzzle. Market cap tells us the size of the opportunity, but what truly builds confidence is active trading because it allows investors to enter and exit positions easily. This creates better price discovery and signals a healthy, vibrant market. So, are we seeing enough depth and width in liquidity to make MSMEs feel that the market is not just a place to raise capital but also a dynamic space for ongoing participation?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["On the primary side, the appetite is strong with hundreds of IPOs and thousands of crores raised in the last couple of years. When it comes to the secondary market, liquidity is improving, although it still trails the large-cap universe.","Nifty 50 companies dominate turnover because they have far more information available and attract institutional interest. SMEs, by contrast, trade less frequently due to limited visibility. Over time, as the market matures and more products such as SME indices and derivatives are introduced, liquidity will deepen significantly. That will transform these platforms from being only fundraising avenues into truly dynamic marketplaces for growth."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Interesting. You mentioned that the companies, due to better entry criteria, display more robust performance post IPO. Do MSMEs outperform their own projections post-listing? Are they delivering better than promised in their forward-looking statements?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Too early for definitive India-specific evidence, but global trends show post-listing discipline improves performance and reduces earnings volatility. Companies avoid making unnecessary expenses once there is the big search light on them, driving growth."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Are you seeing a change in the trend of the value of capital that is being raised? Capital raised seems to cluster between ₹10 and ₹40 crores. Is that some line which the MSMEs are reluctant to cross? Does cost make small raises inefficient?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["SME platforms cater to companies with post-issue capital between ₹1 and ₹25 crores. Beyond that, main-board listing applies. Of 672 companies listed since January 2024, 193 went straight to main board, 480 listed on the Emerge platform. And within that 480, 290 are NSE and about 190 are BSE. Out of the 700 listed SME companies, more than 150 have graduated to main board as they scaled."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Right. What according to you are the most recent regulatory changes that has helped the MSMEs garner capital from the capital markets better?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Tamil Nadu: 75 percent of expenses, up to ₹30 lakhs","Gujarat: 25–30 percent, up to ₹5 lakhs","Rajasthan: ₹15 lakhs; UP: ₹5 lakhs plus MOU with NSE","Kerala: 50 percent, up to ₹1 crore","Others include Haryana, Himachal, Punjab, Odisha.Maharashtra and Gujarat lead listings with over 100 each, while states with lower awareness offer higher subsidies. NSE has MOUs with seven states for outreach. Awareness remains the biggest gap."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["The Sumpoorn initiative is closely associated with SIDBI, which has always been at the forefront of creating better credit inclusion for MSMEs. Given their access to MSMEs on both direct finance and refinancing, do you see a greater opportunity for SIDBI to help create awareness so that MSMEs understand the benefits of coming to the market, not just access to capital at modest cost, but also the ability to graduate to the main board, strengthen governance, and become bigger, better players in the supply chain ecosystem?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Absolutely, Awareness is the missing link. Demand and supply exist. Bridging the information gap will unlock the next wave of growth. And I believe that''s where the grunt work, frankly, lies. How do you make good companies, realize that this is a channel which can give them access to capital. That this is a channel which can improve their company''s performance to the next level."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Before we wrap up, what are the key lessons from the last five years for policymakers, promoters, and investors?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["If I look at the key lessons, I would frame them from three perspectives","From a policymaker’s point of view, MSMEs are absolutely central to India’s growth story. They need continued support through easier access to credit, smoother ways to raise capital, and a governance framework that builds confidence. Without that, the momentum we are seeing will be hard to sustain.","From a promoter’s perspective, the opportunity is tremendous. Equity markets are no longer something to be wary of. They are a real channel to tap national pools of capital and eventually attract institutional investors.","From an investor’s perspective, transparency and performance matter the most. Investors want to see companies that can thrive under public scrutiny and deliver on their promises. Guardrails like disclosure norms and due diligence are essential to maintain trust and attract investments.","And if we step back, the bigger picture is very encouraging. Household savings behaviour in India has changed dramatically. Ten years ago, only about 3 percent of savings were in equities and mutual funds. Today, that number is close to 15.2 percent. This shift has created a deep pool of capital that MSMEs can tap. With strong guardrails and continued confidence, India has a very long runway ahead for MSME listings, and that could transform the growth story for years to come."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thank you for this insightful discussion. Wishing you and your institution a prosperous new year."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'how-msmes-retail-investors-smarter-ipos-are-reshaping-capital-markets'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["A happy new year to you as well. Thank you once again. It was a pleasure."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Setting the Context: What the October Index Reveals'
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Good afternoon and welcome everyone to our Sumpoorn MSME Conversation series.","Sumpoorn for October has come down quite sharply to 0.53, from 0.58 in September. That reflects marginal year-on-year growth in MSME sales activity, but the drop is largely because October had fewer working days with festivals. This is also visible in macro indicators, with IIP growth at just 0.4% and GST collections at 2%. Moreover, there was also a decline in merchandise exports and non-petroleum exports","On the positive side, GDP for Q2 came in at a remarkable 8.2% in real terms and 8.7% in nominal, though some statistical concerns remain around the deflator, we will not be going into those. While there are many bright spots in the economy like resilient consumption, good agricultural prospects this year and so on, yet we are still not seeing a strong spurt of growth for small businesses, and that is what we will focus on today.","We’re delighted to welcome our expert guest, Mr. Deepak K, seasoned industrialist from Pune, former President of the Mahratta Chamber of Commerce, Industries and Agriculture, and former Chairperson of their MSME Committee.","Before we go over to him, I’ll request Narsi to share his initial comments."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Macro Overview & Auto Sector Strength'
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thank you, Sumita, and thank you, Deepak, for joining. You’ve already summed up the situation very crisply.","Sumpoorn at 0.53 is still in the expansion zone, but noticeably lower than the 0.58 last October, a level that was held for three months then. This year, we had expected GST 2.0 to transmit benefits into increased demand, with lower slabs leading to higher consumption and improved GST collections, but so far GST collections growth has been muted, and is flat in November.","Exports have contracted in October, down 11.82% YoY, and several MSME-heavy sectors such as leather, gems and jewellery, jute, carpets, cotton yarn have shown double-digit declines. Drugs and pharma are also slightly down. The only major positive surprise is electronic goods.","Where I’m far more optimistic is the auto sector. October was decent for sales, am just going through the numbers, my eyes are lighting up because for auto ancillaries, which is a very important segment for MSMEs, the November numbers are very good. Just sharing some numbers here of growth-","In the Passenger Vehicles segment Maruti (+26%), Tata (+25%), Mahindra (+17%), Hyundai (+4.3%); for Two-wheelers: TVS (+30%), Eicher (+22%), Hero (+31%) and for CVs: Ashok Leyland (+29%), Eicher Volvo (+37%), Tata Motors (+29%).","This is very positive for MSMEs, given the depth of ancillary clusters. So, the November auto numbers make me confident that activity will pick up.","With that, let me request Deepak to step in here."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Ground Reality from Industry'
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thanks, Narsi. The auto numbers are good, and Pune - the “Detroit of the East”, we do contribute to a large percentage of the auto industry, in Pune as well as in Chennai and Gurgaon are serviced from Pune. And I''m happy to see the rhythm amongst the industry here.","Yet, there is also one persistent concern that all MSMEs face, which I would like to highlight as an industry representative. For years, MSMEs have been described as major contributors to exports, employment, and GDP. This is extremely encouraging to hear, but we can do much more than we do right now. And the biggest strain we face in our growth is of blockage of working capital due to delayed payments. After several representations were made by us and other associations to the government, there have been many reforms, but frankly much more needs to be done.","When working capital is blocked like this in receivables, MSMEs are forced to bear the burden of interest on the uncollected amounts When small firms are strapped for working capital, they go for loans to banks. There instead of easing their financing needs immediately, decisioning can take days and sometimes even months. Then MSMEs are forced to turn to cooperatives (at an additional 2%), or then informal lenders or gold loans (18–20%). The point I’m trying to make is that access to credit is still not as easy as it should be for small firms.","I have to say that Government redressal systems like Samadhaan are well intentioned but again have not worked effectively mainly because small firms fear retaliation from large buyers.","Take Section 43B(h), this has been a welcome change, but I find that it does not fully resolve the problem since the penalty of non-compliance can often be too small for a large firm to change behaviour towards a small firm. Even when it comes to TReDS, there the registrations have definitely increased when the turnover threshold was reduced from 500 crore to 250 crore, but actual usage of the platform is still not optimal.","As I said, MSMEs are growing, but there is still a lot more than can be done. MSMEs are spending a lot of time chasing collections, and this definitely reins in our growth, though all entrepreneurs have the fire in the belly to keep them going!"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Digital Credit as a Structural Solution'
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Your angst has come through clearly. One of the recommendations in the recent report by GAME, FISME and C2FO on access to finance and timely payments is on expanding digital credit through GST and UPI data. Could that be a solution to Deepak’s point about banks not giving loans soon?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Very much so. In fact, two recommendations stand out in that report:","One is to expand digital credit using GSTN + UPI + bank data.","This is consent-based, secure, and already adopted by many lenders. Jocata has been powering such credit workflows for banks and NBFCs for years.","Loan decisions can now be made within 48 hours or even faster. What Deepak pointed out that processing time is very long, I am, in fact, so happy to see that many of our lenders have been able to process their MSME loans in 48 hours. And the decision to do that is generatable with all the information that is required from an accrual perspective of the business performance and from a cash flow assessment is all possible within five minutes flat and integrated right into the assessment systems of the institutions.","Another recommendation made in the report is to reform SMA-1 and SMA-2 classifications. I believe short delays in receivables cause repayment delays; repeated SMA-1 flags then restrict further credit. One cannot fault risk mitigation to be at the core of lending because that''s the very nature of lending. But as Deepak pointed out, rightly so, all the MSMEs are always chasing collections. Therefore, delayed collections are likely to cause delayed repayments to the institutions","And if that is again going to come and bite them and the SMA-1 is going to put them under some constraints in the form of further additional loans being granted, etc., yes, this ought to be addressed. I''m very keen and hopeful that some very positive measures will be taken, basis this report recommendations on the SMA classification. I think that''s a very positive development in my view."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Crystal Ball Gazing'
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["So, we always end the conversation with some crystal ball gazing. Sumita, over to you for numbers."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["For November and December, I expect Sumpoorn to move back to 0.56–0.57. I’d love to see it go beyond 0.6, but that depends on stronger demand impulses."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["If exports strengthen, crossing 0.58 is possible."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I would like to add here that exports were quiet for three months, but sentiment is improving again."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["That’s good to know, new markets are beginning to compensate for US slowdowns. MSMEs are diversifying well."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I must congratulate all MSMEs in India because they''re extremely vibrant and that''s what keeps them going."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thank you so much, Deepak for being with us today in the afternoon to give us views from the factory floor, so to speak!"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'the-crisis-choking-india-s-6-4-cr-msmes-into-silence'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thank you so much, Deepak. It was wonderful talking to you."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'MSMEs through the lens of manufacturing '
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Good afternoon and welcome to Sumpoorn MSME Conversations. Last month we deep dived into exports. This time we’re looking at MSMEs from the manufacturing perspective. We’re very happy to have Srivats Ram, MD, Wheels India, to help unpack this for us.","A quick introduction to Sumpoorn - it tracks MSME sales activity (since Oct 2019). Over the past year, the index has been marginally higher than the previous year but has stayed in a mild expansion zone. This shows resilience on one hand, but we’re all still waiting for a strong spurt in growth and wondering where it could possibly be coming from. Two macro notes before we begin: the RBI has raised FY26 GDP outlook to 6.8% with “risks evenly balanced” and this is good, but we all know that small businesses are more vulnerable to shocks than large firms. And the RBI Industry Outlook Survey (Oct 1) showed a lower Q2 assessment for demand conditions than Q1 (production, order books). While there is optimism, we would like to know more from Srivats about the ground reality.","With that backdrop, Srivats, what’s your six-month outlook for manufacturing, and what do you see as the big risks?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'GST spillover, monsoon math, and where demand shows up'
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thanks, Sumita. A couple of points. One is, you know, when we look at outlook, it is always a relative measure. if I compare with what I probably thought the outlook would have been in March for the year, despite the fact that we''ve had a lot of chaos on the international side of business with the Trump tariffs, and all the uncertainty related to that, I think the GST rate reduction has definitely helped sentiment. And sentiment reflects forward expectations more than the immediate past.","On the immediate past: Q2 was fairly damp by industry standards. Some of that is expected - monsoons slow categories like construction equipment. Also, because the GST cut was announced a month in advance, buyers held back to benefit after Sept 22. I’m not sure how much of that could be completed between Sept 22-30; some will likely spill into October.","If we talk about prospects, and again, prospects are a very funny thing, because it''s not exactly what you see immediately in front of you in October - October itself has fewer working days (Puja, Gandhi Jayanti, Diwali), so don’t expect a big step-up in output. But I am from the automotive industry, so will talk about that, post-monsoon, infrastructure activity should improve, so trucks should do better in Q3 vs Q2. For passenger cars and two-wheelers, the cut is price-sensitive and helps the lower end, so I expect retail growth. Tractors should benefit too.","Let me just go back a little bit and look at the various measures that the government has indicated from the beginning of the year, starting with the budget. The budget''s Rs 1 lakh crore income-tax relief hasn''t really boosted consumption as much as anticipated. It has probably gone more into helping citizens manage or pare down household debt. But the GST cut is consumption-oriented, and while different sectors will respond differently, it signals demand will improve, which likely shaped the RBI upgrade.","On exports: I got a chance to travel across Tamil Nadu extensively last year, at least nine of the districts or zones that CII is involved in, and I checked in again before this conversation. MSMEs are broadly positive vs last year, including exports. But some companies, sectors which are US-centric and where large global buyers can switch quickly, these have been affected, like textiles/garments in Tirupur. Some of the more labour-intensive segments, which are more of the MSME category, like textile garments, footwear, leather footwear, leather and footwear, for example, and gems and jewellery are affected. Outside of that, I think the engineering sector has not so far been hit, in engineering, switching is harder (validation/testing), so the impact is more about sharing price reductions than demand loss. This situation is not likely to change in the immediate future, provided this 50% tariff comes down. At 25% people manage, at 50% it doesn’t work. There’s hope of a US resolution by year-end; until then, there is uncertainty, and we all know that uncertainty delays capex."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Auto vs textiles, jobs vs value-add, and GST 2.0'
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Narsi, you had a question about the auto sector?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Yes, thanks. I have a few specific questions and the best person to answer is here. But just to say where I am coming from, a recent GoI study (Apr 2025) on auto components put the sector in perspective. Compared to textiles (2.3% of GDP, 100M direct+indirect jobs), auto is 7.1% of GDP with 4.5M direct and 30M total). Value-add is high, employment intensity is lower. Components alone employ about 1.5M directly. With GST 2.0, Srivats, where do you see (1) employment creation, and (2) personal consumption across PVs/2Ws/CVs? "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thanks Narsi, I think it is a very keen observation that you have made Auto is more capital-intensive than textiles, so labour intensity is lower (with variation within auto). The recent challenge for auto has been modest growth and spare capacity. Without strong growth, firms won’t add capital or people. In fact, in the auto sector, there are constant price pressures that drive productivity, which can counter job creation. We need sustained growth for net additions.","GST 2.0 leans toward <4-metre cars, two-wheelers, and tractors. I expect retail growth in 2Ws and PVs, certainly through the festive season, likely some post-Diwali carry-over. Tractors will benefit, though they’ve already had a reasonable year. CVs should benefit too, but that depends on infrastructure. Tractors and CV segments are commercial decisions, based on forward prospects. So, we have to see how those segments translate but retail should definitely grow, and this time some of it should translate to jobs.","On MSME exporters tied to the US, retaining people is getting hard. If the US issue settles, rehiring isn’t easy, yet many are bleeding now and some support would help."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["We still haven’t seen anything specific from the government for MSMEs, especially exporters, have we? "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["No, the government has acknowledged the pain but there’s nothing explicit yet. While larger firms have scale, resilience; for MSMEs, letting this drag is dangerous. Even before Trump tariffs, MSME cash flows were tight (since last July) and haven’t eased. Two steps would help: (1) ease financing for export-oriented MSMEs; (2) a time-bound employee-retention scheme (1–2 months), targeted to specific segments of MSMEs."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Scale, tariffs, and the “magic bullet” '
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["The government’s stated objective is to move auto-component production from approximately USD 60B to USD 145B by 2030, to lift our global value-chain share from 3% to 8–9% and shift from trade-neutral (0.99) to a USD 25B surplus. Don''t you think that the auto sector is very well positioned to get to realize this ambition of higher value creation, larger ability to play a much more pivotal role in spurring the exports? With all this put together, and the fact that auto is at the centre of tremendous value creation from a manufacturing perspective, what do you see as the future? "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["For the automotive sector, you know, honestly, the domestic market is much more significant. We do export about a quarter or more of our produce to other countries. But majority of it, if you look at the entire industry is largely domestic. If India grows closer to 7%, demand will spur investment. OEMs have announced expansions, and the components sector will need to invest to meet this demand.","On exports of components, if you see, the big buyers are the US, Europe, China. China is essentially not competitive for us. In the US, you have 25% duty vis-a-vis other countries like Thailand and Indonesia, who are potentially competitors, who are at 19% rate of duty, or Europe, which is at 15% for the US. So effectively, your existing business is not affected, but your future competitiveness is at a slight disadvantage vis-a-vis countries like Thailand and Indonesia. It’s manageable, but a level playing field with other countries will matter. And we need stability from the US, but I know the Indian government can''t promise something that the US government themselves don''t know!"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["So, what’s the magic bullet? GST 2.0 has rationalized most structures (inverted duty only in a few inputs like tractors). With auto touching 49% of manufacturing GDP (within a 13-18% manufacturing band), what unlocks investment? "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["See, for people to make investment, they need to have a certain degree of certainty. Uncertainty is the biggest enemy of making investment decisions, which are done looking at the next three to five years type of scenario. So, I think some degree of stability or some signal towards this is what it is going to be, would be useful. A level playing field helps. Also watch Europe’s CBAM, a sophisticated trade barrier in the making.","So, I think India''s ability to navigate these are very important if our export potential is to be truly realized. Of course, India has done well too, for eg., two-wheeler manufacturers have been successful exporting to Africa and Latin America. But for the component manufacturers, the big markets are US and Europe. And the extent to which we are able to manage trade agreements or at least a stable environment with these two countries is very important.","Even now, with all the duties and the oil surcharges, which are being placed upon our country, there are a lot of manufacturers who are looking at India and who, as a matter of fact, are saying, let''s wait till the end of the year. Let''s see what happens. And then depending on that, we''ll relocate. I''ve been dealing with some of these multinational companies and the global purchasing offices for 20 odd years at least and I see a better positioning of India now, they look at India as a credible supply source.","I think from a geopolitical angle, they would like to maybe limit sourcing from China, at least from a de-risking angle, because they''re significantly exposed. India is relatively small. So, the opportunity for India to increase our stake in these markets is large. But I think in the US at least, what I''m hearing from customers is, let''s wait and watch and see what happens before the end of the year. And then either things settle down in which we can do something or look at alternate locations to supply from. But there is a need for supply chain both in Europe and US because the labour skill level available is relatively low.","The other thing is that there are a lot of opportunities which have come to the auto competence sector also, partly due to multiple energy sources for the automotive industry. So, there''s obviously there''s the ICE engine, which is petrol, diesel, CNG, electric, all these expand the market a little bit, increase what is the supply content that can go into the market. So, there is enough that''s kind of happening probably in the domestic market, especially now that GST is done. Export is the only side which has, hopefully, we can navigate the current uncertainty and come out of it, then we should be OK."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Domestic vs exports, PLI/Atmanirbhar, chips, and state capacity '
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Given the 70:30 domestic-to-exports split (globally and in India), near-term domestic demand post-GST 2.0 is key. How does manufacturing scale to meet it (credit offtake, banking, employment)?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["The government has introduced a couple of schemes, nothing new but PLI and Atmanirbhar together encourage localization of technology and manufacturing value-add, helping rebalance exports vs imports. We’ve narrowed the tech gap. As we close it further, domestic scale lets you “do everything” locally. One area needing special attention is semiconductors/chips. Government has taken steps, but it could be a decade before full benefits accrue."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I find that most of our expectation is from the central government. But what about the state governments? And from the point of view of Tamil Nadu, is there something that they''ve done specific for your sector?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["The government has been reasonably proactive in Tamil Nadu in two or three ways. One is outreach programmes to Japan, Taiwan, Germany, US, UK. The CM has travelled to these places and brought in FDI commitments. The State’s role is to attract industry, ensure infrastructure, and ease of doing business. My concern in India is that the larger you are, the easier it gets; the smaller, the harder. And I''ve had a unique opportunity of being in both, running a large company and also simultaneously running a small company. and the difference is stark, even with the same bank. And even though you''re, you know, the same person that deals with sometimes the same bank, their expectations of smaller companies or companies that are starting up are very, very unreasonable. Working capital remains a pain point, scaling finance is also hard."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["On supplier ecosystems, how do OEMs help MSME suppliers access credit within clusters?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["The 45-day MSME payment rule has helped (with pluses/minuses - MSMEs who buy from smaller MSMEs feel a squeeze). It’s less effective when MSMEs deal with some government agencies, recoveries aren’t always smooth. Firms exposed to government or to international demand shocks are more vulnerable.","On fresh capital, risk is higher for MSMEs, any expansion is a bigger percentage of their base. A stable environment helps decisions. just one more point. There''s also a lot of opportunity for, you know, component manufacturers to look at a wider set of customers, perhaps. For example, while they are focused on auto, there may be people in the industrial sector who use some similar components. So broad basing your customer base will also probably help to some extent. The government’s push for localization in allied sectors is another opportunity."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Monsoons, prints, and the near path'
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["We’re running out of time, but thank you, Srivats. This has been mostly positive. The economist’s dismal hat isn’t much in evidence today."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Sumita has written about monsoon impacts, temporary demand destruction in some places, while others benefited. Marathwada is a stark case - drought-prone yet flooded this year. Still, September auto prints were striking: Royal Enfield +43% YoY, Skoda +101%, others +9-10%. How much sustains beyond Deepavali? Festive sentiment should be robust; perhaps the season holds positive cues into Christmas."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Forecasting is thankless. Too optimistic and something drags you down, too pessimistic and you’re surprised. I’d say before the GST cut; growth could have been sub-6. The GST cut has pushed it above 6% - a conservative view. Deepavali should be good. Nov-Mar: we don’t expect major surprises; the outlook is positive."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["That should comfort banks/NBFCs on auto loans."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/gst-2-0-vs-50-us-tariffs-can-indias-manufacturing-msmes-survive'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["We can hope so. Thank you, Srivats. Thank you, Narsi."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Tariffs, Exports, and Global Headwinds'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Welcome back to MSME Conversations. In July, our Index number moved up to 0.59, from 0.58 in June. It’s been inching up since April - 0.56, 0.57, 0.58 and now 0.59. But if you look at the full year, the momentum seems to be muted compared to FY24. We had a much higher pace last year, now that momentum is moderating. This aligns with what we’re seeing in GVA numbers too.","Growth estimates show GVA at current prices in Q1 was 8.8% YoY, lower than 9.5% last year. In real terms, growth in agriculture is steady, manufacturing is flat, construction sector growth is a bit lower than last year, and services remain the standout performer.","Right now, we’re in what I’d call, not “turbulent”, that’s a strong word, but definitely not very stable times. I say this for two reasons: weather and tariffs. On the weather side, we initially expected an above average rainfall this monsoon making for bright prospects. But the intense rainfall in August has caused severe flooding and crop damage in many states, especially in Punjab, which has seen its worst flood since 1988, has about 4.5 lakh hectares affected so far. IMD has also projected September to see above-average rains.","On the tariff side, much is unfolding, and to help us unpack that, we’re joined today by Rahul Mazumdar from Exim Bank. He has deep expertise in trade policy. Rahul, thank you for joining us.","When I saw your LinkedIn post last month on the Trump tariffs, it struck a chord. You wrote about the ''fatigue'' of watching these tariff announcements, and how even tracking their impact was draining. So now that much of it has been implemented, how do you feel?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thanks so much, Sumita. It’s a pleasure to be here.","Well, I think Trump is here to stay, at least for the remainder of his term. He’s clearly using it to push his trade agenda. The 50% tariffs on Indian exports were unexpected. India assumed our relationship with the U.S. was stable enough to prevent such measures, but here we are.","A big area of concern for India in global trade has always been agriculture. It’s something we’ve fought for in the WTO, and now it seems like the U.S. is trying to get a foot in the door. Recently, India has quietly reduced some agricultural imports from the U.S., and that too has had tariff implications.","Interestingly, the current focus of U.S. tariffs is mostly on goods. Services haven’t come under fire yet. That is important for India, because our exports have consistently been buoyed by services - IT, remittances, etc. Together with merchandise, our total exports crossed USD 820 billion, the highest ever. But that strength came from services, not merchandise.","Let me give you some numbers. Pre-COVID in FY20, India’s merchandise exports were USD 331 billion. They rose to USD 450 billion by FY23 and slightly dipped to USD 437 billion last year. Services carried the growth.","Meanwhile, Trump has continuously not touched sectors which are of U.S. interest, like pharma, electronic goods such as smartphones, semiconductors, rare earths, amongst a few others.","But the sectors affected most by these high tariffs are labour-intensive, and that’s where MSMEs come in, and the various clusters - gems and jewellery (Surat), textiles (Tirupur, Surat, Panipat) leather (Agra, Kanpur, Kolkata, Ambur-Ranipet), Carpets (Bhadohi, Mirzapur, Srinagar) - all these sectors are being hit hard.","Estimates show 54-55% of India’s goods exports to the U.S. are impacted, valued at nearly USD 51 billion in 2024 and which will face some element of turbulence in the short term.","The interesting thing is that many exporters had anticipated this. Early in Feb/March when Trump has announced his intention to have a 25% tariff on April 2nd (or what he called as Liberation Day), many exporters did quickly look at the short-term gains by frontloading their shipments to US which is a crucial market for them. In fact, India’s exports to the USA had increased by over 22% y-o-y during April-June 2025 (first Q1 2026), as compared to a growth of just 1.7% in overall exports from India to US. India’s export of telecom instruments to US experienced a 191% y-o-y growth, while electronic components saw y-o-y growth of 35% during Q1 of FY2026. There was also a double-digit growth of India’s exports of items like - marine products, electrical machinery, and RMG, indicating a significant frontloading of shipments.","While Q1 looks good. But this won’t last. Q2 may hold up, but Q3 and Q4 will be tough.","From April to July, India’s total merchandise exports stood at USD 144 billion, compared to USD 140 billion last year. So, the story looks good where we stand with this data but looking ahead, we’ll see stress in export numbers."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["What about the recent FTAs that have been signed, for instance with the UK, how do you view these?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["So far, our trade deals have not panned out as anticipated. India has signed three major FTAs between 2010 and 2012, with ASEAN, Japan and South Korea, but all of them led to trade deficits. Then came RCEP, which we opted out of. Post- COVID, we revisited FTAs and signed new ones with UAE, Australia, and the UK.","So, India having burnt its fingers in FTA in the past, and having showed reluctance to sign RCEP, the recent ones are a brave step forward. In fact, the one with UK signed a few months back offers lot of hope for India, as it presents a huge opportunity for MSMEs as it allows duty-free access for approximately 99% of Indian exports by value into the UK, encompassing nearly entire range of goods and services, alongside simplified rules of origin. Sectors in which MSMEs may witness high gains through the FTA with UK will possibly be, textiles & garments, sports goods and toys, engineering goods, chemicals, pharmaceuticals, electronics, etc.","It may also be worth noting that in the FTA with UK, India has a dedicated Government Procurement chapter which outlines rules for fair and non-discriminatory access to procurement markets for both countries'' businesses."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["That’s a huge gap. Who do you think is responsible for spreading this awareness amongst the MSMEs?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Both the government and industry chambers need to work together to ameliorate all the issues plaguing awareness. In fact, Ministries like Commerce, MSMEs, including Finance should look at providing clear directions to these chambers to disseminate relevant information towards capacity-building amongst exporters.","Remember, nearly 46% of India’s exports come from MSMEs. Without proper outreach, they’ll never tap into these opportunities like FTA. We talk about India becoming the 4th largest economy by year-end. But we forget that our global goods export share is still hovering around 1.8%.","And here’s the real reason why the U.S. can push us around but not China. We thrive because of the market we provide, and not essentially the goods that we produce. China, in contrast, built capabilities through technology-oriented products and at times also because of their ability to produce at mass scale thus offering both quality and price competitiveness.","A lot of what we export today is still commodity-based - petroleum products, gems and jewellery. Even electronics, now a top 10 export, is largely due to PLI-fuelled assembly. It’s a start, but we’re still far from becoming a hi-tech-driven exporter. No firm is ready to put in money into R&D, which needs serious introspection if India wants to be recognized beyond its huge consuming market.","If you look at pharma and auto, both came up post-2000. These were innovative sectors. Today, Tamil Nadu, Gujarat and Haryana are hubs for auto. That’s what scale and investment can do."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["So, if I summarise your views: Q1 has been good for exports, but the rest of this year will be harder. The tariff shock has sectoral and regional impacts. And unless we are jolted into long-term capability-building, we may just continue playing catch up."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Exactly. MSMEs in clusters like Surat, Tiruppur, Kanpur will feel the heat. Especially in Q3 and Q4.","There’s talk of market diversification, but that’s easier said than done. Bangladesh and Cambodia enjoy lower tariffs in many EU countries. Even if we look at the UAE or Australia, the markets are small. UK offers some hope, given the FTA and trade surplus, but it’s not enough."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["And none of this was anticipated before Trump returned to office."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Not at all. The whole strategy defies traditional trade theory. The U.S. is going against Ricardian logic. The US has even made a fuss about Harley-Davidson again. While India did reduce the tariffs from 100% to 50% and later to 30-40%, Trump continued to push for a zero-tariff policy.","But let me give you an example where we need to work on ourselves – since 2013-14, India has been exploring opportunities in CLMV countries - Cambodia, Laos, Myanmar, Vietnam, so Indian companies could enter ASEAN, and thereafter to other countries benefitting from the FTAs signed by them. But very few firms were willing to go. Even with incentives, they preferred to play safe in India.","So, unless MSMEs build an appetite for risk, nothing changes. Many don’t explore Africa either. Our share in African imports is 6-7%, while Europe’s is 33% - a huge anomaly exists."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Is the government considering any targeted support?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Yes. The upcoming Export Promotion Mission, with a corpus of ₹25,000 crore, was announced in the February Budget to provide financial aid, improved credit facilities, enhanced market access, and branding support to help Indian businesses navigate global market challenges. It’s not just a Trump response, but a broader initiative. That said, it should’ve come earlier.","Support is one part. MSMEs also need to learn how to use these schemes and as I mentioned earlier the Chamber of Commerce has an important role to play with their members.","In fact, fintechs are playing a huge role. In fact, many banks in private and public are using digital platforms to provide in-principle sanctions up to ₹1 crore within an hour or even less. However, many a times traditional MSMEs still prefer age-old banking or in-person dealings. They need to adapt to new age tools and systems. Only then will policy support truly reach them.","There are certain things which I feel needs a concerted effort by India over a 5-year horizon which will help Indian goods to be taken seriously - firstly, producing quality goods and possibly at a mass scale; secondly, exporters should be aware of the changing market dynamics globally; and thirdly, sustainability is no more a vogue, it’s becoming a rule in many developed countries like EU and Indian businesses should plan accordingly if it wants to continue to exports in these regions."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Absolutely. Thank you so much, Rahul. That was incredibly insightful."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, 'Domestic Demand, GST Reforms, and MSME Impacts'
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Welcome back, Narsi. We missed you in yesterday’s conversation with Rahul. Hope you enjoyed your time away. I’m sure you’ve heard the recording by now. A lot of voices in the industry feel that the GST reform was too little, too late. What’s your take on the policy changes we’ve seen? Do you think they’ll help lift demand?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["So Sumita, I think the GST rate changes are part of a much larger rationalisation agenda and could not have come at a better time. Eventually, we’re moving to a simplified two-rate slab structure. What they’ve done is move most merit goods into the 5% slab, the larger group into the 18% slab, and a few sin and luxury goods into the 40% slab.","This is a good move. Whether the rate reduction will get passed on in full by firms, and whether that triggers demand straight away, those are two separate questions."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["So, the impact on demand is not to be seen simply as sector-wise?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Right. So, let’s say a particular good that costs 100 now costs ₹93. That’s ₹7 serving. But that ₹7 won’t necessarily go back into the same sector. I may use it to go get a blood test I’d been postponing, or I may renew my insurance.","So, it’s not that the electronics sector, or the diagnostic sector, or the travel sector that may see a spike. The impact is likely to be broad-based and spread across sectors."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["So, what we may see is a slow, broad-based rise in demand."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Exactly. In many sectors, people are already anticipating this. Take auto for example. They waited for the GST rate announcement to be implemented, and now we should see a demand spurt. If a two-wheeler that costs ₹90,000 drops by 10%, the new price becomes ₹81,000. That directly impacts EMI amounts. For people who are taking loans, this matters."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["And this kind of drop helps banks too?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Yes, in fact, it does. For banks, if EMIs reduce, the repayment schedule becomes less stressful. And customers may upgrade, so instead of a ₹90,000 bike, someone might now opt for a ₹1 lakh model with better features. It helps the manufacturer, the bank, and the consumer.","Also, if people start taking more loans and repaying them well, that helps the banks build a better profile of household behaviour. If more customers are added to the banking system with good repayment habits, it strengthens the financial system overall."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["And you mentioned healthcare as well earlier?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Yes. The reduction in diagnostic charges, say for a CT scan, might lead to more people coming in earlier for testing rather than waiting. Similarly, some may choose to buy better health insurance.","Even if 50% of the GST rate cut benefit is passed on, that still leaves people with more disposable income. And that affects how they spend or save.","Some of it may even go into CASA deposits, which again helps the banking system."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["And for firms?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["For firms, especially in sectors like cement or construction, we’ve seen some lack of full pass-through in the past. So, implementation is key. But for industries where competition is intense, like autos or FMCG, the rate cut benefit will be passed on more aggressively.","I’d just add one note of caution, on input tax credit (ITC). In some categories, the ITC benefit may not be available anymore. So that needs to be clarified and addressed to avoid any distortions.","But overall, this is a big reform. It sends a signal to the market that the government is serious about putting more money into consumers’ hands. And if the industry responds responsibly by passing on the benefits, we’ll see a positive shift in both demand and formalisation."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Right, we have some other positive trends for the economy also, for instance the business survey from the Retailers Association has seen a robust 8% YoY growth for two consecutive months of June and July, with good sales growth in QSR chains, jewellery, footwear. Also bank credit to MSME has been growing extremely robustly- at around 24.5% YoY for micro and small firms in July."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Yes, so there is some momentum in credit already. If the rate cuts spur more demand, more firms will come forward to borrow for expansion or working capital. And that becomes a virtuous cycle."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'msmes-at-a-turning-point-budget-2026-ftas-and-the-road-ahead'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Let’s hope so. This will prove a good counterbalance to the shocks that we were talking about earlier coming from tariff and weather. Thanks Narsi and Rahul. I think this was a very insightful session and our readers will enjoy it."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Good afternoon, everyone, and welcome to the next edition of Sumpoorn. I’m delighted to have Zeenat with us today. For those who may not know her, Zeenat is the Chief Risk Officer of L&T Finance and has a distinguished career spanning credit policy, underwriting, and pioneering digital initiatives.","Prior to joining L&T Finance, Zeenat spent approximately 18 years at ICICI, where she held leadership roles in credit and risk. She also served as a Non-Executive Director at ICICI Home Finance. During her time there, she was instrumental in shaping credit policy and underwriting frameworks across the group. ","At L&T Finance, she has continued to drive innovation, most notably through Project Cyclops, which has significantly enhanced credit decisioning, particularly in underserved markets. Today, she brings to the table a deep understanding of how ambitious growth can be prudently managed through disciplined risk management and cutting-edge underwriting practices. Without further ado, Sumita, let’s begin with a sum-up of the June Sumpoorn index. "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thanks a lot, Narsi. It’s great to be on this edition, especially with Zeenat joining us. The Sumpoorn index, which serves as our monthly, high-frequency indicator of the sales activity of MSMEs, has come in at 0.58 for June. This is a very interesting development because it marks a consistent upward trend over the last three months, consecutively inching up from 0.56 in April and 0.57 in May. The data places us firmly in the ''zone of mild expansion,'' and while we’re not seeing a sudden burst, this stability and incremental growth confirm the sense of buoyancy we’ve discussed in previous months. It’s a reflection of the resilience we’re seeing on the ground. ","This sentiment is also borne out by some of our key macroeconomic indicators. The Index of Industrial Production (IIP) for June, for instance, showed a strong YoY manufacturing growth of 3.9%, building on the 3.5% from the previous June. This points to a degree of stability in our manufacturing sector. Interestingly, our non-oil exports have also been holding up, showing a mild growth in June despite the ongoing global trade and tariff uncertainties. But, as with all economic indicators, there are nuances. While engineering goods have done well and electronic goods are slightly up, we are seeing a lack of vigorous growth in segments like ready-made garments, and exports of gems and jewellery have actually gone down. ","The credit side, which is where we’d like to get Zeenat’s views, presents an even more robust picture. We have seen a surge in bank credit to the micro and small segment, with a dramatic YoY growth of 21.8% in June. For the medium segment, it''s a healthy 14-15%. With all these official numbers from a macro perspective, we are very keen to know, from the industry’s point of view, what you see on the ground. "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["In my view, FY25 was a “disruption year” for the MFI industry. While some disruptions like demonetization and COVID-19 were out of our control, this latest cycle was, to a large extent, a creation of the financial institutions themselves. In the rush for growth post-COVID, lenders began over-leveraging customers and encouraging loan stacking without a true assessment of their repayment capacity. ","This highlighted the need for a more “responsible” approach to lending. At L&T Finance, our crisis mantra was to be the last to fall, fall the least, and be the first and fastest to get up. We had already implemented many of the MFI guidelines, such as income assessments without documentary proof and robust first-line field checks, a year before they became industry regulations. The key is to manage portfolio resilience, not just growth. We focused on continuous leverage monitoring, engaging with customers to ensure their economic activities were going on, and implementing geographical exposure limits all the way down to the village level. This micro-management was crucial. ","Another critical point is educating the customer. We must not forget that a lender’s responsibility is to protect the borrower''s interest. We need to help them understand the consequences of non-repayment, how their bureau records are impacted, and how we can support them in distress. Finally, we need to avoid the extreme approach of stopping disbursements during a stress cycle. Instead, we should continue diligent lending. By doing so, we can manage these cycles better. This approach is why we were among the least impacted by the crisis in FY25."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Speaking of the auto sector, our Jocata Auto Index, which is based on Vahan registrations data, also shows a mixed bag. And we do see that it shows some flattening, there has been some decline in the light motor vehicles as well as in the light goods vehicles, but two-wheeler is kind of up and down. ","So, this is something that definitely needs watching out for next month. July normally is a better month from many perspectives. And we''re hoping that the index should look slightly better, which does seem to look so because when I''m looking at the monthly business updates from the auto majors, for both two-wheelers and four-wheelers, the numbers do seem very, very encouraging. And I hope that this continues to translate into better MSME growth as far as economic activity is concerned and more personal consumption that can trigger all around growth. ","Vahan data shows that light motor vehicles were almost flat in May and then negative 4% in June, while two-wheelers saw a good growth in May before dropping to negative 2% in June. I worry about this because the auto sector is a key indicator of consumer confidence and a major driver of credit A slowdown here has wide-ranging implications for MSME growth, for broader economic activity, and for personal consumption. "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I’m seeing a different picture on the ground. When I speak to dealers, they are very optimistic, especially with the festive season approaching. The slowdown you see is partly due to lenders strengthening their lending practices, which has led to a reduction in financing, particularly for low-touch products like two-wheelers. The industry is also seeing a decline in lending to ''new-to-credit'' (NTC) borrowers. ","However, there is a tremendous opportunity here. We must move beyond traditional bureau and financial data. There is a huge amount of ecosystem data available now, including payments data, UPI data, and Account Aggregator banking data. At L&T Finance, we''ve developed an AI/ML-based initiative - Project Cyclops for two-wheelers, which we launched in June. The performance has been superlative. We are able to underwrite NTC customers better by triangulating this data.","For MSME lending, we’ve moved from simply collecting financials to using dynamic digital data. For example, the Udyam registration portal is a game changer, and I was thrilled to learn that 50% of Udyam registrations are by women. We also use GST data, but we go beyond just turnover information. We analyse sales returns, supplier and customer concentration, and the discipline of filing returns. We combine this with banking data, looking at more than just bounces, to perform a comprehensive cash flow assessment. We must use all these data points - GST, banking, bureau, and payments, to make better decisions. And as I''ve said, a little bit of ''happy friction'' is perfectly acceptable if it means a sustainable loan at the right cost, rather than a rapid, high-cost loan. "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["That’s a very valid point. I think the idea of a slightly delayed, well-underwritten loan is far more comforting for an MSME than a two-minute decision that puts them at risk. Sumita, looking ahead, what is your best estimate for the Sumpoorn index in July? "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[" I''m still looking at it in a similar range of 0.57 to 0.58. While there is optimism, there''s still a lot of short-term uncertainty. I’d be happy to see it at higher levels as we get into the festive season. "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I would probably stick my neck out and say it could be in the region of 0.59 or even 0.6. July has historically been a better month, and I''m optimistic about the economic activity. "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I second Narsi on the optimism. I also believe the Sumpoorn index can play a much bigger role. It''s a fantastic benchmark for MSMEs, which has been missing. Lenders could use it as an ''overlay'' to monitor their portfolios, helping to classify customers as red, green, or amber based on broader macro trends. "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/from-fast-money-to-smart-money-how-data-discipline-can-rewrite-msme-credit'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["That’s an excellent suggestion. Under the Sumpoorn initiative, we are already moving towards providing dissected versions of the data, allowing us to profile the behaviour of specific industries and even compare different geographical clusters. We’re very glad you’re finding it relevant and useful, and we''re working on providing more granular analytics that can be leveraged for better risk decisioning and capital allocation. Thank you so much, Zeenat, for your deep insights and comprehensive views. It’s been an extremely interesting and insightful conversation. "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["We’re seeing resilience hold up in MSME activity. This month’s Index reading of 0.57 keeps us in the mild expansion zone. This is higher than the 0.56 recorded in April and 0.55 recorded last May. Even more encouraging is the consistent pattern since last November, every month has surpassed its counterpart from the previous year. And this is despite strong global headwinds.","We’ve also been tracking 10 major states. Two especially stand out as top performers in May: Telangana at 0.62 and Uttar Pradesh at 0.60. Meanwhile, Maharashtra and Gujarat are roughly in line with the average.","Of course, if we are talking about growth in India, we have to talk about the monsoon. It arrived early this year in May and had covered the entire country by the 29th of June, nine days ahead of schedule. That’s good news for Kharif sowing, which has picked up nicely.","But the other side of early, intense rains is flash flooding, landslides, and urban disruption - from Mumbai to Assam and the Northeast. While the current monsoon appears to be favourable, extreme weather events such as floods in the North-east, landslides in Uttarakhand and Himachal through May and June may have a localised impact on small businesses.","Despite these challenges, the outlook remains positive overall. Last year’s crop estimates were at record highs for both rice and wheat. With solid foodgrain buffers, rural demand should continue to support MSME activity in the coming months. But let’s move from this macro view to sector-specific trends. Narsi, what are you seeing in household spending and sector demand?"]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thanks, Sumita. Let’s look at private consumption and household expenditure. The Retailers Association of India business survey for May showed retail sales up 7% YoY, compared to just 3% in May 2024. That’s a broad-based improvement.","I often use the QSR segment - quick-service restaurants like pizza chains - as a bellwether for discretionary spend. That grew 10% in May. Consumer durables and furniture both grew 8%, and apparel was up 7%. These are confidence markers. People generally spend on these items when they feel secure about jobs and incomes.","Interestingly, the South recorded the highest retail uptick at 9%, with the West at 7% and the East at 4%. So, there are clear regional differences.","When we shift to autos, the picture is more muted. May’s growth in Vahan vehicle registrations was 5.7% over the last year and SIAM data shows two-wheelers seeing some increase but personal vehicles softening. Even the June numbers I’ve seen so far look mixed. LCV (Light Commercial Vehicles) sales dropping is a bit worrying since they’re so critical for short-haul goods movement.","Exports are another piece of the puzzle, the numbers there look quite positive. Despite tariff uncertainty, we saw around 5% YoY growth in May in non-petroleum exports. Data from PLEXCONCIL (Plastics Export Promotion Council) showed 4.2% export growth in May 2025 vs May 2024. Some of this is likely driven by China+1 sourcing strategies. Notably, US-bound consumer houseware products grew 13%, with tableware and kitchenware being surprise stars.","In fact, Indian exports overall have performed very well, despite all the global uncertainties on tariffs. Sectors that have strong MSME presence giving excellent performance such as electronic goods exports increased by 54.10%, marine products exports increased by 26.79% and garment exports increased by 11.35%with the global tariff uncertainty providing an opportunity to exporters.","But credit trends deserve scrutiny too. Credit to micro and small segments slipped from 19.9% last May to 18.7% growth YoY this year. Is that a worry or just a blip? And though the gross NPA ratio of MSME portfolio of has improved from 4.5% in March 2024 to 3.6% as at end-March 2025 - the decline in the share of subprime borrowers in this segment is a positive sign; but one further question is whether small borrowers who tend to opt for unsecured loans are finding willing lenders, given perhaps a higher emphasis by lenders on secured loans for lowering the risk and the bad-rates?","Suman, since you’re here, I’d love your take on the credit space, especially given the RBI’s latest data."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Sure, let’s talk credit. Overall, there is a clear moderation in bank credit growth compared to last year. Around May 2024, bank credit was growing in the mid-teens. As of end-May this year, it''s down to about 9%.","But if we look specifically at MSME priority sector lending, it remains healthy, showing about 18% YoY growth. According to RBI’s annual report, MSME credit rose from ₹27.3  lakh crore in March 2024 to ₹31.3 lakh crore in March 2025, which is roughly 14.7% growth through the banking system. Including NBFCs, SIDBI CIBIL MSME Pulse report shows a very similar annualized growth of around 13.5%. Credit growth has been consistent across micro, small, and medium segments, generally between 12% and 14%. Even the five-year CAGR is about 13%, indicating steady progress.","That said, there is a slowdown in new disbursements, especially for unsecured small-ticket business loans. NBFCs and microfinance institutions have tightened their lending, partly due to regulatory caution and rising delinquencies. While RBI has spoken about lightening some regulations, overall norms for unsecured consumer and business loans have tightened over the past few quarters, impacting fresh disbursement in this segment.","Despite these short-term challenges, the drivers of credit demand remain strong. There’s a clear policy push for digital inclusion. Several government schemes are supporting MSMEs, with SIDBI playing a key facilitating role.","One data point I wanted to share, which CIBIL has published, is that over the last one year, 55% of the borrowers in the category of loans of less than 1 crore are new-to-credit (NTC). NTC means that they''re coming to the formal lending system for the first time to take loans. And that''s very significant. This is happening because there is a lot of policy push to bring informal micro enterprises into the formal system. And if you ask me one of the game changers or transformative impact of all this has been the Udyam. The Udyam Assist portal, which is managed now by SIDBI, shows how fast the formalization is happening.","The second part I wanted to address, which Narsi sir also mentioned, is the health of the MSME portfolio. MSME Pulse data shows a consistent decline in delinquencies over the last five years. Specifically, 90+ day past-due rates fell from 2.1% in March 2024 to a five-year low of 1.8% in March 2025. That’s a very good portfolio number, considering the typical risk involved and the large number of new borrowers.","But when we deep-dive into segment-wise numbers, there are areas of concern. For loans under ₹1 crore, delinquency is at 3.1%, up from 2.9% last year. The sub-₹10 lakh segment is even more stressed, with delinquencies at 5.8%, compared to 5.1% a year ago.","This is significant because many borrowers in this category are NTC, with no bureau history. To maintain portfolio health, there has to be much more financial awareness and discipline. It''s the age of credit bureaus now, a healthy track record is essential. On the lender side, more credit monitoring is necessary. It’s not enough to just give a loan and forget about it. Engagement and handholding are essential, especially for micro borrowers. These are the kinds of interventions the credit system needs to focus on to ensure a truly healthy portfolio."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Thank you, that was very comprehensive. While overall trends remain positive, I’d note one area of caution. The slowdown in new real estate launches, especially in Mumbai, is larger than just ‘modest.’ We’re seeing a 36% decline in launches. It’s not a red flag yet, but definitely something to monitor, given how real estate touches so many MSME-linked sectors - paints, cement, furniture, logistics, daily-wage employment.","On the other hand, look at the government’s infrastructure pipeline: over ₹27 lakh crore in projects under implementation, with roads and transport alone at nearly ₹7.5 lakh crore. That kind of public investment will have a positive knock-on effect on MSME activity and employment. So, while real estate is a slight concern, Government infrastructure spending offers a counterbalance.","A crucial question we should address is why NPAs are ticking up in the sub-₹10 lakh segment. It’s largely unsecured lending. Are we seeing underwriting weaknesses? Many of these borrowers are NTC - with no bureau track record, lenders need to rely on business behaviour data like GST filings and bank statements. That’s where advanced data-driven scoring can help manage risk while expanding access."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["That’s a very good point. When we talk about MSME credit growing in double digits overall, the details matter. The Financial Stability Report, for instance, shows micro-segment growth in the second half of FY25 at 13.3%, but if you break it down by sector, credit to micro industry had an annualised growth rate of 2.8% during H2FY25, while to services grew 17.3%."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Correct. There are many nuances, not only sector-wise but also region-wise. For example, Telangana shows more MSME activity, while in UP a lot of new loan origination is for trading companies, not manufacturing. Manufacturing growth is more concentrated in Gujarat, Maharashtra, and Tamil Nadu.","Narsi sir’s points are very relevant. I think there is optimism. We’re running another outlook survey this quarter, and it seems that optimism is continuing. The Sumpoorn Index suggests that too. But there are mixed signals. Real estate data is something I also came across. Passenger car data isn’t encouraging. Maruti has been talking about weak demand for small cars for some time now. Certain consumption segments are not doing well.","Rural demand seems to be holding up thanks to the good monsoon. But urban demand is still not in full gear. There are challenges. Hopefully, policy supports like income tax benefits and the 1% interest rate cut, which is slowly being transmitted, will help consumer and housing loans. But we’ll need to watch consumption carefully. It’s not all good; some parts are not doing well."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I think overall Sumpoorn for May didn’t throw surprises. It was actually slightly better than many of us feared. Last time we talked about 0.55 being possible, so 0.57 is encouraging. But going into June and beyond, we’ll need to watch consumption trends, credit flow, and sector variations carefully. "]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Yes, last time I remember we were worried it might dip a little bit. We were talking about 0.55 or so. So, it does look better than our expectations."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('[" An interesting anecdotal point - I was at a Maratha Chamber of Commerce roundtable recently, talking to MSME manufacturers. Despite all the export uncertainty and tariff talk, they were clear that orders are flowing. They’re getting strong inquiries. Sometimes we take on these risks in our analysis, but on the ground, industry is pushing ahead."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["True, though it’s a mixed picture. Tractor sales are strong for Mahindra but weaker for others. Passenger vehicles are uneven -SUVs doing better than sedans, but overall, the market was expected to decline, and that’s what we saw. LCVs were a surprise drop, and even large commercial vehicles were tepid. Two-wheelers seem to be holding steady. So yes, slight optimism is warranted, but with eyes open."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["I think credit growth will hold up. There are strong policy initiatives to support MSME lending. The government, SIDBI, and other institutions are focused on maintaining or even increasing credit flow. Of course, the sub-₹10 lakh segment will need more rigorous underwriting, but the ₹1-10 crore segment is still growing well. Especially in manufacturing, demand for credit remains strong, with even textiles seeing unexpected export orders. Overall, I see MSME credit growth continuing in healthy double digits.","On the trade front, there’s also potential. The new free trade agreement with the UK is being finalised and will be implemented over time. This offers significant opportunities for labour-intensive industries like leather, textiles, and gems and jewellery. Even in our surveys, manufacturers in these sectors are showing optimism about business improving. Of course, a lot depends on how these trade negotiations are implemented on the ground. Given the healthy domestic economic outlook and the continuing policy initiatives to strengthen credit access, we expect to see consistently good credit growth in MSME sector in 2025-26."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);

WITH b AS (
  INSERT INTO conversation_blocks (episode_id, title)
  SELECT e.id, NULL
  FROM episodes e
  WHERE e.slug = 'podcast/decoding-indias-msme-growth-paradox-with-sidbis-chief-economist'
  RETURNING id
)
INSERT INTO conversation_messages (block_id, sequence, speaker, text, from_time, to_time)
SELECT b.id, seq, speaker, msg, ft, tt
FROM b, jsonb_to_recordset('["Agreed. Thank you both for a really rich conversation. It’s always valuable to bring these sectoral and credit insights together, and I’m sure our readers will appreciate the depth."]') AS x(speaker text, msg text, ft text, tt text) WITH ORDINALITY t(seq);


-- videos
INSERT INTO videos (banner, title, month, duration, youtube_link, youtube_share_link)
VALUES ('videos_content5_cover.webp', 'MSMEs Hit a 10-Month High — But Can It Last? | Sumpoorn Index', 'March 2026', '1.36 min', 'https://www.youtube.com/embed/WKbICgDsjGE?si=Boq_NVtCATjipuh8', 'https://youtu.be/WKbICgDsjGE?si=ipAel2Zdi1vUeEQM');
INSERT INTO videos (banner, title, month, duration, youtube_link, youtube_share_link)
VALUES ('videos_content4_cover.webp', 'AI & Alternative Data: Balancing Efficiency & Risk in SME Financing', 'September 2024', '39.17 min', 'https://www.youtube.com/embed/dqFPKlCGEZo?si=bJrh9z0-SjyO71S0', 'https://youtu.be/dqFPKlCGEZo?si=76l8bOYydq1kbWoU');
INSERT INTO videos (banner, title, month, duration, youtube_link, youtube_share_link)
VALUES ('videos_content3_cover.webp', 'Build in India for the World | Jocata Sumpoorn at the United Nations', 'April 2024', '6.50 min', 'https://www.youtube.com/embed/IESUhnXROcw?si=rCyOzrbHjJToUSRV', 'https://youtu.be/IESUhnXROcw?si=_K-ei30i0KiTNdvA');
INSERT INTO videos (banner, title, month, duration, youtube_link, youtube_share_link)
VALUES ('videos_content2_cover.webp', 'A New Lens for Inclusive MSME Growth', 'November 2023', '1:35:30 min', 'https://www.youtube.com/embed/WREowglaKx4?si=0zfhKE4ocVFlY_RS', 'https://youtu.be/WREowglaKx4?si=0zfhKE4ocVFlY_RS');
INSERT INTO videos (banner, title, month, duration, youtube_link, youtube_share_link)
VALUES ('videos_content1_cover.webp', 'Jocata Sumpoorn: India''s First MSME Economic Activity Index', 'November 2023', '1:42 min', 'https://www.youtube.com/embed/KgFNTP_MDJU?si=JO7hzhi25b-3NajW', 'https://youtu.be/KgFNTP_MDJU?si=JO7hzhi25b-3NajW');

COMMIT;

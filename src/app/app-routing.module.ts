import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';
import { AboutComponent } from './about/about.component';
import { ContactComponent } from './contact/contact.component';
import { HomeComponent } from './home/home.component';
import { IndexComponent } from './index/index.component';
import { MethodologyComponent } from './methodology/methodology.component';
import { RoadmapComponent } from './roadmap/roadmap.component';
import { TouComponent } from './tou/tou.component';
import { InstitutionLoginComponent } from './institution-login/institution-login.component';
import { MediaKitComponent } from './media-kit/media-kit.component';
import { NewsroomComponent } from './newsroom/newsroom.component';
import { NewsroomEventsComponent } from './newsroom-events/newsroom-events.component';
import { PartnersComponent } from './partners/partners.component';

const routes: Routes = [
  {
    path: '',
    redirectTo: 'home',
    pathMatch: 'full',
  }, /*DO NOT change default root */
  {
    path: 'home',
    component: HomeComponent,
    data: {
      title: `Jocata Sumpoorn: India's First and Only MSME Economic Activity Index`,
      description: `Explore Sumpoorn, India's only MSME Economic Activity Index. Discover the significance of the index through a blend of insightful commentary from experts and illustrative graphs. Learn why economists find the Sumpoorn index crucial for understanding economic trends and making strategic credit, and policy decisions.`,
      keywords: `sumpoorn, jocata sumpoorn, sidbi, jocata, digital lending platform, msme development, msme annual turnover, jocata logo, sidbi logo, gst data, msme knowledge, digital public infrastructure, dpi monthly gst sales data`
    }
  },
  {
    path: 'index',
    component: IndexComponent,
    data: {
      title: `Jocata Sumpoorn: Monthly Index and Other Macro Indicators for MSME Insights`,
      description: `Dive into Sumpoorn's MSME Economic Activity Index for real-time data, interactive charts, and expert commentary on latest economic trends impacting Indian MSMEs.`,
      keywords: `iip, gva, gva growth, s&p, national income statistics, sumpoorn graph, sumpoorn data, sumpoorn indices, sumpoorn chart, msme chart, msme graph, small business indices`
    }
  },
  {
    path: 'methodology',
    component: MethodologyComponent,
    data: {
      title: `Jocata Sumpoorn: Index Building Approach and Methodology Leveraging GST Data`,
      description: `Unlock the essence of Jocata Sumpoorn on our Methodology page, where transparency meets precision in the construction of this one-of-a-kind MSME Economic Activity Index. Crafted using consent-enabled and anonymized data from over 50,000 MSMEs seeking credit since October 2019, Jocata Sumpoorn provides a more comprehensive and authentic representation of the dynamic MSME sector.`,
      keywords: `msme credit data, geographic distribution msme, turnover distribution analysis, sector-wise distribution hsn, activity distribution msme, relative amplitude adjusted composite diffusion index, gst returns data analysis, index bin ranges interpretation, economic activity measurement, methodology of sumpoorn index, considerations for sumpoorn index, sigmoid function scaling, monthly index publishing, data authenticity in gstr returns, economic activity scale 0 to 1, msme sales performance, official gstin network, industry classification gstin, idiosyncratic fluctuations, top 7 hsn sectors, composite diffusion index, amplitude of economic activity`
    }
  },
  {
    path: 'roadmap',
    component: RoadmapComponent,
    data: {
      title: `Jocata Sumpoorn: Upcoming Sub-Indices for Granular MSME Analysis`,
      description: `Explore to know upcoming sub-indices, including Jocata Sumpoorn - Sectoral Indices, Geographical Indices, and Activity Indices. Get ready to embark on a journey of powerful and granular MSME insights.`,
      keywords: `msme data analysis, granular insights, gst returns data, sectoral performance, jocata sumpoorn sectoral indices, region-based indices, industrial activity insights, jocata sumpoorn geographical indices, manufacturing indices, trading performance, service sector insights, jocata sumpoorn activity indices, jocata sumpoorn newsletter, harmonized system of nomenclature, hsn code explanation, goods classification, gst hsn details, hsn information modal, msme insights, granular data analysis, gst sectoral performance`
    }
  },
  {
    path: 'partners',
    component: PartnersComponent,
    data: {
      title: `Partner with us for MSME Impact`,
      description: `Partner with us for MSME Econsystem reach, data driven impact, and policy & research support, all to create a positive impact for MSMEs`,
      keywords: `MSME Economic Activity Index India, Partner with Jocata Sumpoorn, MSME data insights India, Support MSME growth India, Thought leadership India, MSME decision-making India, Jocata Sumpoorn Partner Program, Economic indicators for MSMEs India, Financial institutions & MSMEs India, Policymakers & MSME data India`
    }
  },
  {
    path: 'about',
    component: AboutComponent,
    data: {
      title: `Jocata Sumpoorn: Teams behind the Index`,
      description: `Meet the people behind Sumpoorn - the Index Steering Group and Index Working Group. This page highlights key individuals shaping economic intelligence in the MSME sector.`,
      keywords: `index steering group, sumpoorn team, sivasubramanian ramann, sidbi chairman & managing director, prashant muddu, dr. sumita kale, former chief economist – indicus analytics, index working group, vivek kumar malhotra, sanjay jain, narasimhan v, sidbi, small industries development bank of india, sidbi logo, jocata, billdesk, jocata logo, credit intelligence, banking and financial services industry, digital lending, credit automation, intelligent monitoring, low code platform, power enterprise lending programs, msme segments, b2b saas model, enable embedded finance, msme, india's growth story, digital lending platform, saas offerings, ai/ml powered msme score, sme dna, jocata sumpoorn`
    }
  },
  {
    path: 'contact',
    component: ContactComponent,
    data: {
      title: `Contact Us - Reach Out to Jocata and SIDBI`,
      description: `Connect with us seamlessly through the Sumpoorn Contact page. Whether you have queries, feedback, or are exploring partnership opportunities, our user-friendly form awaits your input. Share your basic details, and let us know how we can assist you better.`,
      keywords: `contact, contact jocata, contact sidbi`
    }
  },
  {
    path: 'tou',
    component: TouComponent,
    data: {
      title: `Jocata Sumpoorn: Terms of Use, Disclaimer, Privacy Policy, and Intellectual Property Rights`,
      description: `Welcome to Sumpoorn's Terms of Use page. This section outlines the terms and conditions that govern your use of our website and services. By accessing and using Sumpoorn, you agree to abide by these terms, ensuring a secure and productive experience for all users.`,
      keywords: `sumpoorn terms of use, sumpoorn disclaimer, sumpoorn privacy policy`
    }
  },
  {
    path: 'institution',
    component: InstitutionLoginComponent,
    data: {
      title: `Comprehensive Portfolio Analytics for Informed Decision-Making`,
      description: `Welcome to Sumpoorn - the gateway to comprehensive portfolio analytics and unparalleled insights for advanced functionality.`,
      keywords: `comprehensive portfolio analytics, msme pool performance, multi-lender pool trends, industry and cluster level trends, macro insights for decisioning, msme credit flow, strategic decisioning in msme, enhanced portfolio management, msme loan book management, portfolio mix monitoring, borrower performance and risk, smart entity credit assessment, comprehensive gst-based scores, creditworthy msme, risk management in credit assessment, msme credit, portfolio trends, credit assessment`
    }
  },
  {
    path: 'newsroom',
    component: NewsroomComponent,
    data: {
      title: `Jocata Sumpoorn: News, Updates, and Event Highlights | Download Press Releases and Launch Reports`,
      description: `Stay informed and engaged with the latest happenings at Sumpoorn on our Newsroom page. Explore a dynamic space where we bring you real-time updates on the Index, event highlights, closed group discussion outcomes, and much more.`,
      keywords: `sumpoorn news, sumpoorn updates, sumpoorn index news, sumpoorn highlights, sumpoorn launch, sumpoorn showcase, sumpoorn gallery, sumpoorn discussion`
    }
  },
  {
    path: 'newsroom-events',
    component: NewsroomEventsComponent,
    data: {
      title: `Jocata Sumpoorn Highlights: Unveiling India’s First MSME Economic Activity Index in Partnership with SIDBI`,
      description: `Stay informed and engaged with the latest happenings at Sumpoorn on our Newsroom page. Explore a dynamic space where we bring you real-time updates on the Index, event highlights, closed group discussion outcomes, and much more.`,
      keywords: `sumpoorn news, sumpoorn updates, sumpoorn index news, sumpoorn highlights, sumpoorn launch, sumpoorn showcase, sumpoorn gallery, sumpoorn discussion`
    }
  },
  { path: '**', 
    redirectTo: 'home',
    pathMatch: 'full'
  },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, {
      preloadingStrategy: PreloadAllModules,
      anchorScrolling: 'enabled',
      scrollPositionRestoration: 'enabled'
    }),
  ],
  exports: [RouterModule],
})
export class AppRoutingModule { }

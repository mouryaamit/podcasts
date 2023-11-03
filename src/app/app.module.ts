import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { HomeComponent } from './home/home.component';
import { IndexComponent } from './index/index.component';
import { MethodologyComponent } from './methodology/methodology.component';
import { RoadmapComponent } from './roadmap/roadmap.component';
import { AboutComponent } from './about/about.component';
import { ContactComponent } from './contact/contact.component';
import { TouComponent } from './tou/tou.component';
import { HttpClientModule } from '@angular/common/http';
import { InstitutionLoginComponent } from './institution-login/institution-login.component';
import { InsightsChartComponent } from './index/insights-chart/insights-chart.component';
import { ContextChartComponent } from './index/context-chart/context-chart.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    HomeComponent,
    IndexComponent,
    MethodologyComponent,
    RoadmapComponent,
    AboutComponent,
    ContactComponent,
    TouComponent,
    InstitutionLoginComponent,
    InsightsChartComponent,
    ContextChartComponent
  ],
  imports: [
    HttpClientModule,
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

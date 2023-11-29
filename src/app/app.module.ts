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
import { ReactiveFormsModule } from '@angular/forms';
import { MediaKitComponent } from './media-kit/media-kit.component';
import { NewsroomComponent } from './newsroom/newsroom.component';
import { ToastrModule } from 'ngx-toastr';

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
    ContextChartComponent,
    MediaKitComponent,
    NewsroomComponent
  ],
  imports: [
    HttpClientModule,
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    ToastrModule.forRoot(),
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

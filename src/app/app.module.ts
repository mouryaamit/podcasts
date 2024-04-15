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
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { InstitutionLoginComponent } from './institution-login/institution-login.component';
import { InsightsChartComponent } from './index/insights-chart/insights-chart.component';
import { ContextChartComponent } from './index/context-chart/context-chart.component';
import { ReactiveFormsModule } from '@angular/forms';
import { MediaKitComponent } from './media-kit/media-kit.component';
import { NewsroomComponent } from './newsroom/newsroom.component';
import { SpinnerComponent } from './spinner/spinner.component';
import { LoadingInterceptor } from './services/loading.interceptor';
import { ToastrModule } from 'ngx-toastr';
import { NewsroomEventsComponent } from './newsroom-events/newsroom-events.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { SubscribeModelComponent } from './dialog/subscribe-model/subscribe-model.component';
import { MatDialogModule } from '@angular/material/dialog';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';
import { InstitutionLoginModelComponent } from './dialog/institution-login-model/institution-login-model.component';
import { RoadmapModelComponent } from './dialog/roadmap-model/roadmap-model.component';
import { SubscribeButtonComponent } from './subscribe-button/subscribe-button.component';
import { PartnersComponent } from './partners/partners.component';

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
    NewsroomComponent,
    SpinnerComponent,
    NewsroomEventsComponent,
    SubscribeModelComponent,
    InstitutionLoginModelComponent,
    RoadmapModelComponent,
    SubscribeButtonComponent,
    PartnersComponent
  ],
  entryComponents:[
    SubscribeModelComponent, InstitutionLoginModelComponent, RoadmapModelComponent
  ],
  exports: [
    
  ],
  imports: [
    HttpClientModule,
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    MatIconModule,
    MatButtonModule,
    BrowserAnimationsModule,
    MatDialogModule,
    ToastrModule.forRoot({
      maxOpened: 1,
      iconClasses  : {
        error: 'toast-error',
        info: 'toast-info',
        success: 'toast-success',
        warning: 'toast-warning',
      }
    }

    ),
  ],
  providers: [
    {
      provide: HTTP_INTERCEPTORS, useClass: LoadingInterceptor, multi: true
    }
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }

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

const routes: Routes = [
  {
    path: '',
    redirectTo: 'home',
    pathMatch: 'full',
    title: `Jocata Sumpoorn: India's First and Only MSME Economic Activity Index`,
  }, /*DO NOT change default root */
  {
    path: 'home',
    component: HomeComponent,
    title: `Jocata Sumpoorn: India's First and Only MSME Economic Activity Index`,
  },
  {
    path: 'index',
    component: IndexComponent,
    title: `Jocata Sumpoorn: Monthly Index and Other Macro Indicators for MSME Insights`,
  },
  {
    path: 'methodology',
    component: MethodologyComponent,
    title: `Jocata Sumpoorn: Index Building Approach and Methodology Leveraging GST Data`,
  },
  {
    path: 'roadmap',
    component: RoadmapComponent,
    title: `Jocata Sumpoorn: Upcoming Sub-Indices for Granular MSME Analysis`,
  },
  {
    path: 'about',
    component: AboutComponent,
    title: `Jocata Sumpoorn: Teams behind the Index`,
  },
  {
    path: 'contact',
    component: ContactComponent,
    title: `Contact Us - Reach Out to Jocata and SIDBI`,
  },
  {
    path: 'tou',
    component: TouComponent,
    title: `Jocata Sumpoorn: Terms of Use, Disclaimer, Privacy Policy, and Intellectual Property Rights`,
  },
  {
    path: 'institution',
    component: InstitutionLoginComponent,
    title: 'IL'
  },
  { path: '**', 
    redirectTo: 'home' 
  },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, {
      preloadingStrategy: PreloadAllModules,
      anchorScrolling: 'enabled',
    }),
  ],
  exports: [RouterModule],
})
export class AppRoutingModule { }

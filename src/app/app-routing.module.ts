import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { IndexComponent } from './index/index.component';
import { MethodologyComponent } from './methodology/methodology.component';
import { RoadmapComponent } from './roadmap/roadmap.component';

const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },/*DO NOT chnage default root */
  { path: 'home', component: HomeComponent},
  { path: 'index', component: IndexComponent},
  { path: 'methodology', component: MethodologyComponent},
  { path: 'roadmap', component: RoadmapComponent},
  { path: '**', redirectTo: 'home' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules, anchorScrolling: 'enabled' })],
  exports: [RouterModule]
})
export class AppRoutingModule { }

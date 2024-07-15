import { Component, OnInit } from '@angular/core';
import * as AOS from 'aos';
import * as $ from 'jquery';
import { environment } from 'src/environments/environment';
import { MetaService } from './services/meta.service';
import { ActivatedRoute, Router, NavigationEnd, NavigationStart } from '@angular/router';
import { filter, map, mergeMap } from 'rxjs/operators';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent implements OnInit {
  hide:boolean = false;
  constructor(
    private metaService: MetaService,
    private activatedRoute: ActivatedRoute,
    private router: Router
  ) {
    this.router.events.subscribe((event) => {
      const currentUrl = this.router.url;
      this.hide = (currentUrl === "/index?hide=true");
      console.log("currentUrl",currentUrl,"hide",this.hide)
        });
  }

  ngOnInit() {
    AOS.init({
      // disable: window.innerWidth < 768
    });

    console.info('Last release timestamp is set to:', environment.timeStamp);

    // Update SEO Tags
    this.router.events
      .pipe(
        filter((event) => event instanceof NavigationEnd),
        map(() => this.activatedRoute),
        map((route) => {
          while (route.firstChild) route = route.firstChild;
          return route;
        }),
        filter((route) => route.outlet === 'primary'),
        mergeMap((route) => route.data)
      )
      .subscribe((event) => {
        this.metaService.updateTitle(event['title']);
        this.metaService.updateDescription(event['description']);
        this.metaService.updateKeywords(event['keywords']);
        this.metaService.updateCanonicalLink();
      });
  }

  hideErrorModal() {
    $('#errorsModal').hide();
    $('.error_text').show();
    $('.error_text_dynamic').hide();
    $('.modal-backdrop').remove();
    $(document.body).removeClass('modal-open');
    $(document.body).removeAttr('style');
  }

  // Check for Maintenance State
  isUnderMaintenance(): boolean {
    return this.router.url.includes('maintenance');
  }
}

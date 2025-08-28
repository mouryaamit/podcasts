import { Component, OnInit, HostListener } from '@angular/core';
import { Router, NavigationEnd } from '@angular/router';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
})
export class HeaderComponent implements OnInit {
  appHeaderShadow = false;
  isResponsive = false;
  isInstitutionActive: boolean = false;
  isNewsroomEventsActive: boolean = false;
  isUnderMaintenance: boolean = false;

  @HostListener('window:scroll', [])
  onWindowScroll() {
    const scroll = window.scrollY;
    this.appHeaderShadow = scroll > 0;
  }

  constructor(private router: Router) { }

  ngOnInit(): void {
    this.router.events.subscribe((event) => {
      const currentUrl = this.router.url;
      // Automatically close the responsive menu on navigation
      if (event instanceof NavigationEnd && this.isResponsive) {
        this.isResponsive = false;
        document.body.classList.remove('no-scroll');
      }

      // Check if institution login is active
      if (event instanceof NavigationEnd) {
        this.isInstitutionActive = currentUrl.includes('/institution');
      }

      // Check if Newsroom events is active
      if (event instanceof NavigationEnd) {
        this.isNewsroomEventsActive = currentUrl.includes('/newsroom') || currentUrl.includes('/newsroom-events');
      }

      // Check if Maintenance is active
      if (event instanceof NavigationEnd) {
        this.isUnderMaintenance = currentUrl.includes('/maintenance');
      }
    });
  }

  toggleMenu() {
    this.isResponsive = !this.isResponsive;
    document.body.classList.toggle('no-scroll');
  }

  // goToGallery(param) {
  //   this.router.navigate(['/newsroom-events', param]);
  // }
}

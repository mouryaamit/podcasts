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

  @HostListener('window:scroll', [])
  onWindowScroll() {
    const scroll = window.scrollY;
    this.appHeaderShadow = scroll > 0;
  }

  toggleMenu() {
    this.isResponsive = !this.isResponsive;
    document.body.classList.toggle('no-scroll');
  }

  constructor(private router: Router) {}

  ngOnInit(): void {
    this.router.events.subscribe((event) => {
      // Automatically close the responsive menu on navigation
      if (event instanceof NavigationEnd && this.isResponsive) {
        this.isResponsive = false;
        document.body.classList.remove('no-scroll');
      }

      // Check if institution login is active
      if (event instanceof NavigationEnd) {
        this.isInstitutionActive = this.router.isActive('institution', true);
      }
    });
  }
}

import { Component, OnInit, HostListener } from '@angular/core';
import { Router, NavigationEnd } from '@angular/router';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  appHeaderShadow = false;
  isResponsive = false;

  @HostListener('window:scroll', [])
  onWindowScroll() {
    const scroll = window.scrollY;
    this.appHeaderShadow = scroll > 0;
  }

  toggleMenu() {
    this.isResponsive = !this.isResponsive;
  }

  constructor(private router: Router) { }

  ngOnInit(): void {
    // Subscribe to router events to automatically close the menu on navigation
    this.router.events.subscribe((event) => {
      if (event instanceof NavigationEnd && this.isResponsive) {
        this.isResponsive = false;
      }
    });
  }

}

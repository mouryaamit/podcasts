import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  marqueeElementsDisplayed:any;
  marqueeContent: any;
  constructor() { }

  ngOnInit(): void {
    // Marquee Logic for HomePage
    const root = document.documentElement;
    this.marqueeElementsDisplayed  = Number(getComputedStyle(root).getPropertyValue("--marquee-elements-displayed"));
    this.marqueeContent = document.querySelector("ul.marquee-content");

    root.style.setProperty("--marquee-elements", this.marqueeContent.children.length);

    for (let i = 0; i < this.marqueeElementsDisplayed; i++) {
      this.marqueeContent.appendChild(this.marqueeContent.children[i].cloneNode(true));
    }
  }

}

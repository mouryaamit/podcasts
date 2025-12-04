import {
  Component,
  ElementRef,
  Renderer2,
  AfterViewInit,
  OnInit,
} from '@angular/core';

@Component({
  selector: 'app-methodology',
  templateUrl: './methodology.component.html',
  styleUrls: ['./methodology.component.scss'],
})
export class MethodologyComponent implements OnInit {
  isGeoActive = true;
  isTurnoverActive = false;
  isSectorActive = false;
  isActivityActive = false;
  sectionStates: boolean[] = [];

  constructor(private renderer: Renderer2, private el: ElementRef) {}

  ngOnInit(): void {}

  // Active & Inactive Icons for Tabs
  toggleIcons(type: string) {
    this.resetAllIcons();
    if (type === 'geo') {
      this.isGeoActive = true;
    } else if (type === 'turnover') {
      this.isTurnoverActive = true;
    } else if (type === 'sector') {
      this.isSectorActive = true;
    } else if (type === 'activity') {
      this.isActivityActive = true;
    }
  }

  resetAllIcons() {
    this.isGeoActive = false;
    this.isTurnoverActive = false;
    this.isSectorActive = false;
    this.isActivityActive = false;
  }

  // States, UTs, Cities JSON
  stateCityData = stateCityData;

  toggleAccordion(index: number) {
    this.sectionStates[index] = !this.sectionStates[index]; // Toggle the state
  }

  ngAfterViewInit() {
    // Scrolling Nature of States & UTs wrt Geo Map
    const scrollableContent =
      this.el.nativeElement.querySelector('#scrollableContent');
    const fixedImage = this.el.nativeElement.querySelector('#fixedImage');

    if (scrollableContent && fixedImage) {
      this.renderer.listen(scrollableContent, 'scroll', (event) => {
        if (
          scrollableContent.scrollHeight - scrollableContent.scrollTop ===
          scrollableContent.clientHeight
        ) {
          this.renderer.setStyle(document.body, 'overflow', 'auto');
        } else {
          this.renderer.setStyle(document.body, 'overflow', 'hidden');
        }
      });
    } else {
      // console.log('One or both of the elements with the specified IDs were not found.');
    }
  }
}

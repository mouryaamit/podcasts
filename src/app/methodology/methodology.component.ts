import {
  Component,
  ElementRef,
  Renderer2,
  OnInit,
  AfterViewInit,
} from '@angular/core';
import * as CryptoJS from 'crypto-js';
import { GraphApiService } from '../services/graph-api.service';
import stateCityData from '../../assets/json/stateCityData.json';
import * as $ from 'jquery';

@Component({
  selector: 'app-methodology',
  templateUrl: './methodology.component.html',
  styleUrls: ['./methodology.component.scss'],
})
export class MethodologyComponent implements OnInit, AfterViewInit {
  isGeoActive = true;
  isTurnoverActive = false;
  isSectorActive = false;
  isActivityActive = false;
  sectionStates: boolean[] = [];
  activityDistributionData: any = [];
  turnoverDistributionData: any = [];
  sectorDistributionData: any = [];
  encryptedData: string = '';
  turnoverDistributionGraphWidth: any;
  activityDistributionGraphWidth: any;
  sectorDistributionGraphWidth: any;

  constructor(
    private graphApiService: GraphApiService,
    private renderer: Renderer2,
    private el: ElementRef
  ) {}

  ngOnInit() {
    // this.getSumpoornData();
    this.getSumpoornDataFromJson();
  }

  getSumpoornData() {
    const name = 'SUMPOORNDATA';
    const salt = '6fbb7e4f-756d-11ee-a429-00090faa0001';

    this.encryptedData = CryptoJS.AES.encrypt(name, salt).toString();
    this.graphApiService
      .getSumpoornGraphApiData({ ssUuid: this.encryptedData })
      .then(
        (response: any) => {
          if (response && response.statusCode == '200') {
            this.sectorDistributionData =
              response.sumpoornData.Distributions.HsnDistributionByValue;
            this.turnoverDistributionData =
              response.sumpoornData.Distributions.MsmDistribution;
            this.activityDistributionData =
              response.sumpoornData.Distributions.ActivityDistribution;
          }
        },
        (error) => {}
      );
  }

  getSumpoornDataFromJson() {
    this.graphApiService.getSumpoornGraphApiDataFromJson().then(
      (response: any) => {
        if (response && response.statusCode == '200') {
          this.sectorDistributionData =
            response.sumpoornData.Distributions.HsnDistributionByValue;
          this.turnoverDistributionData =
            response.sumpoornData.Distributions.MsmDistribution;
          this.activityDistributionData =
            response.sumpoornData.Distributions.ActivityDistribution;
        }
      },
      (error) => {
        console.error('getSumpoornGraphData Error', error);
      }
    );
  }

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

  scrollToRight(tab) {
    console.log('scrollToRight', tab);
    if (tab === 'turnover') {
      $('#turnover_graph_svg_inner').scrollLeft(
        this.turnoverDistributionGraphWidth
      );
    } else if (tab === 'activity') {
      $('#activity_graph_svg_inner').scrollLeft(
        this.activityDistributionGraphWidth
      );
    } else if (tab === 'sector') {
      $('#context_graph_svg').scrollLeft(this.sectorDistributionGraphWidth);
      $('#mobile_context_graph_svg').scrollLeft(
        this.sectorDistributionGraphWidth
      );
    }
  }

  checkTurnoverDistributionGraphWidth(event) {
    this.turnoverDistributionGraphWidth = event;
  }

  checkActivityDistributionGraphWidth(event) {
    this.activityDistributionGraphWidth = event;
  }

  checkSectorDistributionGraphWidth(event) {
    this.sectorDistributionGraphWidth = event;
  }
}

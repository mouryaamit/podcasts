import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { GraphApiService } from '../services/graph-api.service';
import * as $ from 'jquery';
// declare var $: any;

@Component({
    selector: 'app-index',
    templateUrl: './index.component.html',
    styleUrls: ['./index.component.scss'],
    encapsulation: ViewEncapsulation.None
})
export class IndexComponent implements OnInit {
    sumpoornGraphData: any;
    iipGraphData: any;
    pmiGraphData: any;
    gvaGraphData: any;
    infoItemToShow: string | undefined;
    insightsGraphWidth: any;
    contextGraphWidth: any;
    // @ViewChild('slide_prev') slide_prev: ElementRef;
    // @ViewChild('slide_next') slide_next: ElementRef;

    constructor(private graphApiService: GraphApiService) { }

    // Data for Context Table Mobile
    contextTableData = [
        {
            title: 'Published By',
            items: ['GOI', 'S&P Global', 'Jocata']
        },
        {
            title: 'Nature of Index',
            items: ['Industrial manufacturing performance', 'Business optimism', 'Sales performance']
        },
        {
            "title": "Type of Data",
            "items": ["Actual manufacturing production", "Opinion based", "Actual MSME monthly sales data reflected from GSTIN returns of credit-seeking entities"]
          },
          {
            "title": "Sample Size",
            "items": ["--", "400 companies", "1000 MSMEs per month (minimum) <br/> 2000 MSMEs per month (desirable)"]
          },
          {
            "title": "Factors Involved",
            "items": ["Production data based on NIC (National Industrial Classification) codes", "Survey based", "Fact based - Delta of % of growing & declining GSTINs combined with amplitude of change in turnover."]
          },
          {
            "title": "Generation - Frequency & Date",
            "items": ["Monthly <br/> 7 weeks later, from the current month", "Monthly <br/> 1st week of succeeding month", "Monthly <br/> 4 weeks later, from the current month"]
          },
          {
            "title": "Index Type and Scale",
            "items": [
              "Cumulative index <br/> Base year: 2011-12 <br/> Base value: 100",
              "Composite diffusion index <br/> Base year: None <br/> Base value: None <br/> Scale: 0 to 100",
              "Relative amplitude adjusted composite diffusion index <br/> Base year: None <br/> Base value: None <br/> Scale: 0 to 1"
            ]
          },
          {
            "title": "Seasonality Adjusted?",
            "items": ["No", "Yes", "Yes"]
          }
    ]

    // Chart & Table Info Icon Click
    showInfo(item: string) {
        this.infoItemToShow = item;
    }
    ngOnInit(): void {
        this.graphApiService.getSumpoornGraphData().then((data) => {
            if (data) {
                this.sumpoornGraphData = data;
                this.getContextGraphData();
            }
        }, (error) => {
            console.error("getSumpoornGraphData Error", error);
        })
    }    

    getContextGraphData() {
        this.graphApiService.getIipGraphData().then((IIPGraphData) => {
            this.iipGraphData = IIPGraphData;
            getPmiGraphData();
        }, (error) => {
            getPmiGraphData();
            console.error("getSumpoornGraphData Error", error);
        });
        let getPmiGraphData = () => {
            this.graphApiService.getPmiGraphData().then((PmiGraphData) => {
                this.pmiGraphData = PmiGraphData;
                getGvaGraphData();
            }, (error) => {
                getGvaGraphData();
                console.error("getSumpoornGraphData Error", error);
            });
        }
        let getGvaGraphData = () => {
            this.graphApiService.getGvaGraphData().then((GvaGraphData) => {
                this.gvaGraphData = GvaGraphData;
                
            }, (error) => {
                console.error("getSumpoornGraphData Error", error);
            });
        }
    }
    scrollToRight(tab){
        if(tab === 'Insights'){
            $("#mobile_insights_graph_svg").scrollLeft(this.insightsGraphWidth)
        } else {
            $("#mobile_context_graph_svg").scrollLeft(this.contextGraphWidth)
        }
    }

    checkInsightsGraphWidth(event){
        this.insightsGraphWidth = event;
    }

    checkContextGraphWidth(event){
        this.contextGraphWidth = event;
    }
}


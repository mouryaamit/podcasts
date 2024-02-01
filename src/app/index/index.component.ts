import { Component, OnInit, ViewChild, ViewEncapsulation } from '@angular/core';
import { GraphApiService } from '../services/graph-api.service';
import { SumpoornApiService } from '../services/sumpoorn-api.service';
import { saveAs } from 'file-saver'; 
import * as $ from 'jquery';
import * as CryptoJS from 'crypto-js';
import { InsightsChartComponent } from './insights-chart/insights-chart.component';
// declare var $: any;

@Component({
    selector: 'app-index',
    templateUrl: './index.component.html',
    styleUrls: ['./index.component.scss'],
    encapsulation: ViewEncapsulation.None
})
export class IndexComponent implements OnInit {
    @ViewChild(InsightsChartComponent) insightsChartComponent:InsightsChartComponent | undefined;
    sumpoornGraphData: any;
    iipGraphData: any;
    pmiGraphData: any;
    gvaGraphData: any;
    infoItemToShow: string | undefined;
    insightsGraphWidth: any;
    contextGraphWidth: any;
    insightsInfoIcon = true;
    contextInfoIcon = false;
    addComentaryData: any;
    encryptedData: string = "";
    downloadMonth: any;
    // @ViewChild('slide_prev') slide_prev: ElementRef;
    // @ViewChild('slide_next') slide_next: ElementRef;

    constructor(private graphApiService: GraphApiService, public sumpoornApiService: SumpoornApiService) { }

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
            "items": ["Monthly: 7 weeks later, from the current month", "Monthly: 1st week of succeeding month", "Monthly: 4 weeks later, from the current month"]
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
        this.getSumpoornData();
        // this.getSumpoornDataFromJson();
        
        // this.graphApiService.getSumpoornGraphData().then((data) => {
        //     if (data) {
        //         this.sumpoornGraphData = data;
        //         this.getContextGraphData();
        //     }
        // }, (error) => {
        //     console.error("getSumpoornGraphData Error", error);
        // })        
    }    

    getSumpoornData(){
        const name = "SUMPOORNDATA";
        const salt = "6fbb7e4f-756d-11ee-a429-00090faa0001";

        this.encryptedData = CryptoJS.AES.encrypt(name, salt).toString();
        this.graphApiService.getSumpoornGraphApiData({ssUuid: this.encryptedData}).then((response: any) => {
            if (response && response.statusCode == "200") {
                this.sumpoornGraphData = response.sumpoornData;
                this.iipGraphData = response.iipData;
                this.pmiGraphData = response.pmiData;
                this.gvaGraphData = response.gvaData;
            }
        }, (error) => {

        })
    }

    getSumpoornDataFromJson() {
        this.graphApiService.getSumpoornGraphApiDataFromJson().then((response:any) => {
            if (response && response.statusCode == "200") {
                this.sumpoornGraphData = response.sumpoornData;
                this.iipGraphData = response.iipData;
                this.pmiGraphData = response.pmiData;
                this.gvaGraphData = response.gvaData;
            }
        }, (error) => {
            console.error("getSumpoornGraphData Error", error);
        }) 
    }

    // getContextGraphData() {
    //     this.graphApiService.getIipGraphData().then((IIPGraphData) => {
    //         this.iipGraphData = IIPGraphData;
    //         getPmiGraphData();
    //     }, (error) => {
    //         getPmiGraphData();
    //         console.error("getSumpoornGraphData Error", error);
    //     });
    //     let getPmiGraphData = () => {
    //         this.graphApiService.getPmiGraphData().then((PmiGraphData) => {
    //             this.pmiGraphData = PmiGraphData;
    //             getGvaGraphData();
    //         }, (error) => {
    //             getGvaGraphData();
    //             console.error("getSumpoornGraphData Error", error);
    //         });
    //     }
    //     let getGvaGraphData = () => {
    //         this.graphApiService.getGvaGraphData().then((GvaGraphData) => {
    //             this.gvaGraphData = GvaGraphData;

    //         }, (error) => {
    //             console.error("getSumpoornGraphData Error", error);
    //         });
    //     }
    // }

    scrollToRight(tab) {
        this.insightsInfoIcon = tab === 'Insights';
        this.contextInfoIcon = tab === 'Context';
        
        if (tab === 'Insights') {
            $("#insights_graph_svg").scrollLeft(this.insightsGraphWidth);
            $("#mobile_insights_graph_svg").scrollLeft(this.insightsGraphWidth);
        } else {
            $("#context_graph_svg").scrollLeft(this.contextGraphWidth);
            $("#mobile_context_graph_svg").scrollLeft(this.contextGraphWidth);
        }
    }

    checkInsightsGraphWidth(event) {
        this.insightsGraphWidth = event;
    }

    checkContextGraphWidth(event) {
        this.contextGraphWidth = event;
    }

    downloadSumpoornData() {
        const salt = "6fbb7e4f-756d-11ee-a429-00090faa0001";
        this.encryptedData = CryptoJS.AES.encrypt( document.getElementsByClassName('ec_month_title_download')[0].innerHTML, salt).toString();
        
        this.sumpoornApiService.downloadSumpoornGraphDetails({monthUuid: this.encryptedData}).then(
          (resp: any) => {
            const byteArray = new Uint8Array(atob(resp.pdf).split('').map(char => char.charCodeAt(0)));
            const blob = new Blob([byteArray], {type: resp.mimeType+";charset=utf-8"});
            saveAs(blob, resp.fileName);
          },
          (error) => {
            console.error("downloadSumpoornGraphDetails",error);
            $("#errorsModal").show();
          }
        );
    }
    openInsightsInfoIcon(event){
        this.insightsChartComponent?.openInfoIcon("#mobile_insights_graph_svg", {clientX:event.clientX,clientY:event.clientY});
    }
}


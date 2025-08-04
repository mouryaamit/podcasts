import {
  Component,
  OnInit,
  ViewChild,
  ViewEncapsulation,
  OnDestroy,
  AfterViewInit,
  ElementRef,
} from "@angular/core";
import { GraphApiService } from "../services/graph-api.service";
import { SumpoornApiService } from "../services/sumpoorn-api.service";
import { saveAs } from "file-saver";
import * as $ from "jquery";
import * as CryptoJS from "crypto-js";
import { InsightsChartComponent } from "./insights-chart/insights-chart.component";
import { Router } from "@angular/router";
import { environment } from "../../environments/environment";
// declare var $: any;

@Component({
  selector: "app-index",
  templateUrl: "./index.component.html",
  styleUrls: ["./index.component.scss"],
  encapsulation: ViewEncapsulation.None,
})
export class IndexComponent implements OnInit, AfterViewInit, OnDestroy {
  @ViewChild(InsightsChartComponent) insightsChartComponent:
    | InsightsChartComponent
    | undefined;
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
  hide: boolean = false;
  text: string = "";
  voices: SpeechSynthesisVoice[] = [];
  selectedVoice?: SpeechSynthesisVoice;
  private speechSynthesis = window.speechSynthesis;
  private utterance: SpeechSynthesisUtterance | null = null;
  currentTime: number = 0; // Current playback time in seconds
  totalDuration: number = 0; // Estimated total duration in seconds
  playing: boolean = false; // Speech is actively playing
  paused: boolean = false; // Speech is paused
  private wpm: number = 180; // Words Per Minute (adjust as needed)
  wordTimings: number[] = []; // Array of time positions for each word
  private observer!: MutationObserver;
  isVoiceFound = false;

  // Data for Context Table Mobile
  contextTableData = [
    {
      title: "Published By",
      items: ["GOI", "S&P Global", "Jocata"],
    },
    {
      title: "Nature of Index",
      items: [
        "Industrial manufacturing performance",
        "Business optimism",
        "Sales performance",
      ],
    },
    {
      title: "Type of Data",
      items: [
        "Actual manufacturing production",
        "Opinion based",
        "Actual MSME monthly sales data reflected from GSTIN returns of credit-seeking entities",
      ],
    },
    {
      title: "Sample Size",
      items: [
        "--",
        "400 companies",
        "1000 MSMEs per month (minimum) <br/> 2000 MSMEs per month (desirable)",
      ],
    },
    {
      title: "Factors Involved",
      items: [
        "Production data based on NIC (National Industrial Classification) codes",
        "Survey based",
        "Fact based - Delta of % of growing & declining GSTINs combined with amplitude of change in turnover.",
      ],
    },
    {
      title: "Generation - Frequency & Date",
      items: [
        "Monthly: 7 weeks later, from the current month",
        "Monthly: 1st week of succeeding month",
        "Monthly: 4 weeks later, from the current month",
      ],
    },
    {
      title: "Index Type and Scale",
      items: [
        "Cumulative index <br/> Base year: 2011-12 <br/> Base value: 100",
        "Composite diffusion index <br/> Base year: None <br/> Base value: None <br/> Scale: 0 to 100",
        "Relative amplitude adjusted composite diffusion index <br/> Base year: None <br/> Base value: None <br/> Scale: 0 to 1",
      ],
    },
    {
      title: "Seasonality Adjusted?",
      items: ["No", "Yes", "Yes"],
    },
  ];

  constructor(
    private graphApiService: GraphApiService,
    public sumpoornApiService: SumpoornApiService,
    private router: Router,
    private elRef: ElementRef
  ) {
    this.router.events.subscribe((event) => {
      const currentUrl = this.router.url;
      this.hide = currentUrl === "/index?hide=true";
    });
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
    // setTimeout(() => this.loadVoices(), 0);
  }
  ngAfterViewInit() {
    if (this.observer) {
    }
  }
  // ngAfterViewInit() {
  //     // const webDiv = this.elRef.nativeElement.querySelector('.ec_message');
  //     // const mobileDiv = this.elRef.nativeElement.querySelector('#ec_message_mobile');
  //     const div = this.elRef.nativeElement.querySelector('#textForSpeech');

  //     // const elementsToObserve = [webDiv, mobileDiv].filter(el => !!el);
  //     const elementsToObserve = [div].filter(el => !!el);

  //     this.observer = new MutationObserver((mutations) => {
  //       mutations.forEach((mutation) => {
  //         const activeElement = mutation.target as HTMLElement;
  //         this.text = activeElement.textContent || activeElement.innerText || '';
  //         const words = this.text.split(/\s+/).filter(word => word.length > 0);
  //         this.totalDuration = (words.length / this.wpm) * 60;
  //         this.currentTime = 0;
  //         const voices = window.speechSynthesis.getVoices();

  //       // Try to find "Daniel" or "Google US English"
  //       this.selectedVoice = voices.find(voice =>
  //           voice.name.includes("Daniel") || voice.name.includes("Google US English")
  //       );

  //       // Set isVoiceFound based on whether a match was found
  //       this.isVoiceFound = !!this.selectedVoice && !environment.isVoiceHidden;
  //         setTimeout(() => {
  //           if(this.isVoiceFound){
  //           this.startSpeech();
  //           this.stopSpeech();
  //           }
  //         }, 0);
  //       });
  //     });

  //     elementsToObserve.forEach(el => {
  //       this.observer.observe(el, {
  //         attributes: true,
  //         childList: true,
  //         subtree: true,
  //         characterData: true,
  //       });
  //     });
  //   if (this.observer) {
  //   }
  // }

  ngOnDestroy() {
    if (this.observer) {
      // this.observer.disconnect();
    }
    this.stopSpeech();
  }

  // Chart & Table Info Icon Click
  showInfo(item: string) {
    this.infoItemToShow = item;
  }

  getSumpoornData() {
    const name = "SUMPOORNDATA";
    const salt = "6fbb7e4f-756d-11ee-a429-00090faa0001";

    this.encryptedData = CryptoJS.AES.encrypt(name, salt).toString();
    this.graphApiService
      .getSumpoornGraphApiData({ ssUuid: this.encryptedData })
      .then(
        (response: any) => {
          if (response && response.statusCode == "200") {
            this.sumpoornGraphData = response.sumpoornData;
            this.iipGraphData = response.iipData;
            this.pmiGraphData = response.pmiData;
            this.gvaGraphData = response.gvaData;
          }
        },
        (error) => {}
      );
  }

  getSumpoornDataFromJson() {
    this.graphApiService.getSumpoornGraphApiDataFromJson().then(
      (response: any) => {
        if (response && response.statusCode == "200") {
          this.sumpoornGraphData = response.sumpoornData;
          this.iipGraphData = response.iipData;
          this.pmiGraphData = response.pmiData;
          this.gvaGraphData = response.gvaData;
        }
      },
      (error) => {
        console.error("getSumpoornGraphData Error", error);
      }
    );
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
    this.insightsInfoIcon = tab === "Insights";
    this.contextInfoIcon = tab === "Context";

    if (tab === "Insights") {
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
    this.encryptedData = CryptoJS.AES.encrypt(
      document.getElementsByClassName("ec_month_title_download")[0].innerHTML,
      salt
    ).toString();

    this.sumpoornApiService
      .downloadSumpoornGraphDetails({ monthUuid: this.encryptedData })
      .then(
        (resp: any) => {
          const byteArray = new Uint8Array(
            atob(resp.pdf)
              .split("")
              .map((char) => char.charCodeAt(0))
          );
          const blob = new Blob([byteArray], {
            type: resp.mimeType + ";charset=utf-8",
          });
          saveAs(blob, resp.fileName);
        },
        (error) => {
          console.error("downloadSumpoornGraphDetails", error);
          $("#errorsModal").show();
        }
      );
  }
  openInsightsInfoIcon(event) {
    this.insightsChartComponent?.openInfoIcon("#mobile_insights_graph_svg", {
      clientX: event.clientX,
      clientY: event.clientY,
    });
  }
  // loadVoices() {
  //   this.voices = this.speechSynthesis
  //     .getVoices()
  //     .filter((voice) => voice.lang === 'en-US');
  //   this.selectedVoice = this.voices[0];
  // }
  startPlay() {
    if (this.speechSynthesis.paused) {
      this.resumeSpeech();
    } else {
      this.startSpeech();
    }
  }
  replaySpeech(): void {
    this.stopSpeech();
    this.startSpeech();
  }
  startSpeech(): void {
    if (!this.text.trim()) return;

    this.stopSpeech(); // Stop any ongoing speech

    this.utterance = new SpeechSynthesisUtterance(this.text);

    // Assign voice to utterance if found
    if (this.selectedVoice) {
      this.utterance.voice = this.selectedVoice;
    }

    this.wordTimings = []; // Reset word timings

    const words = this.text.split(/\s+/);
    this.totalDuration = (words.length / this.wpm) * 60;

    let currentWordIndex = 0;
    let timeElapsed = 0;

    // Track word timings
    this.utterance.addEventListener("boundary", (event) => {
      if (event.charIndex !== undefined) {
        const elapsedText = this.text.substring(0, event.charIndex);
        const elapsedWords = elapsedText.split(/\s+/).length;

        // Record word timings based on WPM
        while (currentWordIndex < elapsedWords) {
          this.wordTimings.push(timeElapsed);
          timeElapsed += 60 / this.wpm; // Time for one word
          currentWordIndex++;
        }

        this.currentTime = Number(timeElapsed);
      }
    });

    this.utterance.addEventListener("end", () => {
      this.playing = false;
      this.paused = false;
      this.currentTime = this.totalDuration;
    });

    this.speechSynthesis.speak(this.utterance);
    this.playing = true;
    this.paused = false;
  }

  stopSpeech(): void {
    if (this.speechSynthesis.speaking) {
      this.speechSynthesis.cancel();
    }
    this.playing = false;
    this.paused = false;
    this.currentTime = 0;
  }

  pauseSpeech(): void {
    if (this.speechSynthesis.speaking && !this.speechSynthesis.paused) {
      this.speechSynthesis.pause();
      this.paused = true;
      this.playing = false;
    }
  }

  resumeSpeech(): void {
    if (this.speechSynthesis.paused) {
      this.speechSynthesis.resume();
      this.paused = false;
      this.playing = true;
    }
  }
}

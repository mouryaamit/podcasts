import { Component, OnInit, ViewChild, ViewEncapsulation } from '@angular/core';
import { GraphApiService } from '../services/graph-api.service';
import { SumpoornApiService } from '../services/sumpoorn-api.service';
import { saveAs } from 'file-saver';
import * as $ from 'jquery';
import * as CryptoJS from 'crypto-js';
import { InsightsChartComponent } from './insights-chart/insights-chart.component';
import { Router } from '@angular/router';
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
    hide:boolean = false;
    // @ViewChild('slide_prev') slide_prev: ElementRef;
    // @ViewChild('slide_next') slide_next: ElementRef;
    text: string = "October saw the sales activity of small businesses steady in the zone of mild expansion, with the Sumpoorn index still below the levels reached in June and July. This has broadly been in line with the national growth estimates - the second quarter of this year has seen subdued economic growth, with GDP at constant prices estimated at 5.4 percent YoY, a seven-quarter low. While the low Q2 estimate will impact the growth forecasts for the year, the festive season boost seen in October holds promise. The Finance Ministry's Monthly Economic Review for October has pointed to positive signals for rural demand from record-high tractor sales, robust growth in two-wheeler sales, and e-way bills at an all-time high in volume, driven by festive demand. Going ahead, rural demand is expected to stay positive as the First Advance Estimates of kharif output indicate that production of major Kharif crops will hit a record 164.7 million tonnes, higher by 5.7 percent over last year and 8.2 percent greater than the average food grain production in the past five years. Further, central government spending is expected to increase significantly in the remaining months of this year to meet the budget target, as it needs to compensate for the underperformance so far. This holds true for state governments as well - according to analysis by ICRA for 15 major states, the combined revenue expenditure and capex must increase by 26 percent and 40 percent respectively in H2FY25 to meet the budgeted target for the year. However, even as rural demand has picked up, household finances do not report a bright picture. NABARD released results from its second bimonthly rural economic conditions and sentiments survey in November, reporting a moderation in income and financial savings, compared to its earlier round in September. While the share of income for consumption increased over the two rounds, that on loan repayment rose from 13.4 percent to 13.7 percent. As before, data on borrowings and capital investment suggests that loans may have been used for increasing consumption, which is not sustainable. Further, signs of concern for small businesses stem from slowing urban demand and low growth in manufacturing this year. Urban sales which account for about 2/3rd of FMCG business have seen volume growth more than halved this year, as inflation has hit disposable incomes, and wage growth has been muted, with some analysts (Elara Securities) reporting contraction in real employment costs for listed non-financial companies in Q2 this year. Corporate earnings have also moderated and are expected to turn in their first single-digit growth in the past five years, according to Motilal Oswal. All in all, for MSMEs, who have stayed the course so far, there are mixed signals for demand in the months ahead.";
    voices: SpeechSynthesisVoice[] = [];
    selectedVoice?: SpeechSynthesisVoice;
    private speechSynthesis = window.speechSynthesis;
    private utterance: SpeechSynthesisUtterance | null = null;
    currentTime: number = 0; // Current playback time in seconds
    totalDuration: number = 0; // Estimated total duration in seconds
    playing: boolean = false; // Speech is actively playing
    paused: boolean = false; // Speech is paused
    private wpm: number = 180; // Words Per Minute (adjust as needed)
    // private wordTimings: { word: string; startTime: number }[] = []; // Word boundary timings
    wordTimings: number[] = []; // Array of time positions for each word

    constructor(private graphApiService: GraphApiService, public sumpoornApiService: SumpoornApiService, private router: Router) {
      this.router.events.subscribe((event) => {
        const currentUrl = this.router.url;
        this.hide = (currentUrl === "/index?hide=true");
        console.log("currentUrl",currentUrl,"hide",this.hide)
          });
     }

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
        setTimeout(() => this.loadVoices(), 100);
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
    loadVoices() {
      this.voices = this.speechSynthesis
        .getVoices()
        .filter((voice) => voice.lang === 'en-US');
        this.selectedVoice = this.voices[0]
        console.log(this.voices)
    }

    // startSpeech() {
    //   this.text = (document.getElementsByClassName('ec_message')[0] as HTMLElement).innerText
    //   if (!this.text.trim()) return;

    // this.stopSpeech(); // Stop any ongoing speech
    // this.utterance = new SpeechSynthesisUtterance(this.text);
    // if(this.selectedVoice)
    //   this.utterance.voice = this.selectedVoice;
    // // Estimate total duration based on WPM
    // const words = this.text.split(/\s+/).length;
    // this.totalDuration = (words / this.wpm) * 60;

    // // Track progress with `boundary` event
    // this.utterance.addEventListener('boundary', (event) => {
    //   if (event.charIndex !== undefined) {
    //     const elapsedText = this.text.substring(0, event.charIndex);
    //     const elapsedWords = elapsedText.split(/\s+/).length;
    //     this.currentTime = (elapsedWords / this.wpm) * 60;
    //   }
    // });

    // // Handle playback end
    // this.utterance.addEventListener('end', () => {
    //   this.playing = false;
    //   this.paused = false;
    //   this.currentTime = this.totalDuration;
    // });

    // // Start speech
    // this.speechSynthesis.speak(this.utterance);
    // this.playing = true;
    // this.paused = false;
    // }
    // pauseSpeech(): void {
    //   if (this.speechSynthesis.speaking && !this.speechSynthesis.paused) {
    //     this.speechSynthesis.pause();
    //     this.paused = true;
    //     this.playing = false;
    //   }
    // }

    // resumeSpeech(): void {
    //   if (this.speechSynthesis.paused) {
    //     this.speechSynthesis.resume();
    //     this.paused = false;
    //     this.playing = true;
    //   }
    // }

    // stopSpeech(): void {
    //   if (this.speechSynthesis.speaking) {
    //     this.speechSynthesis.cancel();
    //   }
    //   this.playing = false;
    //   this.paused = false;
    // }

    // forward(): void {
    //   if (!this.utterance) return;

    //   this.currentTime = Math.min(this.currentTime + 10, this.totalDuration);
    //   this.restartSpeechFromCurrentTime();
    // }

    // backward(): void {
    //   if (!this.utterance) return;

    //   this.currentTime = Math.max(this.currentTime - 10, 0);
    //   this.restartSpeechFromCurrentTime();
    // }

    // restartSpeechFromCurrentTime(): void {
    //   if (!this.text.trim()) return;

    //   this.stopSpeech(); // Stop current speech

    //   const words = this.text.split(/\s+/);
    //   const startWordIndex = Math.floor((this.currentTime / this.totalDuration) * words.length);
    //   const remainingText = words.slice(startWordIndex).join(' ');

    //   this.utterance = new SpeechSynthesisUtterance(remainingText);

    //   // Attach same listeners
    //   this.utterance.addEventListener('boundary', (event) => {
    //     if (event.charIndex !== undefined) {
    //       const elapsedText = this.text.substring(0, event.charIndex);
    //       const elapsedWords = elapsedText.split(/\s+/).length;
    //       this.currentTime = (elapsedWords / this.wpm) * 60;
    //     }
    //   });

    //   this.utterance.addEventListener('end', () => {
    //     this.playing = false;
    //     this.currentTime = this.totalDuration;
    //   });

    //   this.speechSynthesis.speak(this.utterance);
    //   this.playing = true;
    //   this.paused = false;
    // }

    // startSpeech(): void {
    //         // this.text = (document.getElementsByClassName('ec_message')[0] as HTMLElement).innerText
    //           if (!this.text.trim()) return;

    //           this.stopSpeech(); // Stop any ongoing speech
    //           this.wordTimings = []; // Reset word timings

    //           this.utterance = new SpeechSynthesisUtterance(this.text);

    //           // Estimate total duration based on WPM
    //           const words = this.text.split(/\s+/);
    //           this.totalDuration = (words.length / this.wpm) * 60;

    //           let wordIndex = 0;
    //           this.utterance.addEventListener('boundary', (event) => {
    //             if (event.charIndex !== undefined) {
    //               const elapsedText = this.text.substring(0, event.charIndex);
    //               const elapsedWords = elapsedText.split(/\s+/).length;

    //               // Record word timings
    //               if (elapsedWords > wordIndex) {
    //                 this.wordTimings.push({
    //                   word: words[wordIndex],
    //                   startTime: (elapsedWords / this.wpm) * 60,
    //                 });
    //                 wordIndex = elapsedWords;
    //               }

    //               this.currentTime = (elapsedWords / this.wpm) * 60;
    //             }
    //           });

    //           this.utterance.addEventListener('end', () => {
    //             this.playing = false;
    //             this.paused = false;
    //             this.currentTime = this.totalDuration;
    //           });

    //           this.speechSynthesis.speak(this.utterance);
    //           this.playing = true;
    //           this.paused = false;
    //         }

    //         stopSpeech(): void {
    //           if (this.speechSynthesis.speaking) {
    //             this.speechSynthesis.cancel();
    //           }
    //           this.playing = false;
    //           this.paused = false;
    //         }

    //         pauseSpeech(): void {
    //           if (this.speechSynthesis.speaking && !this.speechSynthesis.paused) {
    //             this.speechSynthesis.pause();
    //             this.paused = true;
    //             this.playing = false;
    //           }
    //         }

    //         resumeSpeech(): void {
    //           if (this.speechSynthesis.paused) {
    //             this.speechSynthesis.resume();
    //             this.paused = false;
    //             this.playing = true;
    //           }
    //         }

    //         forward(): void {
    //           console.log(this.currentTime)
    //           this.seekTo(this.currentTime + 10); // Seek forward by 10 seconds
    //         }

    //         backward(): void {
    //           this.seekTo(this.currentTime - 10); // Seek backward by 10 seconds
    //         }

    //         seekTo(time: number): void {
    //           if (!this.text.trim()) return;

    //           const targetTime = Math.max(0, Math.min(time, this.totalDuration)); // Ensure time is within range
    //           this.stopSpeech(); // Stop any ongoing speech

    //           // Find the word closest to the target time
    //           let startIndex = this.wordTimings.findIndex(timing => timing.startTime >= targetTime);

    //           // If no word is found (meaning time is less than first word), start from the first word
    //           if (startIndex === -1) {
    //             startIndex = 0;
    //           }

    //           const remainingText = this.text.split(/\s+/).slice(startIndex).join(' ');

    //           // Adjust the current time based on the word timing
    //           this.currentTime = this.wordTimings[startIndex]?.startTime || 0;
    //           console.log(this.currentTime)

    //           this.utterance = new SpeechSynthesisUtterance(remainingText);

    //           this.utterance.addEventListener('boundary', (event) => {
    //             if (event.charIndex !== undefined) {
    //               const elapsedText = this.text.substring(0, event.charIndex);
    //               const elapsedWords = elapsedText.split(/\s+/).length;
    //               this.currentTime = (elapsedWords / this.wpm) * 60;
    //             }
    //           });

    //           this.utterance.addEventListener('end', () => {
    //             this.playing = false;
    //             this.paused = false;
    //             this.currentTime = this.totalDuration;
    //           });

    //           this.speechSynthesis.speak(this.utterance);
    //           this.playing = true;
    //           this.paused = false;
    //         }
    startSpeech(): void {
      if (!this.text.trim()) return;

      this.stopSpeech(); // Stop any ongoing speech

      this.utterance = new SpeechSynthesisUtterance(this.text);
      this.wordTimings = []; // Reset word timings

      const words = this.text.split(/\s+/);
      this.totalDuration = (words.length / this.wpm) * 60;

      let currentWordIndex = 0;
      let timeElapsed = 0;

      // Track word timings
      this.utterance.addEventListener('boundary', (event) => {
        if (event.charIndex !== undefined) {
          const elapsedText = this.text.substring(0, event.charIndex);
          const elapsedWords = elapsedText.split(/\s+/).length;

          // Record word timings based on WPM
          while (currentWordIndex < elapsedWords) {
            this.wordTimings.push(timeElapsed);
            timeElapsed += 60 / this.wpm; // Time for one word
            currentWordIndex++;
          }

          this.currentTime = timeElapsed;
        }
      });

      this.utterance.addEventListener('end', () => {
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

    forward(): void {
      this.seekTo(this.currentTime + 10); // Seek forward by 10 seconds
    }

    backward(): void {
      this.seekTo(this.currentTime - 10); // Seek backward by 10 seconds
    }

    seekTo(time: number): void {
      if (!this.text.trim()) return;

      const targetTime = Math.max(0, Math.min(time, this.totalDuration)); // Ensure time is within range
      this.stopSpeech(); // Stop any ongoing speech

      // Find the closest word to the target time
      let startIndex = this.wordTimings.findIndex(timing => timing >= targetTime);
      if (startIndex === -1) {
        startIndex = this.wordTimings.length - 1;
      }

      // Create the remaining text to read
      const remainingText = this.text.split(/\s+/).slice(startIndex).join(' ');

      // Adjust the current time based on the word timing
      this.currentTime = this.wordTimings[startIndex] || 0;

      this.utterance = new SpeechSynthesisUtterance(remainingText);

      // Track word timings after seeking
      let currentWordIndex = startIndex;
      let timeElapsed = this.wordTimings[startIndex] || 0;

      this.utterance.addEventListener('boundary', (event) => {
        if (event.charIndex !== undefined) {
          const elapsedText = this.text.substring(0, event.charIndex);
          const elapsedWords = elapsedText.split(/\s+/).length;

          while (currentWordIndex < elapsedWords) {
            this.wordTimings.push(timeElapsed);
            timeElapsed += 60 / this.wpm;
            currentWordIndex++;
          }

          this.currentTime = timeElapsed;
        }
      });

      this.utterance.addEventListener('end', () => {
        this.playing = false;
        this.paused = false;
        this.currentTime = this.totalDuration;
      });

      this.speechSynthesis.speak(this.utterance);
      this.playing = true;
      this.paused = false;
    }
}


import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import * as d3 from 'd3';
import * as $ from 'jquery';
import * as _moment from 'moment';

@Component({
  selector: 'app-activity-distribution',
  templateUrl: './activity-distribution.component.html',
  styleUrls: ['./activity-distribution.component.scss'],
})
export class ActivityDistributionComponent implements OnInit {
  @Input() activityDistributionData;
  @Output() graphWidth = new EventEmitter<number>();

  constructor(private sanitizer: DomSanitizer) {}

  ngOnInit(): void {}
}

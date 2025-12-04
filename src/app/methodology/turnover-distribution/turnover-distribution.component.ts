import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import * as d3 from 'd3';
import * as $ from 'jquery';
import * as _moment from 'moment';

@Component({
  selector: 'app-turnover-distribution',
  templateUrl: './turnover-distribution.component.html',
  styleUrls: ['./turnover-distribution.component.scss'],
})
export class TurnoverDistributionComponent implements OnInit {
  @Input() turnoverDistributionData;
  @Output() graphWidth = new EventEmitter<number>();

  constructor(private sanitizer: DomSanitizer) {}

  ngOnInit(): void {}
}

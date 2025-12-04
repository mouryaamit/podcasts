import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import * as d3 from 'd3';
import * as $ from 'jquery';
import * as _moment from 'moment';

@Component({
  selector: 'app-sector-distribution',
  templateUrl: './sector-distribution.component.html',
  styleUrls: ['./sector-distribution.component.scss'],
})
export class SectorDistributionComponent implements OnInit {
  @Input() sectorDistributionData;
  @Output() graphWidth = new EventEmitter<number>();

  constructor(private sanitizer: DomSanitizer) {}

  ngOnInit(): void {}
}

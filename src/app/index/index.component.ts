import { Component, OnInit } from '@angular/core';
import * as d3 from 'd3';
import { environment } from 'src/environments/environment';
@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.scss']
})
export class IndexComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
    const url = environment.graphUrl+"sumpoorn_test_json1.json?date="+new Date();
  }

}


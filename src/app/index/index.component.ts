import { Component, OnInit } from '@angular/core';
import * as d3 from 'd3';
import { environment } from 'src/environments/environment';
import { GraphApiService } from '../services/graph-api.service';
@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.scss']
})
export class IndexComponent implements OnInit {

  constructor(private graphApiService: GraphApiService) { }

  ngOnInit(): void {
this.graphApiService.getSumpoornGraph().then((data)=>{
  console.log("data",data);
}, (error)=>{
  console.log("error",error);
  
})
  }

}


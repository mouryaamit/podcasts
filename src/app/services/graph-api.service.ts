import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { ApiService } from './api.service';

@Injectable({
  providedIn: 'root'
})
export class GraphApiService {

  constructor(private apiService: ApiService) { }

  
  getSumpoornGraph(){
    return new Promise((resolve, reject) =>{
      this.apiService.getApi(environment.host+"sumpoorn_test_json1.json?date="+new Date()).then((resp: any) =>{
        resolve(resp);
    },(error) =>{
        reject(error);
    })
  })
}
}

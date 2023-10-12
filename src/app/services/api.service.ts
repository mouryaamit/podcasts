
import { Injectable, Inject } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { throwError as observableThrowError, Observable, Subject, of } from 'rxjs';
import { map, catchError } from 'rxjs/operators';


@Injectable({
    providedIn: 'root'
})
export class ApiService {
    private actionSource = new Subject<any>();
    currentAction = this.actionSource.asObservable();
    commonStrings: any;

    constructor(private http: HttpClient) {

        this.commonStrings = {
            http_error: "Oops Something went wrong. Please try after sometime.",
            download_error: "Unable to download file...",
            upload_success: "File is uploaded successfully.",
            pdf_file_extention: "Please select file format pdf only",
            file_extention: "Please select file format jpeg, jpg, pdf and png only",
        }
	}

    sendAction(message: any) {
        this.actionSource.next(message)
    }
  
    /*Commomn function to POST FILE form data */
    upload(url:string, data:any) {
        
        return new Promise((resolve, reject) => {
            this.http.post(url, data)
                .pipe(map(res => res as {}), catchError(this.handleError([])))
                .subscribe((res: any) => {
                    if(res && res.uploadStatus == 'Success') {
                        resolve(res);
                    }else{
                        reject((res && res.errorDesc) ? res.errorDesc : this.commonStrings.http_error);
                    }
                }, error => {
                    reject(this.commonStrings.http_error);
                });
        });
    }
    getApi(url:string, params?:any, headers?:any){

        if(!headers || !headers['Content-Type']){
             headers = new HttpHeaders({ "Content-Type": "application/json" });
        }

        return new Promise((resolve, reject) => {
            this.http.get(url, {params: params, headers: headers})
                .pipe(map(res => res as {}), catchError(this.handleError([])))
                .subscribe(res => {
                    resolve(res);
                }, error => {
                    reject(this.commonStrings.http_error);
                });
        });
    }

    postApi(url:string, data:any, headers:any){

        if(!headers || !headers.get('Content-Type')){
            headers = new HttpHeaders({ "Content-Type": "application/json" });
        }

        return new Promise((resolve, reject) => {
            this.http.post(url, JSON.stringify(data), {headers: headers})
                .pipe(map(res => res as {}), catchError(this.handleError([])))
                .subscribe(res => {
                    resolve(res);
                }, error => {
                    reject(this.commonStrings.http_error);
                });
        });

    }
    
    private handleError<T> (result?: T) {
        return (error: any): Observable<T> => {

          // TODO: send the error to remote logging infrastructure
          console.error(error); // log to console instead

          // Let the app keep running by returning an empty result.
          return of(error.error);
        };
    }
}
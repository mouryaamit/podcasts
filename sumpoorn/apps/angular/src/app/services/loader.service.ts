import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class LoaderService {
  private loading: boolean = false;
  private loadingMsg: string = '';

  constructor() {}

  setLoading(loading: boolean) {
    this.loading = loading;
  }

  getLoading(): boolean {
    return this.loading;
  }

  setLoadingMessage(loadingMsg: string) {
    this.loadingMsg = loadingMsg;
  }

  getLoadingMessage(): string {
    return this.loadingMsg;
  }
}

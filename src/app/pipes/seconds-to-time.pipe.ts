import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'secondsToTime',
})
export class SecondsToTimePipe implements PipeTransform {
  transform(value: number): string {
    if (!value || isNaN(value) || value < 0) {
      return '00:00';
    }
    value = Math.trunc(value);
    const minutes = Math.floor(value / 60);
    const seconds = value % 60;
    let val;
    if (minutes > 0) {
      val = (minutes>9?`${minutes}`:`0${minutes}`)+":"+(seconds>9?`${seconds}`:`0${seconds}`)
    } else {
      val = "00:"+(seconds>9?`${seconds}`:`0${seconds}`)
    }
    return val;
  }
}

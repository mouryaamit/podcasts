import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'secondsToTime',
})
export class SecondsToTimePipe implements PipeTransform {
  transform(value: number): string {
    if (!value || isNaN(value) || value < 0) {
      return '0s';
    }
    value = Math.trunc(value);
    const minutes = Math.floor(value / 60);
    const seconds = value % 60;
    if (minutes > 0) {
      return `${minutes}m ${seconds}s`;
    } else {
      return `${seconds}s`;
    }
  }
}

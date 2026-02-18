import { Component, HostListener } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { SubscribeModelComponent } from '../dialog/subscribe-model/subscribe-model.component';

@Component({
  selector: 'app-subscribe-button',
  templateUrl: './subscribe-button.component.html',
  styleUrls: ['./subscribe-button.component.scss'],
})
export class SubscribeButtonComponent {
  addIcon = true;
  subscribeButton = true;
  fabButton = false;

  constructor(public dialog: MatDialog) {}

  @HostListener('window:scroll', ['$event'])
  onScroll() {
    this.subscribeButton = window.scrollY <= 0;
    this.fabButton = !this.subscribeButton;
    this.addIcon = true;
  }

  toggleIcon() {
    this.addIcon = !this.addIcon;
    this.subscribeButton = !this.subscribeButton;
  }

  openDialog(): void {
    this.dialog.open(SubscribeModelComponent, {
      disableClose: true,
      panelClass: 'app_generic_modal',
      data: { mobileNumber: '' },
    });
  }
}

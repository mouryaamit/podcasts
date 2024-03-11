import { Component, OnInit } from '@angular/core';
import { SubscribeModelComponent } from '../dialog/subscribe-model/subscribe-model.component';
import {
  MatDialog,
  MatDialogRef,
  MAT_DIALOG_DATA,
} from '@angular/material/dialog';

@Component({
  selector: 'app-subscribe-button',
  templateUrl: './subscribe-button.component.html',
  styleUrls: ['./subscribe-button.component.scss']
})
export class SubscribeButtonComponent implements OnInit {
  isAddIcon: boolean = true;

  constructor(public dialog: MatDialog) { }

  ngOnInit(): void {
  }

  toggleIcon() {
    this.isAddIcon = !this.isAddIcon;
  }

  openDialog(): void {
    const dialogRef = this.dialog.open(SubscribeModelComponent, {
      disableClose: true,
      panelClass: 'app_generic_modal',
      data: {
        data: { mobileNumber: '' },
      },
    });
    dialogRef.afterClosed().subscribe((result) => {
      if (result) {
      } else {
      }
    });
  }

}

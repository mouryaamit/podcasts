import { Component, OnInit } from '@angular/core';
import { MatDialog, MatDialogRef } from '@angular/material/dialog';

@Component({
  selector: 'app-homepage-popup',
  templateUrl: './homepage-popup.component.html',
  styleUrls: ['./homepage-popup.component.scss'],
})
export class HomePagePopupComponent implements OnInit {
  constructor(
    private dialogRef: MatDialogRef<HomePagePopupComponent>,
    private dialog: MatDialog
  ) {}

  ngOnInit(): void {}

  goToForm() {
    let link = "https://forms.microsoft.com/Pages/ResponsePage.aspx?id=qd_zT06UBkGl-fmoeZrSebVzvA2lV-hNmUam7CF30ZJUNk1GQVpWS0pJNzBXVzU3SlFJVUdQSTVHWC4u";
    window.open(link, '_blank');
  }

  closeModal() {
    this.dialogRef.close('close');
  }
}

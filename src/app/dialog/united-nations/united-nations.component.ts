import { Component, Inject, OnInit } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';

@Component({
  selector: 'app-united-nations',
  templateUrl: './united-nations.component.html',
  styleUrls: ['./united-nations.component.scss'],
})
export class UnitedNationsModelComponent implements OnInit {
  constructor(private dialogRef: MatDialogRef<UnitedNationsModelComponent>) {}

  ngOnInit(): void {}

  hideModal() {
    this.dialogRef.close('close');
  }
}

import { Component, OnInit } from '@angular/core';
import { MatDialog, MatDialogRef } from '@angular/material/dialog';

@Component({
  selector: 'app-roadmap-model',
  templateUrl: './roadmap-model.component.html',
  styleUrls: ['./roadmap-model.component.scss'],
})
export class RoadmapModelComponent implements OnInit {
  constructor(
    private dialogRef: MatDialogRef<RoadmapModelComponent>,
    private dialog: MatDialog
  ) {}

  ngOnInit(): void {}

  closeModal() {
    this.dialogRef.close('close');
  }
}

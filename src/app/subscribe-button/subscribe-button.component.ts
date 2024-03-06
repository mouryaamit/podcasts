import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-subscribe-button',
  templateUrl: './subscribe-button.component.html',
  styleUrls: ['./subscribe-button.component.scss']
})
export class SubscribeButtonComponent implements OnInit {
  isAddIcon: boolean = true;

  constructor() { }

  ngOnInit(): void {
  }

  toggleIcon() {
    this.isAddIcon = !this.isAddIcon;
  }

}

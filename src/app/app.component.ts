import { Component, OnInit } from '@angular/core';
import * as AOS from 'aos';
import * as $ from 'jquery';
import { environment } from 'src/environments/environment';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {
  title = 'app';

  ngOnInit() {
    AOS.init({
      // disable: window.innerWidth < 768
    });
    console.info('Last release timestamp is set to:', environment.timeStamp);
  }

  hideErrorModal(){
    $("#errorsModal").hide();
    $(".error_text").show();
    $(".error_text_dynamic").hide();
    $('.modal-backdrop').remove();
    $(document.body).removeClass("modal-open");
    $(document.body).removeAttr("style");
  }
}

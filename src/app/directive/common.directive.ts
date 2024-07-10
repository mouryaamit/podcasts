import { Directive, ElementRef, HostListener } from '@angular/core'
import { NgControl } from '@angular/forms';
@Directive({
  selector: '[alphaNumericOnly]',
  inputs: ['maxlength', 'upperOnly'],
})
export class AlphaNumericOnlyDirective {
  public maxlength!: number;
  public upperOnly!: boolean;

  constructor(public control: NgControl, private el: ElementRef) {

  }
  @HostListener('input', ['$event']) onInputChange(event: any) {
    const initialValue = this.el?.nativeElement?.value;
    let newValue = initialValue;
    //  let re = new RegExp(/^[A-Z]{3}[P][A-Z][0-9]{4}[A-Z]$/);
    const regex = /^[a-zA-Z][a-zA-Z0-9]*$/;

    // console.log(regex.test(newValue), "initialValue ", initialValue);
    if (!regex.test(newValue)) {
      // If it doesn't match, replace all non-alphanumeric characters
      if (newValue.length == 1) {
        const regexAlpha = /^[a-zA-Z]*$/;
        // console.log(regexAlpha.test(newValue), "initialValue ", initialValue);

        if (!regexAlpha.test(newValue))
          newValue = "";

      } else {
        newValue = newValue.replace(/[^a-zA-Z0-9]/g, '');

      }
    } else {

    }

    // If it matches, return the original string
    // return inputString;
    // newValue = newValue.replace(/^[a-zA-Z][a-zA-Z0-9]*$/g, '');
    // console.log(newValue);

    if (this.maxlength && newValue.length > this.maxlength) {
      newValue = newValue.substring(0, this.maxlength);
    }
    if (this.upperOnly) newValue = newValue.toUpperCase();
    this.el.nativeElement.value = newValue;
    this.control?.control?.setValue(newValue);

    if (initialValue !== this.el.nativeElement.value) {
      event.stopPropagation();
    }
    // console.log(initialValue, newValue);
  }
}
@Directive({
  selector: '[alphaWithSpaces]',
  inputs: ['maxlength'],
})
export class AlphaWithSpacesDirective {
  public maxlength!: number;

  constructor(private control: NgControl, private el: ElementRef) {

  }
  @HostListener('input', ['$event']) onInputChange(event) {
    const initialValue = this.el.nativeElement.value;
    let newValue = initialValue;

    newValue = newValue.replace(/^\s/g, '');
    newValue = newValue.replace(/[^a-zA-Z\s]*/g, '');
    newValue = newValue.replace(/\s\s/g, ' ');

    if (this.maxlength && newValue.length > this.maxlength) {
      newValue = newValue.substring(0, this.maxlength);
    }
    this.el.nativeElement.value = newValue;
    this.control?.control?.setValue(newValue);

    if (initialValue !== this.el.nativeElement.value) {
      event.stopPropagation();
    }
    // console.log(initialValue, newValue);
  }
}
@Directive({
  selector: '[alphaWithSpacesCommaHiphen]',
  inputs: ['maxlength'],
})
export class AlphaWithSpacesCommaHiphenDirective {
  public maxlength!: number;

  constructor(private control: NgControl, private el: ElementRef) {

  }
  @HostListener('input', ['$event']) onInputChange(event) {
    const initialValue = this.el.nativeElement.value;
    let newValue = initialValue;

    newValue = newValue.replace(/^\s/g, '');
    newValue = newValue.replace(/[^a-zA-Z-,\s]*/g, '');
    newValue = newValue.replace(/\s\s/g, ' ');

    if (this.maxlength && newValue.length > this.maxlength) {
      newValue = newValue.substring(0, this.maxlength);
    }
    this.el.nativeElement.value = newValue;
    this.control?.control?.setValue(newValue);

    if (initialValue !== this.el.nativeElement.value) {
      event.stopPropagation();
    }
    // console.log(initialValue, newValue);
  }
}
@Directive({
  selector: '[alphaNumericWithSpecialsAndSpaceOnly]',
  inputs: ['maxlength', 'upperOnly'],
})
export class AlphaNumericWithSpecialsAndSpaceOnlyDirective {
  private maxlength!: number;
  private upperOnly!: boolean;

  constructor(private el: ElementRef, private control: NgControl) {
  }
  @HostListener('input', ['$event']) onInputChange(event) {
    const initialValue = this.el.nativeElement.value;
    let newValue = initialValue;

    newValue = newValue.replace(/^\s/g, '');
    newValue = newValue.replace(/[^0-9a-zA-Z.&_-\s]*/g, '');
    newValue = newValue.replace(/\s\s/g, ' ');

    if (this.maxlength && newValue.length > this.maxlength) {
      newValue = newValue.substring(0, this.maxlength);
    }
    if (this.upperOnly) newValue = newValue.toUpperCase();
    this.el.nativeElement.value = newValue;
    this.control?.control?.setValue(newValue);

    if (initialValue !== this.el.nativeElement.value) {
      event.stopPropagation();
    }
    // console.log(initialValue, newValue);
  }
}
@Directive({
  selector: '[alphaNumSpecials]',
  inputs: ['maxlength', 'upperOnly'],
})
export class AlphaNumSpecialsDirective {
  public maxlength!: number;
  private upperOnly!: boolean;

  constructor(private el: ElementRef, private control: NgControl) {
  }
  @HostListener('input', ['$event']) onInputChange(event) {
    const initialValue = this.el.nativeElement.value;
    let newValue = initialValue;
    newValue = newValue.replace(/^\s/g, '');
    newValue = newValue.replace(/[^A-Za-z0-9_@.&-,()?\s]*/g, ''); // ^[A-Za-z][A-Za-z0-9_@.&-,()?\s]{0,499}$ 
    newValue = newValue.replace(/\s\s/g, ' ');
    if (newValue.length == 1) {
      const regexAlpha = /^[a-zA-Z]*$/;
      // console.log(regexAlpha.test(newValue), "initialValue ", initialValue);

      if (!regexAlpha.test(newValue))
        newValue = "";

    } else {
      newValue = newValue.replace(/[^A-Za-z0-9_@.&-,()?\s]*/g, '');

    }
    if (this.maxlength && newValue.length > this.maxlength) {
      newValue = newValue.substring(0, this.maxlength);
    }
    if (this.upperOnly) newValue = newValue.toUpperCase();
    this.el.nativeElement.value = newValue;
    this.control?.control?.setValue(newValue);

    if (initialValue !== this.el.nativeElement.value) {
      event.stopPropagation();
    }
    // console.log(initialValue, newValue);
  }
}
@Directive({
  selector: '[numberOnly]',
  inputs: ['length', 'cropZero'],
})
export class NumberOnlyDirective {
  // appConfig: IAppConfig;

  private length: number = 0;
  private cropZero: boolean;

  constructor(
    private el: ElementRef,
    private control: NgControl) {
    this.cropZero = true;
    // this.appConfig = appConfig;
  }
  @HostListener('input', ['$event']) onInputChange(event: { stopPropagation: () => void; }) {
    const initalValue = this.el.nativeElement.value;
    let newValue = initalValue;
    // var re = new RegExp(this.appConfig.restrictedCharsRegEx, "g");
    // newValue = newValue.replace(re, '');
    // if (this.cropZero) {
    // 	newValue = initalValue.replace(/^0(0+)?/g, '0');
    // }
    newValue = newValue.replace(/[^0-9]*/g, '');

    if (this.length && newValue.length > this.length) {
      newValue = newValue.substring(0, this.length)
    }
    this.el.nativeElement.value = newValue;
    this.control?.control?.setValue(newValue);

    if (initalValue !== this.el.nativeElement.value) {
      event.stopPropagation();
    }
  }
  @HostListener('keyup', ['$event']) onKeyPressUp(event: { srcElement: { nextElementSibling: { focus: () => void; }; previousElementSibling: { focus: () => void; }; }; keyCode: number; }) {
    if (this.el.nativeElement.value.length >= this.length) {
      if (event.srcElement.nextElementSibling) {
        event.srcElement.nextElementSibling.focus();
      }
    }
    if (event.keyCode == 8 && event.srcElement.previousElementSibling) {
      event.srcElement.previousElementSibling.focus();
    }
  }
}

@Directive({
  selector: '[alphaEmail]',
  inputs: ['maxlength'],
})
export class AlphaWithUnderscoreCommaDirective {
  public maxlength!: number;

  constructor(private control: NgControl, private el: ElementRef) {

  }
  @HostListener('input', ['$event']) onInputChange(event) {
    const initialValue = this.el.nativeElement.value;
    let newValue = initialValue;

    // newValue = newValue.replace(/^\s/g, '');
    newValue = newValue.replace(/[^0-9a-zA-Z.@_-]*/g, '');
    // newValue = newValue.replace(/\s\s/g, ' ');

    if (this.maxlength && newValue.length > this.maxlength) {
      newValue = newValue.substring(0, this.maxlength);
    }
    // if (this.upperOnly) newValue = newValue.toUpperCase();
    this.el.nativeElement.value = newValue;
    this.control?.control?.setValue(newValue);

    if (initialValue !== this.el.nativeElement.value) {
      event.stopPropagation();
    }
    // console.log(initialValue, newValue);
  }
}

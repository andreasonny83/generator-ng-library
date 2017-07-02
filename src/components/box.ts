import { Component } from '@angular/core';

@Component ({
  selector: 'my-box',
  template: `<div><ng-content></ng-content></div>`,
  styles: ['div {border: 1px solid black;}']
})
export class BoxComponent { }
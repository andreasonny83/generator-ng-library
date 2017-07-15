import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { BoxComponent } from './box';
export * from './box';

@NgModule({
  imports: [ CommonModule ],
  declarations: [ BoxComponent ],
  exports: [ BoxComponent ]
})
export class BoxModule { };

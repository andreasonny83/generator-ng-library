import { NgModule } from '@angular/core';
import { BoxComponent } from './box';
export * from './box';

@NgModule({
  declarations: [ BoxComponent ],
  exports: [ BoxComponent ]
})
export class BoxModule { };

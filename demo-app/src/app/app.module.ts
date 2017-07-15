import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { BoxModule } from 'generator-ng2-library';
import { AppComponent } from './app.component';

@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    BoxModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

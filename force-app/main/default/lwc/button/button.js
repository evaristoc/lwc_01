import { LightningElement, api } from 'lwc';

export default class Button extends LightningElement {
    @api label;
    @api icon;
    handleButton(event) {
      this.dispatchEvent(new CustomEvent('buttonclick',{
        //By default, a custom event doesn’t bubble up past the component that dispatched it
        bubbles: true
      }));
    }
}
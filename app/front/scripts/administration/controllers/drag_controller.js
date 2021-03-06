// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"
import Sortable from "sortablejs"

export default class extends Controller {
  static targets = ["position"];

  connect() {
    this.position = this.positionTarget;
    this.sortable = Sortable.create(this.element, {
      group: 'shared',
      animation: 150,
      onEnd: this.end.bind(this)
    })
  }

  end(event) {
    for (let item of this.element.childNodes) {
      const index = [...this.element.childNodes].indexOf(item);
      item.querySelector('[data-target="drag.position"]').value = index +1;
    }
    // this.position.value = event.newIndex + 1;
  }
}

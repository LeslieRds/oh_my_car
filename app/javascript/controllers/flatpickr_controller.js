import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    new flatpickr(this.element, {
        enableTime: true,
        dateFormat: "d-m-Y",
        minDate: "today",
        disableRange: {
          onReady: function () {
              this.jumpToDate("2025-04")
          },
          disable: [
            {
                from: "15-09-2023",
                to: "17-09-2023"
            },
            {
                from: "01-10-2023",
                to: "25-10-2023"
            }
          ]
        },
    })
  }
}

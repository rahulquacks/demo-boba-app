// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"



require("@popperjs/core")
require("jquery")

import "bootstrap";

// Import the specific modules you may need (Modal, Alert, etc)
import { Tooltip, Popover } from "bootstrap";

// The stylesheet location we created earlier
require("../stylesheets/application.scss")

// If you're using Turbolinks. Otherwise simply use: jQuery(function () {
// document.addEventListener("turbolinks:load", function() {
//     $(function () {
//         $('[data-toggle="tooltip"]').tooltip()
//         $('[data-toggle="popover"]').popover()
//     })
// })


Rails.start()
Turbolinks.start()
ActiveStorage.start()


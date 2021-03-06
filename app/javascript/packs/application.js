require('@rails/ujs').start()
require('turbolinks').start()
require('@rails/activestorage').start()
require('channels')
require('bootstrap')
require('admin-lte')
require('chartkick')
require('chart.js')

var jQuery = require('jquery')

// import jQuery from 'jquery';
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

import '@fortawesome/fontawesome-free/js/all'

require('packs/preloader')
require('packs/menu_sidebar')
require('jquery')
require('@nathanvda/cocoon')

import toastr from 'toastr'
window.toastr = toastr

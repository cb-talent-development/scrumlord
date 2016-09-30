(function (global) {
  'use strict';

  var snackbarContainer, data;
  if (global.gon.flash.notice) {
    snackbarContainer = $('#toast-notice');
    data = {message: global.gon.flash.notice};
  } else if (global.gon.flash.alert) {
    snackbarContainer = $('#toast-alert');
    data = {message: global.gon.flash.alert};
  }

  if (snackbarContainer) {
    snackbarContainer.MaterialSnackbar.showSnackbar(data);
  }
}(this));

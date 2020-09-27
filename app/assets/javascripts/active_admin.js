//= require active_admin/base
document.addEventListener('DOMContentLoaded', function() {
    var container = document.getElementById('titlebar_right').firstElementChild
    var inner = container.innerHTML + '<span class="action_item"> <a href="/admin/lines/import">Import Lines</a></span>'
    container.innerHTML = inner;
    var wrapper = document.getElementById('wrapper');
    var header = document.getElementById('header');
    var titleBar = document.getElementById('title_bar');
    var newHeader = document.createElement('div');
    newHeader.id = 'new-header';
    newHeader.appendChild(header);
    newHeader.appendChild(titleBar);
    wrapper.prepend(newHeader);
});
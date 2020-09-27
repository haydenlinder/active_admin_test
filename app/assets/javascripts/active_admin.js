//= require active_admin/base
document.addEventListener('DOMContentLoaded', function() {
    const container = document.getElementById('titlebar_right').firstElementChild
    let inner = container.innerHTML + '<span class="action_item"> <a href="/admin/lines/import">Import Lines</a></span>'
    container.innerHTML = inner;
    const wrapper = document.getElementById('wrapper');
    const header = document.getElementById('header');
    const titleBar = document.getElementById('title_bar');
    const newHeader = document.createElement('div');
    newHeader.id = 'new-header';
    newHeader.appendChild(header);
    newHeader.appendChild(titleBar);
    wrapper.prepend(newHeader);
});
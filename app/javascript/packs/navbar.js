const initNavbarLinks = () => {
    const searchBar = document.querySelector('.search-form')
    const subNavLink = document.querySelectorAll('.sub-nav-tab-link')
    subNavLink.forEach((link) => {
        link.addEventListener('click', () => {
            searchBar.innerHTML = ""
        })
    })
}

export { initNavbarLinks }
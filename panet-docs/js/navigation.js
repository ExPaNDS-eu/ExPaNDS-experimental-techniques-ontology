// Navigation functionality for PANET documentation

document.addEventListener("DOMContentLoaded", () => {
  const navLinks = document.querySelectorAll(".nav-link")
  const contentSections = document.querySelectorAll(".content-section")

  // Handle navigation clicks
  navLinks.forEach((link) => {
    link.addEventListener("click", function (e) {
      e.preventDefault()

      const targetSection = this.getAttribute("data-section")

      // Remove active class from all nav links
      navLinks.forEach((navLink) => {
        navLink.classList.remove("active")
      })

      // Add active class to clicked link
      this.classList.add("active")

      // Hide all content sections
      contentSections.forEach((section) => {
        section.classList.remove("active")
      })

      // Show target section
      const targetElement = document.getElementById(targetSection)
      if (targetElement) {
        targetElement.classList.add("active")

        // Smooth scroll to top of content area
        document.getElementById("main-content").scrollTop = 0
      }

      // Update URL hash without jumping
      history.pushState(null, null, `#${targetSection}`)
    })
  })

  // Handle direct URL access with hash
  function handleHashChange() {
    const hash = window.location.hash.substring(1)
    if (hash) {
      const targetLink = document.querySelector(`[data-section="${hash}"]`)
      if (targetLink) {
        targetLink.click()
      }
    }
  }

  // Handle browser back/forward
  window.addEventListener("popstate", handleHashChange)

  // Handle initial page load with hash
  handleHashChange()

  // Smooth scrolling for anchor links within content
  document.addEventListener("click", (e) => {
    if (e.target.tagName === "A" && e.target.getAttribute("href").startsWith("#")) {
      const targetId = e.target.getAttribute("href").substring(1)
      const targetElement = document.getElementById(targetId)

      if (targetElement && targetElement.classList.contains("content-section")) {
        e.preventDefault()
        const targetLink = document.querySelector(`[data-section="${targetId}"]`)
        if (targetLink) {
          targetLink.click()
        }
      }
    }
  })
})

// Add search functionality (optional enhancement)
function addSearchFunctionality() {
  const searchInput = document.createElement("input")
  searchInput.type = "text"
  searchInput.placeholder = "Search documentation..."
  searchInput.className = "search-input"

  const navigation = document.getElementById("navigation")
  const navTitle = navigation.querySelector("h2")
  navTitle.insertAdjacentElement("afterend", searchInput)

  searchInput.addEventListener("input", function () {
    const searchTerm = this.value.toLowerCase()
    const navItems = document.querySelectorAll(".nav-list li")

    navItems.forEach((item) => {
      const link = item.querySelector(".nav-link")
      const text = link.textContent.toLowerCase()

      if (text.includes(searchTerm)) {
        item.style.display = "block"
      } else {
        item.style.display = "none"
      }
    })
  })
}

// Initialize search functionality
// addSearchFunctionality();

// Navigation functionality for PANET documentation

document.addEventListener("DOMContentLoaded", () => {
  const navLinks = document.querySelectorAll(".nav-link")
  const contentSections = document.querySelectorAll(".content-section")
  const navigation = document.getElementById("navigation")
  const scopeSidebar = document.getElementById("scope-sidebar") // Added scope sidebar reference
  const mainContent = document.getElementById("main-content")

  // Handle navigation clicks
  navLinks.forEach((link) => {
    link.addEventListener("click", function (e) {
      e.preventDefault()

      const targetSection = this.getAttribute("data-section")

      navigation.style.display = "none"
      scopeSidebar.style.display = "none"
      mainContent.style.display = "block"

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

  function addBackButton() {
    const backButton = document.createElement("button")
    backButton.textContent = "← Back to Documentation"
    backButton.className = "back-button"
    backButton.style.cssText = `
      position: fixed;
      top: 80px;
      left: 20px;
      background: #067DB4;
      color: white;
      border: none;
      padding: 10px 15px;
      border-radius: 5px;
      cursor: pointer;
      font-size: 14px;
      z-index: 1000;
      display: none;
    `

    backButton.addEventListener("click", () => {
      navigation.style.display = "block"
      scopeSidebar.style.display = "block" // Show scope sidebar when returning to main page
      mainContent.style.display = "none"
      backButton.style.display = "none"

      // Clear active states
      navLinks.forEach((navLink) => {
        navLink.classList.remove("active")
      })
      contentSections.forEach((section) => {
        section.classList.remove("active")
      })

      // Update URL
      history.pushState(null, null, window.location.pathname)
    })

    document.body.appendChild(backButton)

    // Show back button when content is displayed
    navLinks.forEach((link) => {
      link.addEventListener("click", () => {
        backButton.style.display = "block"
      })
    })
  }

  // Initialize back button
  addBackButton()

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

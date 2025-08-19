document.addEventListener("DOMContentLoaded", function () {
  const mobileMenuToggle = document.querySelector(".mobile-menu-toggle");
  const mobileMenu = document.querySelector(".mobile-menu");

  if (mobileMenuToggle && mobileMenu) {
    mobileMenuToggle.addEventListener("click", function () {
      mobileMenuToggle.classList.toggle("active");
      mobileMenu.classList.toggle("active");
    });
  }

  const cityFilter = document.getElementById("cityFilter");
  const brandFilter = document.getElementById("brandFilter");
  const searchInput = document.getElementById("searchInput");
  const searchBtn = document.querySelector(".search-btn");
  const jobCards = document.querySelectorAll(".job-card");
  const noResults = document.getElementById("noResults");

  function filterJobs() {
    const cityValue = cityFilter.value.toLowerCase();
    const brandValue = brandFilter.value.toLowerCase();
    const searchValue = searchInput.value.toLowerCase();

    let visibleCount = 0;

    jobCards.forEach((card) => {
      const cardCity = card.getAttribute("data-city").toLowerCase();
      const cardBrand = card.getAttribute("data-brand").toLowerCase();
      const cardTitle = card
        .querySelector(".job-title")
        .textContent.toLowerCase();
      const cardDescription = card
        .querySelector(".job-description")
        .textContent.toLowerCase();

      const cityMatch = !cityValue || cardCity.includes(cityValue);
      const brandMatch = !brandValue || cardBrand.includes(brandValue);
      const searchMatch =
        !searchValue ||
        cardTitle.includes(searchValue) ||
        cardDescription.includes(searchValue) ||
        cardCity.includes(searchValue) ||
        cardBrand.includes(searchValue);

      if (cityMatch && brandMatch && searchMatch) {
        card.style.display = "block";
        visibleCount++;
      } else {
        card.style.display = "none";
      }
    });

    if (visibleCount === 0) {
      noResults.style.display = "block";
    } else {
      noResults.style.display = "none";
    }
  }

  if (cityFilter) cityFilter.addEventListener("change", filterJobs);
  if (brandFilter) brandFilter.addEventListener("change", filterJobs);
  if (searchInput) {
    searchInput.addEventListener("input", debounce(filterJobs, 300));
    searchInput.addEventListener("keypress", function (e) {
      if (e.key === "Enter") {
        e.preventDefault();
        filterJobs();
      }
    });
  }
  if (searchBtn) searchBtn.addEventListener("click", filterJobs);

  function debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
      const later = () => {
        clearTimeout(timeout);
        func(...args);
      };
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
    };
  }

  window.openJobModal = function (modalId) {
    const modal = document.getElementById("modal-" + modalId);
    if (modal) {
      modal.classList.add("active");
      document.body.style.overflow = "hidden";
    }
  };

  window.closeJobModal = function (modalId) {
    const modal = document.getElementById("modal-" + modalId);
    if (modal) {
      modal.classList.remove("active");
      document.body.style.overflow = "";
    }
  };

  document.addEventListener("keydown", function (e) {
    if (e.key === "Escape") {
      const activeModal = document.querySelector(".job-modal.active");
      if (activeModal) {
        const modalId = activeModal.id.replace("modal-", "");
        closeJobModal(modalId);
      }
    }
  });

  const header = document.querySelector(".modern-header");
  let lastScrollY = window.scrollY;

  window.addEventListener("scroll", function () {
    const currentScrollY = window.scrollY;

    if (currentScrollY > 100) {
      header.style.background = "rgba(255, 255, 255, 0.98)";
      header.style.boxShadow = "0 4px 20px rgba(0, 0, 0, 0.1)";
    } else {
      header.style.background = "rgba(255, 255, 255, 0.95)";
      header.style.boxShadow = "0 1px 3px rgba(0, 0, 0, 0.1)";
    }

    lastScrollY = currentScrollY;
  });

  document.querySelectorAll('a[href^="#"]').forEach((anchor) => {
    anchor.addEventListener("click", function (e) {
      e.preventDefault();
      const target = document.querySelector(this.getAttribute("href"));
      if (target) {
        const headerHeight =
          document.querySelector(".modern-header").offsetHeight;
        const targetPosition = target.offsetTop - headerHeight - 20;

        window.scrollTo({
          top: targetPosition,
          behavior: "smooth",
        });

        if (mobileMenu.classList.contains("active")) {
          mobileMenuToggle.classList.remove("active");
          mobileMenu.classList.remove("active");
        }
      }
    });
  });

  const observerOptions = {
    threshold: 0.1,
    rootMargin: "0px 0px -50px 0px",
  };

  const observer = new IntersectionObserver(function (entries) {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add("animated");
      }
    });
  }, observerOptions);

  const animateElements = document.querySelectorAll(
    ".job-card, .brand-card, .section-header"
  );
  animateElements.forEach((el) => {
    el.classList.add("animate-on-scroll");
    observer.observe(el);
  });

  function showLoading(element) {
    element.classList.add("loading");
  }

  function hideLoading(element) {
    element.classList.remove("loading");
  }

  function showError(message) {
    const errorDiv = document.createElement("div");
    errorDiv.className = "error-message";
    errorDiv.textContent = message;

    const container = document.querySelector(".jobs-container");
    if (container) {
      container.insertBefore(errorDiv, container.firstChild);

      setTimeout(() => {
        errorDiv.remove();
      }, 5000);
    }
  }

  let ticking = false;

  function updateOnScroll() {
    if (!ticking) {
      requestAnimationFrame(function () {
        ticking = false;
      });
      ticking = true;
    }
  }

  window.addEventListener("scroll", updateOnScroll);

  if ("IntersectionObserver" in window) {
    const imageObserver = new IntersectionObserver((entries, observer) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          const img = entry.target;
          img.src = img.dataset.src;
          img.classList.remove("lazy");
          imageObserver.unobserve(img);
        }
      });
    });

    document.querySelectorAll("img[data-src]").forEach((img) => {
      imageObserver.observe(img);
    });
  }

  function trackEvent(eventName, properties = {}) {
    if (typeof fbq !== "undefined") {
      fbq("track", eventName, properties);
    }

    if (typeof gtag !== "undefined") {
      gtag("event", eventName, properties);
    }
  }

  jobCards.forEach((card) => {
    card.addEventListener("click", function () {
      const jobTitle = this.querySelector(".job-title").textContent;
      const jobCity = this.getAttribute("data-city");
      const jobBrand = this.getAttribute("data-brand");

      trackEvent("job_view", {
        job_title: jobTitle,
        job_city: jobCity,
        job_brand: jobBrand,
      });
    });
  });

  [cityFilter, brandFilter].forEach((filter) => {
    if (filter) {
      filter.addEventListener("change", function () {
        trackEvent("filter_used", {
          filter_type: this.id,
          filter_value: this.value,
        });
      });
    }
  });

  if (searchInput) {
    searchInput.addEventListener("keypress", function (e) {
      if (e.key === "Enter") {
        trackEvent("search_performed", {
          search_term: this.value,
        });
      }
    });
  }

  function initTooltips() {
    const tooltipElements = document.querySelectorAll("[data-tooltip]");
    tooltipElements.forEach((element) => {
      element.classList.add("tooltip");
    });
  }

  initTooltips();

  document.addEventListener("keydown", function (e) {
    if (e.key === "Tab") {
      document.body.classList.add("keyboard-navigation");
    }
  });

  document.addEventListener("mousedown", function () {
    document.body.classList.remove("keyboard-navigation");
  });

  window.addEventListener("beforeprint", function () {
    document.querySelectorAll(".job-modal.active").forEach((modal) => {
      modal.classList.remove("active");
    });
  });

  console.log("🚀 Modern Jobs Site Initialized Successfully!");
});

if ("serviceWorker" in navigator) {
  window.addEventListener("load", function () {
    navigator.serviceWorker
      .register("/sw.js")
      .then(function (registration) {
        console.log("SW registered: ", registration);
      })
      .catch(function (registrationError) {
        console.log("SW registration failed: ", registrationError);
      });
  });
}

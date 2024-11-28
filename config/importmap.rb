# Pin npm packages by running ./bin/importmap

pin "application", preload: true
# Pin Rails and Turbo libraries (default for Rails 7+)
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true

# Pin Stimulus (optional if using Stimulus controllers)
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

# Pin Bootstrap (if using it)
pin "bootstrap", to: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"

# Add other libraries as needed
# Example: pin "jquery", to: "https://code.jquery.com/jquery-3.6.4.min.js"

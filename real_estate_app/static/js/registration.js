document.addEventListener("DOMContentLoaded", function () {
    const signupForm = document.getElementById("signupForm");

    signupForm.addEventListener("submit", function (event) {
        event.preventDefault();

        const usernameInput = document.getElementById("username");
        const usernameLabel = document.querySelector("label[for='username']");
        const usernameAlert = document.getElementById("usernameAlert");

        const emailInput = document.getElementById("email");
        const emailLabel = document.querySelector("label[for='email']");
        const emailAlert = document.getElementById("emailAlert");

        const passwordInput = document.getElementById("password");
        const passwordLabel = document.querySelector("label[for='password']");
        const passwordAlert = document.getElementById("passwordAlert");

        let isValid = true;

        // Username validation
        if (!usernameInput.value.trim()) {
            usernameInput.style.border = "2px solid red";
            usernameLabel.style.color = "red";
            usernameAlert.hidden = false;
            isValid = false;
        } else {
            usernameInput.style.border = "";
            usernameLabel.style.color = "";
            usernameAlert.hidden = true;
        }

        // Email validation
        if (!emailInput.value.trim()) {
            emailInput.style.border = "2px solid red";
            emailLabel.style.color = "red";
            emailAlert.hidden = false;
            isValid = false;
        } else {
            emailInput.style.border = "";
            emailLabel.style.color = "";
            emailAlert.hidden = true;
        }

        // Password validation
        if (!passwordInput.value.trim()) {
            passwordInput.style.border = "2px solid red";
            passwordLabel.style.color = "red";
            passwordAlert.hidden = false;
            isValid = false;
        } else {
            passwordInput.style.border = "";
            passwordLabel.style.color = "";
            passwordAlert.hidden = true;
        }

        // Only proceed with AJAX if all fields are valid
        if (isValid) {
            const formData = new FormData();
            formData.append("username", usernameInput.value);
            formData.append("email", emailInput.value);
            formData.append("password", passwordInput.value);

            const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;

            fetch("verification", {
                method: "POST",
                headers: {
                    "X-CSRFToken": csrftoken,
                },
                body: formData,
            })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert(data.message);
                        window.location.href = "/registration/login";
                    } else {
                        alert(data.message);
                    }
                })
                .catch(error => {
                    console.error("Error:", error);
                    alert("An error occurred. Please try again.");
                });
        }
    });
});


document.addEventListener("DOMContentLoaded", function () {
    const signupForm = document.getElementById("loginForm");

    signupForm.addEventListener("submit", function (event) {
        event.preventDefault();


        const emailInput = document.getElementById("email");
        const emailLabel = document.querySelector("label[for='email']");
        const emailAlert = document.getElementById("emailAlert");

        const passwordInput = document.getElementById("password");
        const passwordLabel = document.querySelector("label[for='password']");
        const passwordAlert = document.getElementById("passwordAlert");

        let isValid = true;


        // Email validation
        if (!emailInput.value.trim()) {
            emailInput.style.border = "2px solid red";
            emailLabel.style.color = "red";
            emailAlert.hidden = false;
            isValid = false;
        } else {
            emailInput.style.border = "";
            emailLabel.style.color = "";
            emailAlert.hidden = true;
        }

        // Password validation
        if (!passwordInput.value.trim()) {
            passwordInput.style.border = "2px solid red";
            passwordLabel.style.color = "red";
            passwordAlert.hidden = false;
            isValid = false;
        } else {
            passwordInput.style.border = "";
            passwordLabel.style.color = "";
            passwordAlert.hidden = true;
        }

        // Only proceed with AJAX if all fields are valid
        if (isValid) {
            const formData = new FormData();
            formData.append("email", emailInput.value);
            formData.append("password", passwordInput.value);

            const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;

            fetch("verification", {
                method: "POST",
                headers: {
                    "X-CSRFToken": csrftoken,
                },
                body: formData,
            })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert(data.message);
                        window.location.href = "/profile";
                    } else {
                        alert(data.message);
                    }
                })
                .catch(error => {
                    console.error("Error:", error);
                    alert("An error occurred. Please try again.");
                });
        }
    });
});








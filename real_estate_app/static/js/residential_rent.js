function RentCalculator() {
  let ExpectedRent = parseInt(document.getElementById('ExpectedRent').value);
  let ExpectedDepositMonths = parseInt(document.getElementById('ExpectedDepositMonths').value);
  document.getElementById('ExpectedDeposit').value = ExpectedRent * ExpectedDepositMonths;

}

document.addEventListener("DOMContentLoaded", function () {
  const residentialRentForm = document.getElementById("residentialRentForm");

  residentialRentForm.addEventListener("submit", function (event) {
    event.preventDefault();
    let BhkTypeInput = document.getElementById("BhkType");
    let BhkTypeLabel = document.querySelector("label[for='BhkType']");
    let BhkTypeAlert = document.getElementById("BhkTypeAlert");

    let FloorInput = document.getElementById('Floor');
    let FloorLabel = document.querySelector("label[for='Floor']");
    let FloorAlert = document.getElementById("FloorAlert");

    let HouseTypeInput = document.getElementById('HouseType');
    let HouseTypeLabel = document.querySelector("label[for='HouseType']");
    let HouseTypeAlert = document.getElementById("HouseTypeAlert");

    let ParkingInput = document.getElementById('Parking');
    let ParkingLabel = document.querySelector("label[for='Parking']");
    let ParkingAlert = document.getElementById("ParkingAlert");

    let TerraceInput = document.getElementById('Terrace');
    let TerraceLabel = document.querySelector("label[for='Terrace']");
    let TerraceAlert = document.getElementById("TerraceAlert");

    let HallInput = document.getElementById('Hall');
    let HallLabel = document.querySelector("label[for='Hall']");
    let HallAlert = document.getElementById("HallAlert");

    let BedroomInput = document.getElementById('Bedroom');
    let BedroomLabel = document.querySelector("label[for='Bedroom']");
    let BedroomAlert = document.getElementById("BedroomAlert");

    let BathroomInput = document.getElementById('Bathroom');
    let BathroomLabel = document.querySelector("label[for='Bathroom']");
    let BathroomAlert = document.getElementById("BathroomAlert");

    let DistrictInput = document.getElementById('District');
    let DistrictLabel = document.querySelector("label[for='District']");
    let DistrictAlert = document.getElementById("DistrictAlert");

    let TownInput = document.getElementById('Town');
    let TownLabel = document.querySelector("label[for='Town']");
    let TownAlert = document.getElementById("TownAlert");

    let StreetInput = document.getElementById('Street');
    let StreetLabel = document.querySelector("label[for='Street']");
    let StreetAlert = document.getElementById("StreetAlert");

    let ExpectedRentInput = document.getElementById('ExpectedRent');
    let ExpectedRentLabel = document.querySelector("label[for='ExpectedRent']");
    let ExpectedRentAlert = document.getElementById("ExpectedRentAlert");

    let ExpectedDepositMonthsInput = document.getElementById('ExpectedDepositMonths');
    let ExpectedDepositMonthsLabel = document.querySelector("label[for='ExpectedDepositMonths']");
    let ExpectedDepositMonthsAlert = document.getElementById("ExpectedDepositMonthsAlert");

    let ExpectedDepositInput = document.getElementById('ExpectedDeposit');
    let ExpectedDepositLabel = document.querySelector("label[for='ExpectedDeposit']");
    let ExpectedDepositAlert = document.getElementById("ExpectedDepositAlert");

    let MaintenanceInput = document.getElementById('Maintenance');
    let MaintenanceLabel = document.querySelector("label[for='Maintenance']");
    let MaintenanceAlert = document.getElementById("MaintenanceAlert");

    let PreferredTenantsInput = document.getElementById('PreferredTenants');
    let PreferredTenantsLabel = document.querySelector("label[for='PreferredTenants']");
    let PreferredTenantsAlert = document.getElementById("PreferredTenantsAlert");

    let TermsInput = document.getElementById('Terms');
    let TermsLabel = document.querySelector("label[for='Terms']");
    let TermsAlert = document.getElementById("TermsAlert");

    let PrimaryNumberInput = document.getElementById('PrimaryNumber');
    let PrimaryNumberLabel = document.querySelector("label[for='PrimaryNumber']");
    let PrimaryNumberAlert = document.getElementById("PrimaryNumberAlert");

    let SecondaryNumberInput = document.getElementById('SecondaryNumber');
    let SecondaryNumberLabel = document.querySelector("label[for='SecondaryNumber']");
    let SecondaryNumberAlert = document.getElementById("SecondaryNumberAlert");
    const formData = new FormData();
    formData.append('BhkType', BhkTypeInput.value);
    formData.append('Floor', FloorInput.value);
    formData.append('HouseType', HouseTypeInput.value);
    formData.append('Parking', ParkingInput.value);
    formData.append('Terrace', TerraceInput.value);
    formData.append('Hall', HallInput.value);
    formData.append('Bedroom', BedroomInput.value);
    formData.append('Bathroom', BathroomInput.value);
    formData.append('District', DistrictInput.value);
    formData.append('Town', TownInput.value);
    formData.append('Street', StreetInput.value);
    formData.append('ExpectedRent', ExpectedRentInput.value);
    formData.append('ExpectedDepositMonths', ExpectedDepositMonthsInput.value);
    formData.append('ExpectedDeposit', ExpectedDepositInput.value);
    formData.append('Maintenance', MaintenanceInput.value);
    formData.append('PreferredTenants', PreferredTenantsInput.value);
    formData.append('Terms', TermsInput.value);
    formData.append('PrimaryNumber', PrimaryNumberInput.value);
    formData.append('SecondaryNumber', SecondaryNumberInput.value);

    //Append files if selected
    let images = $('#imageInput')[0].files;
    if (images.length > 0) {
      for (let i = 0; i < images.length; i++) {
        formData.append('images', images[i]);
      }
    }

    const csrftoken = document.querySelector('[name=csrfmiddlewaretoken]').value;

    fetch("residential_rent_create/", {
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
          window.location.href = "/profile";
        }
      })
      .catch(error => {
        console.error("Error:", error);
        alert("An error occurred. Please try again.");
      });

  });
});

// document.addEventListener('DOMContentLoaded', () => {
//   const imageInput = document.getElementById('imageInput');
//   const imagePreview = document.getElementById('imagePreview');
//   const imageModal = new bootstrap.Modal(document.getElementById('imageModal'));
//   const modalImage = document.getElementById('modalImage');

//   if (!imageInput || !imagePreview) {
//     console.error('Required elements not found in DOM.');
//     return;
//   }

//   imageInput.addEventListener('change', () => {
//     imagePreview.innerHTML = '';

//     const filesArray = Array.from(imageInput.files);
//     filesArray.forEach((file, index) => {
//       const reader = new FileReader();
//       reader.onload = (e) => {
//         const colDiv = document.createElement('div');
//         colDiv.classList.add('col-md-3');
//         colDiv.innerHTML = `
//                   <div class="card h-100">
//                       <img src="${e.target.result}" class="card-img-top" alt="Selected Image" style="cursor: pointer;">
//                       <div class="card-body text-center">
//                           <button class="btn btn-danger btn-sm delete-btn" data-index="${index}">Delete</button>
//                       </div>
//                   </div>
//               `;
//         imagePreview.appendChild(colDiv);

//         colDiv.querySelector('img').addEventListener('click', () => {
//           modalImage.src = e.target.result;
//           imageModal.show();
//         });

//         colDiv.querySelector('.delete-btn').addEventListener('click', () => {
//           filesArray.splice(index, 1);
//           const dataTransfer = new DataTransfer();
//           filesArray.forEach((file) => dataTransfer.items.add(file));
//           imageInput.files = dataTransfer.files;
//           colDiv.remove();
//         });
//       };
//       reader.readAsDataURL(file);
//     });
//   });
// });




// let isValid = true;

// // BhkType validation
// if (!BhkTypeInput.value.trim()) {
//   BhkTypeInput.style.border = "2px solid red";
//   BhkTypeLabel.style.color = "red";
//   BhkTypeAlert.hidden = false;
//   isValid = false;
// } else {
//   BhkTypeInput.style.border = "";
//   BhkTypeLabel.style.color = "";
//   BhkTypeAlert.hidden = true;
// }



// // Floor validation
// if (!FloorInput.value.trim()) {
//   FloorInput.style.border = "2px solid red";
//   FloorLabel.style.color = "red";
//   FloorAlert.hidden = false;
//   isValid = false;
// } else {
//   FloorInput.style.border = "";
//   FloorLabel.style.color = "";
//   FloorAlert.hidden = true;
// }

// // HouseType validation
// if (!HouseTypeInput.value.trim()) {
//   HouseTypeInput.style.border = "2px solid red";
//   HouseTypeLabel.style.color = "red";
//   HouseTypeAlert.hidden = false;
//   isValid = false;
// } else {
//   HouseTypeInput.style.border = "";
//   HouseTypeLabel.style.color = "";
//   HouseTypeAlert.hidden = true;
// }


// // Parking validation
// if (!ParkingInput.value.trim()) {
//   ParkingInput.style.border = "2px solid red";
//   ParkingLabel.style.color = "red";
//   ParkingAlert.hidden = false;
//   isValid = false;
// } else {
//   ParkingInput.style.border = "";
//   ParkingLabel.style.color = "";
//   ParkingAlert.hidden = true;
// }


// // Terrace validation
// if (!TerraceInput.value.trim()) {
//   TerraceInput.style.border = "2px solid red";
//   TerraceLabel.style.color = "red";
//   TerraceAlert.hidden = false;
//   isValid = false;
// } else {
//   TerraceInput.style.border = "";
//   TerraceLabel.style.color = "";
//   TerraceAlert.hidden = true;
// }


// // Hall validation
// if (!HallInput.value.trim()) {
//   HallInput.style.border = "2px solid red";
//   HallLabel.style.color = "red";
//   HallAlert.hidden = false;
//   isValid = false;
// } else {
//   HallInput.style.border = "";
//   HallLabel.style.color = "";
//   HallAlert.hidden = true;
// }


// // Bedroom validation
// if (!BedroomInput.value.trim()) {
//   BedroomInput.style.border = "2px solid red";
//   BedroomLabel.style.color = "red";
//   BedroomAlert.hidden = false;
//   isValid = false;
// } else {
//   BedroomInput.style.border = "";
//   BedroomLabel.style.color = "";
//   BedroomAlert.hidden = true;
// }


// // Bathroom validation
// if (!BathroomInput.value.trim()) {
//   BathroomInput.style.border = "2px solid red";
//   BathroomLabel.style.color = "red";
//   BathroomAlert.hidden = false;
//   isValid = false;
// } else {
//   BathroomInput.style.border = "";
//   BathroomLabel.style.color = "";
//   BathroomAlert.hidden = true;
// }

// // District validation
// if (!DistrictInput.value.trim()) {
//   DistrictInput.style.border = "2px solid red";
//   DistrictLabel.style.color = "red";
//   DistrictAlert.hidden = false;
//   isValid = false;
// } else {
//   DistrictInput.style.border = "";
//   DistrictLabel.style.color = "";
//   DistrictAlert.hidden = true;
// }


// // Town validation
// if (!TownInput.value.trim()) {
//   TownInput.style.border = "2px solid red";
//   TownLabel.style.color = "red";
//   TownAlert.hidden = false;
//   isValid = false;
// } else {
//   TownInput.style.border = "";
//   TownLabel.style.color = "";
//   TownAlert.hidden = true;
// }


// // Street validation
// if (!StreetInput.value.trim()) {
//   StreetInput.style.border = "2px solid red";
//   StreetLabel.style.color = "red";
//   StreetAlert.hidden = false;
//   isValid = false;
// } else {
//   StreetInput.style.border = "";
//   StreetLabel.style.color = "";
//   StreetAlert.hidden = true;
// }


// // ExpectedRent validation
// if (!ExpectedRentInput.value.trim()) {
//   ExpectedRentInput.style.border = "2px solid red";
//   ExpectedRentLabel.style.color = "red";
//   ExpectedRentAlert.hidden = false;
//   isValid = false;
// } else {
//   ExpectedRentInput.style.border = "";
//   ExpectedRentLabel.style.color = "";
//   ExpectedRentAlert.hidden = true;
// }

// // ExpectedDepositMonths validation
// if (!ExpectedDepositMonthsInput.value.trim()) {
//   ExpectedDepositMonthsInput.style.border = "2px solid red";
//   ExpectedDepositMonthsLabel.style.color = "red";
//   ExpectedDepositMonthsAlert.hidden = false;
//   isValid = false;
// } else {
//   ExpectedDepositMonthsInput.style.border = "";
//   ExpectedDepositMonthsLabel.style.color = "";
//   ExpectedDepositMonthsAlert.hidden = true;
// }


// // ExpectedDeposit validation
// if (!ExpectedDepositInput.value.trim()) {
//   ExpectedDepositInput.style.border = "2px solid red";
//   ExpectedDepositLabel.style.color = "red";
//   ExpectedDepositAlert.hidden = false;
//   isValid = false;
// } else {
//   ExpectedDepositInput.style.border = "";
//   ExpectedDepositLabel.style.color = "";
//   ExpectedDepositAlert.hidden = true;
// }


// // Maintenance validation
// if (!MaintenanceInput.value.trim()) {
//   MaintenanceInput.style.border = "2px solid red";
//   MaintenanceLabel.style.color = "red";
//   MaintenanceAlert.hidden = false;
//   isValid = false;
// } else {
//   MaintenanceInput.style.border = "";
//   MaintenanceLabel.style.color = "";
//   MaintenanceAlert.hidden = true;
// }


// // PreferredTenants validation
// if (!PreferredTenantsInput.value.trim()) {
//   PreferredTenantsInput.style.border = "2px solid red";
//   PreferredTenantsLabel.style.color = "red";
//   PreferredTenantsAlert.hidden = false;
//   isValid = false;
// } else {
//   PreferredTenantsInput.style.border = "";
//   PreferredTenantsLabel.style.color = "";
//   PreferredTenantsAlert.hidden = true;
// }

// // Terms validation
// if (!TermsInput.value.trim()) {
//   TermsInput.style.border = "2px solid red";
//   TermsLabel.style.color = "red";
//   TermsAlert.hidden = false;
//   isValid = false;
// } else {
//   TermsInput.style.border = "";
//   TermsLabel.style.color = "";
//   TermsAlert.hidden = true;
// }

// // PrimaryNumber validation
// if (!PrimaryNumberInput.value.trim()) {
//   PrimaryNumberInput.style.border = "2px solid red";
//   PrimaryNumberLabel.style.color = "red";
//   PrimaryNumberAlert.hidden = false;
//   isValid = false;
// } else {
//   PrimaryNumberInput.style.border = "";
//   PrimaryNumberLabel.style.color = "";
//   PrimaryNumberAlert.hidden = true;
// }

// // SecondaryNumberInput validation
// if (!SecondaryNumberInput.value.trim()) {
//   SecondaryNumberInput.style.border = "2px solid red";
//   SecondaryNumberLabel.style.color = "red";
//   SecondaryNumberAlert.hidden = false;
//   isValid = false;
// } else {
//   SecondaryNumberInput.style.border = "";
//   SecondaryNumberLabel.style.color = "";
//   SecondaryNumberAlert.hidden = true;
// }

// if (isValid) {

// }
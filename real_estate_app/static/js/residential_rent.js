// const imageInput = document.getElementById('Images');
// const imagePreview = document.getElementById('imagePreview');

// // Handle file input change
// imageInput.addEventListener('change', function () {
//   const files = imageInput.files;
//   imagePreview.innerHTML = ''; // Clear previous previews

//   if (files.length > 0) {
//     for (let i = 0; i < files.length; i++) {
//       const file = files[i];

//       // Check if the file is an image
//       if (!file.type.startsWith('image/')) {
//         alert("Please select only images.");
//         continue;
//       }

//       const reader = new FileReader();
//       reader.onload = function (e) {
//         const img = document.createElement('img');
//         img.src = e.target.result;
//         img.alt = file.name;
//         img.style.width = '150px'; // Set size
//         img.style.margin = '10px'; // Space between images

//         imagePreview.appendChild(img);
//       };
//       reader.readAsDataURL(file);
//     }
//   } else {
//     alert("No files selected.");
//   }
// });



function RentCalculator() {
  let ExpectedRent = parseInt(document.getElementById('ExpectedRent').value);
  let ExpectedDepositMonths = parseInt(document.getElementById('ExpectedDepositMonths').value);
  document.getElementById('ExpectedDeposit').value = ExpectedRent * ExpectedDepositMonths;

}

function ResidentialRentCreate() {
  // Get form values
  let BhkType = document.getElementById('BhkType').value;
  let Floor = document.getElementById('Floor').value;
  let HouseType = document.getElementById('HouseType').value;
  let Parking = document.getElementById('Parking').value;
  let Terrace = document.getElementById('Terrace').value;
  let Hall = document.getElementById('Hall').value;
  let Bedroom = document.getElementById('Bedroom').value;
  let Bathroom = document.getElementById('Bathroom').value;
  let District = document.getElementById('District').value;
  let Town = document.getElementById('Town').value;
  let Street = document.getElementById('Street').value;
  let ExpectedRent = document.getElementById('ExpectedRent').value;
  let ExpectedDepositMonths = document.getElementById('ExpectedDepositMonths').value;
  let ExpectedDeposit = document.getElementById('ExpectedDeposit').value;
  let Maintenance = document.getElementById('Maintenance').value;
  let PreferredTenants = document.getElementById('PreferredTenants').value;
  let Terms = document.getElementById('Terms').value;
  let PrimaryNumber = document.getElementById('PrimaryNumber').value;
  let SecondaryNumber = document.getElementById('SecondaryNumber').value;

  // Create FormData object
  let formData = new FormData();
  formData.append('BhkType', BhkType);
  formData.append('Floor', Floor);
  formData.append('HouseType', HouseType);
  formData.append('Parking', Parking);
  formData.append('Terrace', Terrace);
  formData.append('Hall', Hall);
  formData.append('Bedroom', Bedroom);
  formData.append('Bathroom', Bathroom);
  formData.append('District', District);
  formData.append('Town', Town);
  formData.append('Street', Street);
  formData.append('ExpectedRent', ExpectedRent);
  formData.append('ExpectedDepositMonths', ExpectedDepositMonths);
  formData.append('ExpectedDeposit', ExpectedDeposit);
  formData.append('Maintenance', Maintenance);
  formData.append('PreferredTenants', PreferredTenants);
  formData.append('Terms', Terms);
  formData.append('PrimaryNumber', PrimaryNumber);
  formData.append('SecondaryNumber', SecondaryNumber);

  // Append CSRF token
   formData.append('csrfmiddlewaretoken', $('input[name="csrfmiddlewaretoken"]').val());

  // Append files if selected
  // let images = $('#Images')[0].files;
  // if (images.length > 0) {
  //   for (let i = 0; i < images.length; i++) {
  //     formData.append('images', images[i]);
  //   }
  // }

  // let videos = $('#Videos')[0].files;
  // if (videos.length > 0) {
  //   for (let i = 0; i < videos.length; i++) {
  //     formData.append('videos', videos[i]);
  //   }
  // }

  // Validate form fields
  if (BhkType === "" || Floor === "" || HouseType === "" || Parking === "" || Terrace === "" || Hall === "" ||
    Bedroom === "" || Bathroom === "" || District === "" || Town === "" || Street === "" ||
    ExpectedRent === "" || ExpectedDepositMonths === "" || Maintenance === "" ||
    PreferredTenants === "" || Terms === "" || PrimaryNumber === "" || SecondaryNumber === "") {
    alert("Please fill all the required fields.");
  } 
  else {
    // Submit the form data via AJAX
    $.ajax({
      url: 'residential_rent_create/',  // Adjust URL as needed
      type: 'POST',
      data: formData,
      processData: false,  // Important for file uploads
      contentType: false,  // Important for file uploads
      success: function() {
        alert('Uploaded successfully!');
      },
      error: function() {
        alert('Error uploading data.');
      }
    });
  }
}

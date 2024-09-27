


function Calculate() {
    //For House
    var HouseLength = parseFloat(document.getElementById('HouseLength').value) || 0;
    var HouseWidth = parseFloat(document.getElementById('HouseWidth').value) || 0;

    var HousePlotArea = HouseLength * HouseWidth;
    var HouseCent = HousePlotArea / 436;

    document.getElementById('HousePlotArea').value = HousePlotArea.toFixed(2);
    document.getElementById('HouseCent').value = HouseCent.toFixed(2);
    //For Land
    var LandLength = parseFloat(document.getElementById('LandLength').value) || 0;
    var LandWidth = parseFloat(document.getElementById('LandWidth').value) || 0;

    var LandPlotArea = LandLength * LandWidth;
    var LandCent = LandPlotArea / 436;

    document.getElementById('LandPlotArea').value = LandPlotArea.toFixed(2);
    document.getElementById('LandCent').value = LandCent.toFixed(2);
}

function residential_resale_create() {
    let BhkType = document.getElementById('BhkType').value;
    let TotalFloor = document.getElementById('TotalFloor').value;
    let PropertyAge = document.getElementById('PropertyAge').value;
    let HouseLength = document.getElementById('HouseLength').value;
    let HouseWidth = document.getElementById('HouseWidth').value;
    let HousePlotArea = document.getElementById('HousePlotArea').value;
    let HouseCent = document.getElementById('HouseCent').value;
    let LandLength = document.getElementById('LandLength').value;
    let LandWidth = document.getElementById('LandWidth').value;
    let LandPlotArea = document.getElementById('LandPlotArea').value;
    let LandCent = document.getElementById('LandCent').value;
    let Parking = document.getElementById('Parking').value;
    let Terrace = document.getElementById('Terrace').value;
    let Hall = document.getElementById('Hall').value;
    let Bedroom = document.getElementById('Bedroom').value;
    let Bathroom = document.getElementById('Bathroom').value;
    let District = document.getElementById('District').value;
    let Town = document.getElementById('Town').value;
    let Street = document.getElementById('Street').value;
    let ExpectedPrice = document.getElementById('ExpectedPrice').value;
    let Description = document.getElementById('Description').value;
    let PrimaryNumber = document.getElementById('PrimaryNumber').value;
    let SecondaryNumber = document.getElementById('SecondaryNumber').value;

    let formData = FormData();
    formData.append('BhkType', BhkType);
    formData.append('TotalFloor', TotalFloor);
    formData.append('PropertyAge', PropertyAge);
    formData.append('HouseLength',HouseLength);
    formData.append('HouseWidth',HouseWidth);
    formData.append('HousePlotArea',HousePlotArea);
    formData.append('HouseCent',HouseCent);
    formData.append('LandLength',LandLength);
    formData.append('LandWidth',LandWidth);
    formData.append('LandPlotArea',LandPlotArea);
    formData.append('LandCent',LandCent);
    formData.append('Parking', Parking);
    formData.append('Terrace', Terrace);
    formData.append('Hall', Hall);
    formData.append('Bedroom', Bedroom);
    formData.append('Bathroom', Bathroom);
    formData.append('District', District);
    formData.append('Town', Town);
    formData.append('Street', Street);
    formData.append('ExpectedPrice', ExpectedPrice);
    formData.append('Description', Description);
    formData.append('PrimaryNumber', PrimaryNumber);
    formData.append('SecondaryNumber', SecondaryNumber);

    // Append CSRF token
    formData.append('csrfmiddlewaretoken', $('input[name="csrfmiddlewaretoken"]').val());

    // Append files if selected
    let images = $('#Images')[0].files;
    if (images.length > 0) {
        for (let i = 0; i < images.length; i++) {
            formData.append('images', images[i]);
        }
    }

    // let videos = $('#Videos')[0].files;
    // if (videos.length > 0) {
    //   for (let i = 0; i < videos.length; i++) {
    //     formData.append('videos', videos[i]);
    //   }
    // }



    if (BhkType == "" || TotalFloor == "" || PropertyAge == "" || HouseLength == "" || HouseWidth == "" || LandLength == "" || LandWidth == "" ||
        Parking == "" || Terrace == "" || Hall == "" || Bedroom == "" || Bathroom == "" || District == "" || Town == "" || Street == "" || ExpectedPrice == "" ||
        Description == "" || PrimaryNumber == "" || SecondaryNumber == "") {
        alert("Please fill the Required Field🥺")
    }
    else {
        $.ajax({
            url: 'residential_resale_create/',
            type: 'POST',
            data: formData,
            processData : false,
            contentType : false,
            success: function () {
                alert("Your Property Posted Successfully😊");
            },
            error: function () {
                alert("Sorry Some Error Occurs😖");
            }
        });
    }

}
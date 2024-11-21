function validatePhoneNumber(){
    let PrimaryNumber = document.getElementById('PrimaryNumber').value;
    let SecondaryNumber = document.getElementById('SecondaryNumber').value;

    if(PrimaryNumber == SecondaryNumber){
        alert('The Secondary Number not match')
    }
}
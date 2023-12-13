
function validateRegisterForm(myForm) {
    const fname = myForm.firtstname.value;
    const lname = myForm.lastname.value;
    const gender = myForm.gender.value;
    const bloodgroup = myForm.blood.value;
    let flag = true;
    const fname_err = document.getElementById('fnameErr');
    const lname_err = document.getElementById('lnameErr');
    const gender_err = document.getElementById('gErr');
    const blood_err = document.getElementById('bErr');
    fname_err.innerHTML = "";
    lname_err.innerHTML = "";
    gender_err.innerHTML = "";
    blood_err.innerHTML = "";
  
  
    if (fname === "") {
      fname_err.innerHTML = 'Please enter First Name.';
      fname_err.style.color = "red";
        flag = false;
    } else if (!/^[a-zA-Z0-9]+$/.test(username)) {
      fname_err.innerHTML = 'Name should only contain letters.';
      fname_err.style.color = "red";
        flag = false;
    }
  
    if (lname === "") {
      lname_err.innerHTML = 'Please enter First Name.';
      lname_err.style.color = "red";
        flag = false;
    } else if (!/^[a-zA-Z0-9]+$/.test(username)) {
      lname_err.innerHTML = 'Name should only contain letters.';
      lname_err.style.color = "red";
        flag = false;
    }
  
  
    if (gender === "") {
      gender_err.innerHTML = 'Please enter a password.';
      gender_err.style.color = "red";
        flag = false;
    }
  

    if (bloodgroup === "") {
      blood_err.innerHTML = 'Please enter a password.';
      blood_err.style.color = "red";
        flag = false;
    }
  
  

    return flag;
  }
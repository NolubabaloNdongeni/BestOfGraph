const form = document.getElementById('form');
const form = document.getElementById('name');
const form = document.getElementById('surname');
const form = document.getElementById('DateOfBirth');
const form = document.getElementById('age');
const form = document.getElementById('schoolName');
const form = document.getElementById('PName');
const form = document.getElementById('PSurname');
const form = document.getElementById('occupation');
const form = document.getElementById('Cell');

form.addEventListener('submit',(e)=>{
	e.preventDefault();
	checkInputs();
})

funtion checkInputs()
{
	const nameValue = name.value.trim();
	const surnameValue = surname.value.trim();
	const DateOfBirthValue = DateOfBirth.value.trim();
	const ageValue = age.value.trim();
	const schoolNameValue = schoolName.value.trim();
	const PNameValue = PName.value.trim();
	const PSurnameValue = PSurname.value.trim();
	const occupationValue = occupation.value.trim();
	const CellValue = Cell.value.trim();
	
//set error for name
	if(nameValue ==='')
	{
		//for error message
		setErrorFor(name, 'Fill the field');
	}else
	{
		setSuccessFor(name);
	}

//set error message for surname	
	if(surnameValue ==='')
		{
			//for error message
			setErrorFor(surname, 'Fill the field');
		}else
		{
			setSuccessFor(surname);
		}
		
		
	if(emailValue ==='')
		{
			//for error message
			setErrorFor(email, 'Fill the field');
		}else
		if(!isEmail(emailValue))
		{
			setErrorFor(email, 'Emai is invalid');
		} else {setErrorFor(email);
		
		
//set error message for school name
	if(schoolNameValue ==='')
	{
		//for error message
		setErrorFor(schoolName, 'Fill the field');
	}else
	{
		setSuccessFor(schoolName);
	}
	
//set error message for PName	
	if(PNameValue ==='')
		{
			//for error message
			setErrorFor(Pname, 'Fill the field');
		}else
		{
			setSuccessFor(Pname);
		}	
		
//set error message for Psurname		
	if(PSurnameValue ==='')
		{
			//for error message
			setErrorFor(PSurname, 'Fill the field');
		}else
		{
			setSuccessFor(PSurname);
		}	
		
		
//set error message for occupation	
	if(occupationValue ==='')
		{
			//for error message
			setErrorFor(occupation, 'Fill the field');
		}else
		{
			setSuccessFor(occupation);
		}
}

function setErrorFor(input, message)
{
		const formControl = input.parentElement;
		const small = formControl.querySelector('small');
		
		small.innerText = message;
		
		formControl.className = 'form-control error';
}

function setSuccessFor(input)	
{
	const formControl = input.parentElement;
	formControl.className = 'form-control success';
}

function isEmail(email)
{
	return /^((^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}


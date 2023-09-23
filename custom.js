const stateCityData = {
  "states": [
    {
      "name": "Andaman and Nicobar Islands",
      "cities": ["Port Blair"]
    },
    {
      "name": "Andhra Pradesh",
      "cities": ["Hyderabad", "Visakhapatnam", "Vijayawada"]
    },
    {
      "name": "Arunachal Pradesh",
      "cities": ["Itanagar", "Naharlagun"]
    },
    {
      "name": "Assam",
      "cities": ["Guwahati", "Dibrugarh", "Silchar"]
    },
    {
      "name": "Bihar",
      "cities": ["Patna", "Gaya", "Muzaffarpur"]
    },
    {
      "name": "Chandigarh",
      "cities": ["Chandigarh"]
    },
    {
      "name": "Chhattisgarh",
      "cities": ["Raipur", "Bhilai", "Bilaspur"]
    },
    {
      "name": "Dadra and Nagar Haveli and Daman and Diu",
      "cities": ["Daman", "Silvassa"]
    },
    {
      "name": "Delhi",
      "cities": ["New Delhi"]
    },
    {
      "name": "Goa",
      "cities": ["Panaji", "Margao"]
    },
    {
      "name": "Gujarat",
      "cities": ["Ahmedabad", "Surat", "Vadodara"]
    },
    {
      "name": "Haryana",
      "cities": ["Chandigarh", "Faridabad", "Gurugram"]
    },
    {
      "name": "Himachal Pradesh",
      "cities": ["Shimla", "Manali", "Dharamshala"]
    },
    {
      "name": "Jammu and Kashmir",
      "cities": ["Srinagar", "Jammu", "Leh"]
    },
    {
      "name": "Jharkhand",
      "cities": ["Ranchi", "Jamshedpur", "Dhanbad"]
    },
    {
      "name": "Karnataka",
      "cities": ["Bengaluru", "Mysuru", "Hubballi"]
    },
    {
      "name": "Kerala",
      "cities": ["Thiruvananthapuram", "Kochi", "Kozhikode"]
    },
    {
      "name": "Ladakh",
      "cities": ["Leh", "Kargil"]
    },
    {
      "name": "Lakshadweep",
      "cities": ["Kavaratti"]
    },
    {
      "name": "Madhya Pradesh",
      "cities": ["Bhopal", "Indore", "Jabalpur"]
    },
    {
      "name": "Maharashtra",
      "cities": ["Mumbai", "Pune", "Nagpur"]
    },
    {
      "name": "Manipur",
      "cities": ["Imphal"]
    },
    {
      "name": "Meghalaya",
      "cities": ["Shillong"]
    },
    {
      "name": "Mizoram",
      "cities": ["Aizawl"]
    },
    {
      "name": "Nagaland",
      "cities": ["Kohima"]
    },
    {
      "name": "Odisha",
      "cities": ["Bhubaneswar", "Cuttack", "Puri"]
    },
    {
      "name": "Puducherry",
      "cities": ["Puducherry", "Karaikal", "Mahe"]
    },
    {
      "name": "Punjab",
      "cities": ["Chandigarh", "Amritsar", "Ludhiana"]
    },
    {
      "name": "Rajasthan",
      "cities": ["Jaipur", "Udaipur", "Jodhpur"]
    },
    {
      "name": "Sikkim",
      "cities": ["Gangtok"]
    },
    {
      "name": "Tamil Nadu",
      "cities": ["Chennai", "Coimbatore", "Madurai"]
    },
    {
      "name": "Telangana",
      "cities": ["Hyderabad", "Warangal", "Karimnagar"]
    },
    {
      "name": "Tripura",
      "cities": ["Agartala"]
    },
    {
      "name": "Uttar Pradesh",
      "cities": ["Lucknow", "Kanpur", "Agra"]
    },
    {
      "name": "Uttarakhand",
      "cities": ["Dehradun", "Haridwar", "Nainital"]
    },
    {
      "name": "West Bengal",
      "cities": ["Kolkata", "Howrah", "Durgapur"]
    }
  ]
};

function populateStatesAndCities(statesData) {
  const stateList = document.getElementById('stateList');
  stateList.innerHTML = '';

  statesData.forEach((state) => {
    const stateItem = document.createElement('li');

    const stateName = document.createElement('span');
    stateName.classList.add('state-name');
    stateName.textContent = state.name;

    const chevronIcon = document.createElement('img');
    chevronIcon.classList.add('toggle-icon');
     // Initial right chevron icon
    chevronIcon.src = 'assets/icons/expand_more.png';
    stateName.appendChild(chevronIcon);

    stateName.addEventListener('click', () => toggleCities(stateName, chevronIcon));

    const cityDropdown = document.createElement('ul');
    cityDropdown.classList.add('city-dropdown');
    cityDropdown.style.display = 'none';

    state.cities.forEach((city) => {
      const cityItem = document.createElement('li');
      cityItem.textContent = city;
      cityDropdown.appendChild(cityItem);
    });

    stateItem.appendChild(stateName);
    stateItem.appendChild(cityDropdown);
    stateList.appendChild(stateItem);
  });
}

function toggleCities(stateElement, chevronIcon) {
  const cityDropdown = stateElement.nextElementSibling;

  cityDropdown.style.display = cityDropdown.style.display === 'flex' ? 'none' : 'flex';
  chevronIcon.src = cityDropdown.style.display === 'flex' ? 'assets/icons/chevron-down.png' : 'assets/icons/expand_more.png'; // Change the icon based on dropdown display

  stateElement.classList.toggle('fw-bold');
}

function initialize() {
  populateStatesAndCities(stateCityData.states);
}

initialize();

// function populateStatesAndCities(statesData) {
//   const stateList = document.getElementById('stateList');
//   stateList.innerHTML = '';

//   statesData.forEach((state) => {
//     const stateItem = document.createElement('li');
//     const stateName = document.createElement('span');
//     stateName.classList.add('state-name');
//     stateName.textContent = state.name;
//     stateName.addEventListener('click', () => toggleCities(stateName));
    
//     const cityDropdown = document.createElement('ul');
//     cityDropdown.classList.add('city-dropdown');
//     cityDropdown.style.display = 'none';

//     state.cities.forEach((city) => {
//       const cityItem = document.createElement('li');
//       cityItem.textContent = city;
//       cityDropdown.appendChild(cityItem);
//     });

//     stateItem.appendChild(stateName);
//     stateItem.appendChild(cityDropdown);
//     stateList.appendChild(stateItem);
//   });
// }

// function toggleCities(stateElement) {
//   const cityDropdown = stateElement.nextElementSibling;

//   // Close all city dropdowns
//   // const allDropdowns = document.querySelectorAll('.city-dropdown');
//   // allDropdowns.forEach((dropdown) => {
//   //   if (dropdown !== cityDropdown) {
//   //     dropdown.style.display = 'none';
//   //   }
//   // });

//   // Remove bold font from all other state names
//   // const allStateNames = document.querySelectorAll('.state-name');
//   // allStateNames.forEach((name) => {
//   //   name.classList.remove('fw-bold');
//   // });

//   // Toggle the city dropdown for the clicked state
//   cityDropdown.style.display = cityDropdown.style.display === 'flex' ? 'none' : 'flex';
//   // Add bold font to active state name
//   stateElement.classList.toggle('fw-bold');
// }

// function initialize() {
//   populateStatesAndCities(stateCityData.states);
// }

// initialize();

// Scrolling Nature of States & UTs inside Geographic Turnover
const scrollableContent = document.getElementById('scrollableContent');
const fixedImage = document.getElementById('fixedImage');

scrollableContent.addEventListener('scroll', function(event) {
  if (scrollableContent.scrollHeight - scrollableContent.scrollTop === scrollableContent.clientHeight) {
    // User has scrolled to the bottom of the content
    // Allow the body to scroll
    document.body.style.overflow = 'auto';
  } else {
    // User is scrolling within the content
    // Hide the body scroll
    document.body.style.overflow = 'hidden';
  }
});


// Changing Active color of selected Methodology Distribution

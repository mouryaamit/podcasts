// Add Header Shadow on Scroll
window.addEventListener("scroll", (event) => {
  let scroll = this.scrollY;
  if (scroll > 0) {
    document.querySelector(".app_header").classList.add("app_header_shadow");
  } else {
    document.querySelector(".app_header").classList.remove("app_header_shadow");
  }
});

// States & UTs
const stateCityData = {
  "states": [
    {
      "name": "Andaman and Nicobar Islands",
      "cities": ["South Andaman"]
    },
    {
      "name": "Andhra Pradesh",
      "cities": ["Visakhapatnam", "Krishna", "Guntur", "Prakasam", "East Godavari", "Anantapur", "Chittoor", "Vizianagaram", "YSR", "Srikakulam", "SPSR Nellore", "West Godavari", "Kurnool", "Sri Potti Sriramulu Nellore", "Ananthapuramu", "NTR", "Konaseema", "Bapatla", "Tirupati"]
    },
    {
      "name": "Arunachal Pradesh",
      "cities": ["West Siang"]
    },
    {
      "name": "Assam",
      "cities": ["Kamrup Metropolitan", "Kamrup", "Sonitpur", "Nagaon", "Tinsukia", "Darrang", "Sivasagar", "Dibrugarh", "Lakhimpur", "Golaghat", "Karimganj", "Bongaigaon", "Jorhat", "Nalbari", "Barpeta", "Cachar", "Karbi Anglong", "Marigaon", "Dima Hasao", "Udalguri"]
    },
    {
      "name": "Bihar",
      "cities": ["Patna", "Samastipur", "Muzaffarpur", "Bhagalpur", "Gaya", "Purbi Champaran", "Vaishali", "Darbhanga", "Katihar", "Begusarai", "Pashchim Champaran", "Rohtas", "Banka", "Saran", "Sitamarhi", "Khagaria", "Madhubani", "Nalanda", "Gopalganj", "Purnea", "Aurangabad", "Bhojpur", "Jamui", "Kishanganj", "Madhepura", "Sheikhpura", "Buxar", "Munger", "Nawada", "Siwan", "Supaul", "Jehanabad", "Saharsa", "Araria", "Arwal", "Kaimur", "Lakhisarai", "Sheohar"]
    },
    {
      "name": "Chandigarh",
      "cities": ["Chandigarh"]
    },
    {
      "name": "Chhattisgarh",
      "cities": ["Raipur", "Durg", "Rajnandgaon", "Bilaspur", "Janjgir Champa", "Korba", "Raigarh", "Mahasamund", "Dhamtari", "Jashpur", "Balod", "Bemetara", "Kabirdham", "Mungeli", "Baloda Bazar", "Balodabazar Bhatapara", "Bastar", "Kanker", "Kondagaon", "Korea", "Surguja"]
    },
    {
      "name": "Dadra and Nagar Haveli and Daman and Diu",
      "cities": ["Dadra And Nagar Haveli", "Daman", "Dadra & Nagar Haveli"]
    },
    {
      "name": "Delhi",
      "cities": ["North West Delhi", "West Delhi", "New Delhi", "East Delhi", "North Delhi", "Central Delhi", "South Delhi", "South West Delhi", "North East Delhi", "South East Delhi", "Shahdara"]
    },
    {
      "name": "Goa",
      "cities": ["North Goa", "South Goa"]
    },
    {
      "name": "Gujarat",
      "cities": ["Ahmedabad", "Surat", "Rajkot", "Vadodara", "Valsad", "Kachchh", "Morbi", "Gandhinagar", "Mahesana", "Banaskantha", "Bharuch", "Bhavnagar", "Jamnagar", "Anand", "Surendranagar", "Patan", "Kheda", "Navsari", "Sabarkantha", "Mehsana", "Panch Mahals", "Dahod", "Aravalli", "Chhotaudepur", "Devbhumi Dwarka", "Junagadh", "Tapi", "Amreli", "Mahisagar", "Botad", "Gir Somnath", "Narmada", "Panchmahals"]
    },
    {
      "name": "Haryana",
      "cities": ["Faridabad", "Gurugram", "Sonipat", "Panipat", "Rohtak", "Jhajjar", "Rewari", "Hisar", "Panchkula", "Bhiwani", "Ambala", "Karnal", "Yamunanagar", "Jind", "Palwal", "Gurgaon", "Sirsa", "Fatehabad", "Mahendragarh", "Kurukshetra", "Kaithal", "Mewat", "Nuh", "Charkhi Dadri"]
    },
    {
      "name": "Himachal Pradesh",
      "cities": ["Solan", "Kangra", "Sirmaur", "Una", "Shimla", "Hamirpur", "Kullu", "Mandi", "Bilaspur"]
    },
    {
      "name": "Jammu and Kashmir",
      "cities": ["Jammu", "Samba", "Srinagar", "Anantnag", "Kathua", "Udhampur", "Budgam", "Baramulla", "Reasi", "Doda", "Ganderbal", "Kupwara", "Rajouri"]
    },
    {
      "name": "Jharkhand",
      "cities": ["Ranchi", "Seraikela Kharsawan", "East Singhbhum", "Dhanbad", "Ramgarh", "Bokaro", "Garhwa", "Palamu", "Seraikela-Kharsawan", "Hazaribag", "Deoghar", "Giridih", "Pakur", "Dumka", "Gumla", "Chatra", "West Singhbhum", "Koderma", "Lohardaga", "Simdega", "Khunti", "Sahibganj"]
    },
    {
      "name": "Karnataka",
      "cities": ["Bengaluru", "Bengaluru Rural", "Dharwad", "Mysuru", "Belagavi", "Bengaluru (Bangalore) Urban", "Shivamogga", "Ballari", "Dakshina Kannada", "Tumakuru", "Kolar", "Bagalkote", "Ramanagara", "Uttara Kannada", "Davanagere", "Belagavi (Belgaum)", "Vijayapura", "Chitradurga", "Hassan", "Udupi", "Chikkamagaluru", "Gadag", "Mandya", "Mysuru (Mysore)", "Bengaluru (Bangalore) Rural", "Kalaburagi", "Haveri", "Koppal", "Bidar", "Raichur", "Chikkaballapura", "Chamarajanagar", "Kodagu", "Ballari (Bellary)", "Yadgir", "Chamarajanagara", "Chikballapur", "Vijayanagara", "Yadgiri"]
    },
    {
      "name": "Kerala",
      "cities": ["Ernakulam", "Thrissur", "Thiruvananthapuram", "Kottayam", "Palakkad", "Kozhikode", "Alappuzha", "Kollam", "Malappuram", "Kannur", "Idukki", "Wayanad", "Pathanamthitta", "Kasaragod", "Kasargod"]
    },
    {
      "name": "Ladakh",
      "cities": ["Kargil"]
    },
    {
      "name": "Madhya Pradesh",
      "cities": ["Indore", "Bhopal", "Jabalpur", "Satna", "Dhar", "Dewas", "Chhindwara", "Ujjain", "Raisen", "Gwalior", "Katni", "Rewa", "Singrauli", "Sidhi", "Shahdol", "Mandla", "Betul", "Ratlam", "Sagar", "Shajapur", "Hoshangabad", "Narsinghpur", "East Nimar", "Neemuch", "Morena", "Balaghat", "Chhatarpur", "Khargone", "Ashoknagar", "Khandwa", "Mandsaur", "Seoni", "Umaria", "Vidisha", "Tikamgarh", "Burhanpur", "Harda", "Shivpuri", "Barwani", "Guna", "Rajgarh", "Sehore", "Alirajpur", "Bhind", "Panna"]
    },
    {
      "name": "Maharashtra",
      "cities": ["Pune", "Thane", "Mumbai", "Nashik", "Nagpur", "Aurangabad", "Kolhapur", "Palghar", "Raigad", "Sangli", "Ahmednagar", "Satara", "Amravati", "Solapur", "Chandrapur", "Jalgaon", "Jalna", "Latur", "Hingoli", "Nanded", "Akola", "Beed", "Osmanabad", "Bhandara", "Gondia", "Ratnagiri", "Sindhudurg", "Dhule", "Gadchiroli", "Nandurbar", "Parbhani", "Unknown", "Wardha", "Buldhana"]
    },
    {
      "name": "Manipur",
      "cities": ["Imphal West", "Imphal East", "Churachandpur"]
    },
    {
      "name": "Meghalaya",
      "cities": ["East Khasi Hills", "East Garo Hills", "Ri Bhoi"]
    },
    {
      "name": "Mizoram",
      "cities": ["Aizawl", "Kolasib"]
    },
    {
      "name": "Nagaland",
      "cities": ["Dimapur", "Kohima"]
    },
    {
      "name": "Odisha",
      "cities": ["Khordha", "Cuttack", "Sundargarh", "Ganjam", "Baleswar", "Jajpur", "Baleshwar", "Sambalpur", "Koraput", "Mayurbhanj", "Jharsuguda", "Kendujhar", "Angul", "Bargarh", "Rayagada", "Puri", "Bhadrak", "Jagatsinghapur", "Nabarangpur", "Boudh", "Dhenkanal", "Nayagarh", "Gajapati", "Deogarh", "Jagatsinghpur", "Balangir", "Balasore", "Kalahandi", "Kendrapara", "Malkangiri"]
    },
    {
      "name": "Puducherry",
      "cities": ["Puducherry", "Pondicherry", "Karaikal", "Mahe"]
    },
    {
      "name": "Punjab",
      "cities": ["Amritsar", "Barnala", "Bathinda", "Faridkot", "Fatehgarh Sahib", "Fazilka", "Ferozepur", "Gurdaspur", "Hoshiarpur", "Jalandhar", "Kapurthala", "Ludhiana", "Mansa", "Moga", "Pathankot", "Patiala", "Rupnagar", "SAS Nagar", "Sangrur", "Shahid Bhagat Singh Nagar", "Sri Muktsar Sahib", "Tarn Taran"]
    },
    {
      "name": "Rajasthan",
      "cities": ["Ajmer", "Alwar", "Banswara", "Baran", "Barmer", "Bharatpur", "Bhilwara", "Bikaner", "Bundi", "Chittorgarh", "Churu", "Dausa", "Dholpur", "Dungarpur", "Hanumangarh", "Jaipur", "Jaisalmer", "Jalore", "Jhalawar", "Jhunjhunu", "Jodhpur", "Karauli", "Kota", "Nagaur", "Pali", "Pratapgarh", "Rajsamand", "Sawai Madhopur", "Sikar", "Sirohi", "Sri Ganganagar", "Tonk", "Udaipur"]
    },
    {
      "name": "Sikkim",
      "cities": ["East", "Gangtok", "North", "South", "West"]
    },
    {
      "name": "Tamil Nadu",
      "cities": ["Ariyalur", "Chengalpattu", "Chennai", "Coimbatore", "Cuddalore", "Dharmapuri", "Dindigul", "Erode", "Kallakurichi", "Kancheepuram", "Kanyakumari", "Karur", "Krishnagiri", "Madurai", "Mayiladuthurai", "Nagapattinam", "Namakkal", "Nilgiris", "Perambalur", "Pudukkottai", "Ramanathapuram", "Ranipet", "Salem", "Sivaganga", "Tenkasi", "Thanjavur", "Theni", "Thoothukudi", "Tiruchirappalli", "Tirunelveli", "Tirupathur", "Tiruppur", "Tiruvallur", "Tiruvannamalai", "Tiruvarur", "Vellore", "Viluppuram", "Virudhunagar"]
    },
    {
      "name": "Telangana",
      "cities": ["Adilabad", "Bhadradri Kothagudem", "Hyderabad", "Jagtial", "Jangaon", "Jayashankar Bhupalpally", "Jogulamba Gadwal", "Kamareddy", "Karimnagar", "Khammam", "Kumuram Bheem Asifabad", "Mahabubabad", "Mahabubnagar", "Mancherial", "Medak", "Medchal - Malkajgiri", "Nagarkurnool", "Nalgonda", "Nirmal", "Nizamabad", "Peddapalli", "Rajanna Sircilla", "Rangareddy", "Sangareddy", "Siddipet", "Suryapet", "Vikarabad", "Wanaparthy", "Warangal Rural", "Warangal Urban", "Yadadri Bhuvanagiri"]
    },
    {
      "name": "Tripura",
      "cities": ["Dhalai", "Gomati", "Khowai", "North Tripura", "Sepahijala", "South Tripura", "Unakoti", "West Tripura"]
    },
    {
      "name": "Uttar Pradesh",
      "cities": ["Agra", "Aligarh", "Ambedkar Nagar", "Amethi", "Amroha", "Auraiya", "Ayodhya", "Azamgarh", "Badaun", "Baghpat", "Bahraich", "Balrampur", "Banda", "Barabanki", "Bareilly", "Basti", "Bhadohi", "Bijnor", "Budaun", "Bulandshahar", "Chandauli", "Chitrakoot", "Deoria", "Etah", "Etawah", "Farrukhabad", "Fatehpur", "Firozabad", "Gautam Buddha Nagar", "Ghaziabad", "Ghazipur", "Gonda", "Gorakhpur", "Hamirpur", "Hapur", "Hardoi", "Hathras", "Jalaun", "Jaunpur", "Jhansi", "Kannauj", "Kanpur Dehat", "Kanpur Nagar", "Kasganj", "Kaushambi", "Kushinagar", "Lakhimpur Kheri", "Lalitpur", "Lucknow", "Maharajganj", "Mahoba", "Mainpuri", "Mathura", "Mau", "Meerut", "Mirzapur", "Moradabad", "Muzaffarnagar", "Nagarpur", "Nainital", "Nayagarh", "Pilibhit", "Pratapgarh", "Prayagraj", "Raebareli", "Rampur", "RaeBareli", "Rampur", "Saharanpur", "Sambhal", "Sant Kabir Nagar", "Sant Kabeer Nagar", "Shahjahanpur", "Shamli", "Shravasti", "Siddharthnagar", "Sitapur", "Sonbhadra", "Sultanpur", "Unnao", "Varanasi"]
    },
    {
      "name": "Uttarakhand",
      "cities": ["Almora", "Bageshwar", "Chamoli", "Champawat", "Dehradun", "Haridwar", "Nainital", "Pauri Garhwal", "Pithoragarh", "Rudraprayag", "Tehri Garhwal", "Udham Singh Nagar", "Uttarkashi"]
    },
    {
      "name": "West Bengal",
      "cities": ["Alipurduar", "Bankura", "Birbhum", "Cooch Behar", "Dakshin Dinajpur", "Darjeeling", "Hooghly", "Howrah", "Jalpaiguri", "Jhargram", "Kalimpong", "Kolkata", "Malda", "Murshidabad", "Nadia", "North 24 Parganas", "Paschim Bardhaman", "Paschim Medinipur", "Purba Bardhaman", "Purba Medinipur", "Purulia", "South 24 Parganas", "Uttar Dinajpur"]
    }
  ]
};


function populateStatesAndCities(statesData) {
  const stateList = document.getElementById('stateList');
  // stateList.innerHTML = '';

  statesData.forEach((state) => {
    const stateItem = document.createElement('li');

    const stateName = document.createElement('span');
    stateName.classList.add('state-name');
    stateName.textContent = state.name;

    const chevronIcon = document.createElement('img');
    chevronIcon.classList.add('toggle-icon');
    // Initial right chevron icon
    chevronIcon.src = 'assets/icons/expand_more.svg';
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
  chevronIcon.src = cityDropdown.style.display === 'flex' ? 'assets/icons/collapse_arrow.svg' : 'assets/icons/expand_more.svg'; // Change the icon based on dropdown display

  stateElement.classList.toggle('fw-bold');
}

function initialize() {
  populateStatesAndCities(stateCityData.states);
}

initialize();

// Scrolling Nature of States & UTs inside Geographic Turnover
const scrollableContent = document.getElementById('scrollableContent');
const fixedImage = document.getElementById('fixedImage');

scrollableContent.addEventListener('scroll', function (event) {
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


function toggleIcons(type) {
  // Reset all icons to inactive
  resetAllIcons();

  // Toggle the active icon based on the type
  const activeIcon = document.getElementById(`active${type.charAt(0).toUpperCase() + type.slice(1)}Icon`);
  activeIcon.style.display = 'block';

  const inactiveIcon = document.getElementById(`inactive${type.charAt(0).toUpperCase() + type.slice(1)}Icon`);
  inactiveIcon.style.display = 'none';
}

function resetAllIcons() {
  const iconTypes = ['Geo', 'Turnover', 'Sector', 'Activity'];

  for (const type of iconTypes) {
    const activeIcon = document.getElementById(`active${type}Icon`);
    const inactiveIcon = document.getElementById(`inactive${type}Icon`);

    activeIcon.style.display = 'none';
    inactiveIcon.style.display = 'block';
  }
}

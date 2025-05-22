const sidebar = document.querySelector(".sidebar");
const sidebarClose = document.querySelector("#sidebar-close");
const menu = document.querySelector(".menu-content");
const menuItems = document.querySelectorAll(".submenu-item");
const subMenuTitles = document.querySelectorAll(".submenu .menu-title");

sidebarClose.addEventListener("click", () => {
  sidebar.classList.toggle("close");

  const contentDiv = document.getElementById("dynamic-content");
  const isSidebarOpen = !sidebar.classList.contains("close");

  if (window.innerWidth < 768) {
    if (isSidebarOpen) {
      contentDiv.style.display = "none";
    } else {
      contentDiv.style.display = "block";
    }
  }
});


window.onload = function () {
  const isMobile = window.innerWidth < 768;
  if (isMobile) {
    sidebar.classList.toggle("close");
  }
  const contentDiv = document.getElementById("dynamic-content");
  contentDiv.scrollIntoView({ behavior: "smooth", block: "start" });
}

menuItems.forEach((item, index) => {
  item.addEventListener("click", () => {
    menu.classList.add("submenu-active");
    item.classList.add("show-submenu");
    menuItems.forEach((item2, index2) => {
      if (index !== index2) {
        item2.classList.remove("show-submenu");
      }
    });
  });
});

subMenuTitles.forEach((title) => {
  title.addEventListener("click", () => {
    menu.classList.remove("submenu-active");
  });
});

// Load content handler
function loadContent(text) {
  menu.classList.remove("submenu-active");
  const isMobile = window.innerWidth < 768;
  if (isMobile) {
    const dynamicContent = document.getElementById("dynamic-content");
    dynamicContent.style.display = "block";
    sidebar.classList.toggle("close");
  }

  switch (text) {
    case "COIN GUIDE":
      loadCoinGuide();
      break;
    case "COIN ANATOMY":
      loadCoinAnatomy();
      break;
    case "COIN GRADES":
      loadCoinGrades();
      break;
    case "COIN RARITY":
      loadCoinRarity();
      break;
    case "COIN MINTS":
      loadCoinMints();
      break;
    case "MINT MARKS":
      loadMintMarks();
      break;
    case "FAIRS AND EVENTS":
      loadFairAndEvents();
      break;
    case "NUMISMATICS SOCIETIES":
      loadNumismaticsSocieties();
      break;
    case "COMMEMORATIVE COINS":
      loadCommemorativeCoins();
      break;
    case "CC 5 PAISE":
      loadCC5Paise();
      break;
    case "CC 10 PAISE":
      loadCC10Paise();
      break;
    case "CC 20 PAISE":
      loadCC20Paise();
      break;
    case "CC 25 PAISE":
      loadCC25Paise();
      break;
    case "CC 50 PAISE":
      loadCC50Paise();
      break;
    case "CC 1 RUPEE":
      loadCC1Rupee();
      break;
    case "CC 2 RUPEES":
      loadCC2Rupees();
      break;
    case "CC 5 RUPEES":
      loadCC5Rupees();
      break;
    case "CC 10 RUPEES":
      loadCC10Rupees();
      break;
    case "CC RARE LIST":
      loadCCRareList();
      break;
    case "CC SCARCE LIST":
      loadCCScarceList();
      break;
    case "DEFINITIVE COINS":
      loadDefinitiveCoins();
      break;
    case "DC ONE PICE":
      loadDCOnePice();
      break;
    case "DC HALF ANNA":
      loadDCHalfAnna();
      break;
    case "DC ONE ANNA":
      loadDCOneAnna();
      break;
    case "DC TWO ANNA":
      loadDCTwoAnna();
      break;
    case "DC 1/4 RUPEE":
      loadDC1By4Rupee();
      break;
    case "DC 1/2 RUPEE":
      loadDC1By2Rupee();
      break;
    case "DC 1 NAYA PAISA":
      loadDC1NayaPaisa();
      break;
    case "DC 1 PAISA":
      loadDC1Paisa();
      break;
    case "DC 2 NAYE PAISE":
      loadDC2NayePaise();
      break;
    case "DC 2 PAISE":
      loadDC2Paisa();
      break;
    case "DC 3 PAISE":
      loadDC3Paisa();
      break;
    case "DC 5 NAYE PAISE":
      loadDC5NayePaise();
      break;
    case "DC 5 PAISE":
      loadDC5Paise();
      break;
    case "DC 10 NAYE PAISE":
      loadDC10NayePaise();
      break;
    case "DC 10 PAISE":
      loadDC10Paise();
      break;
    case "DC 20 PAISE":
      loadDC20Paise();
      break;
    case "DC 25 NAYE PAISE":
      loadDC25NayePaise();
      break;
    case "DC 25 PAISE":
      loadDC25Paise();
      break;
    case "DC 50 NAYE PAISE":
      loadDC50NayePaise();
      break;
    case "DC 50 PAISE":
      loadDC50Paise();
      break;
    case "DC 1 RUPEE":
      loadDC1Rupee();
      break;
    case "DC 2 RUPEES":
      loadDC2Rupees();
      break;
    case "DC 5 RUPEES":
      loadDC5Rupees();
      break;
    case "DC 10 RUPEES":
      loadDC10Rupees();
      break;
    case "DC 20 RUPEES":
      loadDC20Rupees();
      break;
    case "COIN ANALYSIS":
      loadCoinAnalysis();
      break;
    case "ANA COMMEMORATIVE COINS":
      loadAnaCommemorativeCoins();
      break;
    case "ANA DEFINITIVE COINS":
      loadAnaDefinitiveCoins();
      break;
    case "SETTINGS":
      loadSettings();
      break;
    case "BACKUP":
      loadBackup();
      break;
    case "RESTORE":
      loadRestore();
      break;
  }

  const contentDiv = document.getElementById("dynamic-content");
  contentDiv.scrollIntoView({ behavior: "smooth", block: "start" });
}


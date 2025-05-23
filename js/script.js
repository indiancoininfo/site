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
      menu.scrollTop = 0;
      contentDiv.style.display = "none";
    } else {
      contentDiv.style.display = "block";
    }
  } else {
    if (isSidebarOpen) {
      menu.scrollTop = 0;
    }
  }
});

window.onload = function () {
  const isMobile = window.innerWidth < 768;
  if (isMobile) {
    sidebar.classList.toggle("close");
  }

  handleHashNavigation();
};

window.addEventListener("hashchange", handleHashNavigation);
window.addEventListener("popstate", handleHashNavigation);

function handleHashNavigation() {
  const contentDiv = document.getElementById("dynamic-content");
  const isMobile = window.innerWidth < 768;

  if (isMobile) {
    sidebar.classList.add("close");
    menu.classList.remove("submenu-active");
    menuItems.forEach(item => item.classList.remove("show-submenu"));
    contentDiv.style.display = "block";
  }

  menu.scrollTop = 0;

  const hash = decodeURIComponent(window.location.hash.substring(1));
  if (hash) {
    loadContent(hash);
  } else {
    loadDefaultContent();
  }

  setTimeout(() => {
    window.scrollTo({ top: 0, behavior: "smooth" });
  }, 0);
}


function loadDefaultContent() {
  const template = document.getElementById("default-content-template");
  const contentDiv = document.getElementById("dynamic-content");
  contentDiv.innerHTML = template.innerHTML;
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
    sidebar.classList.add("close");
  }

  switch (text) {
    case "COIN_GUIDE":
      loadCoinGuide();
      break;
    case "COIN_ANATOMY":
      loadCoinAnatomy();
      break;
    case "COIN_GRADES":
      loadCoinGrades();
      break;
    case "COIN_RARITY":
      loadCoinRarity();
      break;
    case "COIN_MINTS":
      loadCoinMints();
      break;
    case "MINT_MARKS":
      loadMintMarks();
      break;
    case "FAIRS_AND_EVENTS":
      loadFairAndEvents();
      break;
    case "NUMISMATICS_SOCIETIES":
      loadNumismaticsSocieties();
      break;
    case "COMMEMORATIVE_COINS":
      loadCommemorativeCoins();
      break;
    case "CC_5_PAISE":
      loadCC5Paise();
      break;
    case "CC_10_PAISE":
      loadCC10Paise();
      break;
    case "CC_20_PAISE":
      loadCC20Paise();
      break;
    case "CC_25_PAISE":
      loadCC25Paise();
      break;
    case "CC_50_PAISE":
      loadCC50Paise();
      break;
    case "CC_1_RUPEE":
      loadCC1Rupee();
      break;
    case "CC_2_RUPEES":
      loadCC2Rupees();
      break;
    case "CC_5_RUPEES":
      loadCC5Rupees();
      break;
    case "CC_10_RUPEES":
      loadCC10Rupees();
      break;
    case "CC_RARE_LIST":
      loadCCRareList();
      break;
    case "CC_SCARCE_LIST":
      loadCCScarceList();
      break;
    case "DEFINITIVE_COINS":
      loadDefinitiveCoins();
      break;
    case "DC_ONE_PICE":
      loadDCOnePice();
      break;
    case "DC_HALF_ANNA":
      loadDCHalfAnna();
      break;
    case "DC_ONE_ANNA":
      loadDCOneAnna();
      break;
    case "DC_TWO_ANNA":
      loadDCTwoAnna();
      break;
    case "DC_1_4_RUPEE":
      loadDC1By4Rupee();
      break;
    case "DC_1_2_RUPEE":
      loadDC1By2Rupee();
      break;
    case "DC_1_NAYA_PAISA":
      loadDC1NayaPaisa();
      break;
    case "DC_1_PAISA":
      loadDC1Paisa();
      break;
    case "DC_2_NAYE_PAISE":
      loadDC2NayePaise();
      break;
    case "DC_2_PAISE":
      loadDC2Paisa();
      break;
    case "DC_3_PAISE":
      loadDC3Paisa();
      break;
    case "DC_5_NAYE_PAISE":
      loadDC5NayePaise();
      break;
    case "DC_5_PAISE":
      loadDC5Paise();
      break;
    case "DC_10_NAYE_PAISE":
      loadDC10NayePaise();
      break;
    case "DC_10_PAISE":
      loadDC10Paise();
      break;
    case "DC_20_PAISE":
      loadDC20Paise();
      break;
    case "DC_25_NAYE_PAISE":
      loadDC25NayePaise();
      break;
    case "DC_25_PAISE":
      loadDC25Paise();
      break;
    case "DC_50_NAYE_PAISE":
      loadDC50NayePaise();
      break;
    case "DC_50_PAISE":
      loadDC50Paise();
      break;
    case "DC_1_RUPEE":
      loadDC1Rupee();
      break;
    case "DC_2_RUPEES":
      loadDC2Rupees();
      break;
    case "DC_5_RUPEES":
      loadDC5Rupees();
      break;
    case "DC_10_RUPEES":
      loadDC10Rupees();
      break;
    case "DC_20_RUPEES":
      loadDC20Rupees();
      break;
    case "COIN_ANALYSIS":
      loadCoinAnalysis();
      break;
    case "ANA_COMMEMORATIVE_COINS":
      loadAnaCommemorativeCoins();
      break;
    case "ANA_DEFINITIVE_COINS":
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
    default:
      loadDefaultContent();
      break;
  }

  const contentDiv = document.getElementById("dynamic-content");
  contentDiv.scrollIntoView({ behavior: "smooth", block: "start" });
}

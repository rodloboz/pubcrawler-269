import 'mapbox-gl/dist/mapbox-gl.css';
import 'bootstrap';

import ReallySmoothScroll from 'really-smooth-scroll';
import { activateNeonBannerText, smoothScroll } from '../components/home';
import { toggleNavbarBackground } from '../components/navbar';
import { initMapbox } from '../plugins/mapbox';
import { initAutocomplete } from '../plugins/autocomplete';

toggleNavbarBackground();
initMapbox();
initAutocomplete();

const homePage = document.querySelector('.pages.home');
if (homePage) {
  ReallySmoothScroll.shim();
  activateNeonBannerText();
  smoothScroll();
}

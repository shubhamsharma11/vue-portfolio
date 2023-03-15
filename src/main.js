import Vue from 'vue'
import App from './App.vue'
import vuetify from './plugins/vuetify'
import router from "./router";

/* import the fontawesome core */
import { library } from '@fortawesome/fontawesome-svg-core'

/* import font awesome icon component */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

/* import specific icons */
import { faUserSecret, faHeart, faCircleInfo, faBasketball, faTriangleExclamation, faCompactDisc, faBell, faCog, faCompass, faSpinner, faCoffee } from '@fortawesome/free-solid-svg-icons'
import { faTwitter, faAndroid } from '@fortawesome/free-brands-svg-icons'

/**
 * Importing iconify icon
 */
import { Icon } from '@iconify/vue2';

Vue.component('font-icon', Icon);

/* add icons to the library */
library.add(faUserSecret, faTwitter, faAndroid, faHeart, faCircleInfo, faBasketball, faTriangleExclamation, faCompactDisc, faBell, faCog, faCompass, faSpinner, faCoffee)

/* add font awesome icon component */
Vue.component('font-awesome-icon', FontAwesomeIcon)


Vue.config.productionTip = false

new Vue({
  vuetify,
  router,
  render: h => h(App)
}).$mount('#app')

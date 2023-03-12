import Vue from 'vue'
import Router from "vue-router";

Vue.use(Router);

export default new Router({
  mode: 'history',
  routes: [
    // Home
    {
      name: 'Home',
      path: '/',
      component: () => import('@/pages/HomePage'),
    },
    // Education
    {
      name: 'Education',
      path: '/education',
      component: () => import('@/pages/EducationPage'),
    },
    // Experience
    {
      name: 'Experience',
      path: '/experience',
      component: () => import('@/pages/ExperiencePage'),
    },
    // Project
    {
      name: 'Project',
      path: '/projects',
      component: () => import('@/pages/ProjectPage'),
    },
    // Contact
    {
      name: 'Contact',
      path: '/contact',
      component: () => import('@/pages/ContactPage'),
    },
  ],
})

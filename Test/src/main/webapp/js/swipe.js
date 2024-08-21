/**
 * 
 */
// 스와이프 구동 
//const swiper = new Swiper('.swiper', {
//  // Optional parameters
//  direction: 'horizontal',
//  loop: true,
//
//  // If we need pagination
//  pagination: {
//    el: '.swiper-pagination',
//  },
//
//  // Navigation arrows
//  navigation: {
//    nextEl: '.swiper-button-next',
//    prevEl: '.swiper-button-prev',
//  },
//
//  // And if we need scrollbar
//  scrollbar: {
//    el: '.swiper-scrollbar',
//  },
//});

 new Swiper('.swiper', {
     autoplay: {
       delay: 5000
     },
     loop: true,
     slidesPerView: 5,
     spaceBetween: 10,
     centeredSlides: true,
     pagination: {
       el: '.swiper-pagination',
       clickable: true
     },
     navigation: {
       prevEl: '.swiper-button-prev',
       nextEl: '.swiper-button-next'
     }
   })
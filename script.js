// Manejo de contenido basado en data-attributes
const targets = document.querySelectorAll('[data-target]');
const content = document.querySelectorAll('[data-content]');

targets.forEach(target => {
    target.addEventListener('click', () => {
        content.forEach(c => {
            c.classList.remove('active');
        });
        const t = document.querySelector(target.dataset.target);
        t.classList.add('active');
    });
});

//mostrar y ocultar galeria
function showGallery(galleryName) {
    const dueñosGallery = document.querySelector('.gallery.Dueños');
    const monitoreoGallery = document.querySelector('.gallery.Monitoreo');

    if (galleryName === 'Dueños') {
        dueñosGallery.style.display = 'block';
        monitoreoGallery.style.display = 'none';
    } else if (galleryName === 'Monitoreo') {
        dueñosGallery.style.display = 'none';
        monitoreoGallery.style.display = 'block';
    }
}

// Configuración del carrusel
const wrapper = document.querySelector(".wrapper");
const carousel = document.querySelector(".carousel");
const firstCardWidth = carousel.querySelector(".card").offsetWidth;
const arrowBtns = document.querySelectorAll(".wrapper i");
const carouselChildrens = [...carousel.children];

let isDragging = false, isAutoPlay = true, startX, startScrollLeft, timeoutId;

// Obtener el número de tarjetas que caben en el carrusel a la vez
let cardPerView = Math.round(carousel.offsetWidth / firstCardWidth);

// Insertar copias de las últimas tarjetas al inicio del carrusel para desplazamiento infinito
carouselChildrens.slice(-cardPerView).reverse().forEach(card => {
    carousel.insertAdjacentHTML("afterbegin", card.outerHTML);
});

// Insertar copias de las primeras tarjetas al final del carrusel para desplazamiento infinito
carouselChildrens.slice(0, cardPerView).forEach(card => {
    carousel.insertAdjacentHTML("beforeend", card.outerHTML);
});

// Desplazar el carrusel a la posición adecuada para ocultar las primeras tarjetas duplicadas 
carousel.classList.add("no-transition");
carousel.scrollLeft = carousel.offsetWidth;
carousel.classList.remove("no-transition");

// Añadir event listeners para los botones de flecha para desplazar el carrusel a la izquierda y derecha
arrowBtns.forEach(btn => {
    btn.addEventListener("click", () => {
        carousel.scrollLeft += btn.id === "left" ? -firstCardWidth : firstCardWidth;
    });
});

const dragStart = (e) => {
    isDragging = true;
    carousel.classList.add("dragging");
    // Registrar la posición inicial del cursor y el scroll del carrusel
    startX = e.pageX;
    startScrollLeft = carousel.scrollLeft;
}

const dragging = (e) => {
    if(!isDragging) return; // si isDragging es falso, retornar
    // Actualizar la posición del scroll del carrusel basado en el movimiento del cursor
    carousel.scrollLeft = startScrollLeft - (e.pageX - startX);
}

const dragStop = () => {
    isDragging = false;
    carousel.classList.remove("dragging");
}

const infiniteScroll = () => {
    // Si el carrusel está al inicio, desplazarse al final
    if(carousel.scrollLeft === 0) {
        carousel.classList.add("no-transition");
        carousel.scrollLeft = carousel.scrollWidth - (2 * carousel.offsetWidth);
        carousel.classList.remove("no-transition");
    }
    // Si el carrusel está al final, desplazarse al inicio
    else if(Math.ceil(carousel.scrollLeft) === carousel.scrollWidth - carousel.offsetWidth) {
        carousel.classList.add("no-transition");
        carousel.scrollLeft = carousel.offsetWidth;
        carousel.classList.remove("no-transition");
    }

    // Limpiar timeout existente y comenzar autoplay si el mouse no está sobre el carrusel
    clearTimeout(timeoutId);
    if(!wrapper.matches(":hover")) autoPlay();
}

const autoPlay = () => {
    if(window.innerWidth < 800 || !isAutoPlay) return; // Retornar si la ventana es menor a 800 o isAutoPlay es falso
    // Autoplay del carrusel cada 2500 ms
    timeoutId = setTimeout(() => carousel.scrollLeft += firstCardWidth, 2500);
}
autoPlay();

carousel.addEventListener("mousedown", dragStart);
carousel.addEventListener("mousemove", dragging);
document.addEventListener("mouseup", dragStop);
carousel.addEventListener("scroll", infiniteScroll);
wrapper.addEventListener("mouseenter", () => clearTimeout(timeoutId));
wrapper.addEventListener("mouseleave", autoPlay);

// Mostrar el botón cuando se desplaza hacia abajo 100px desde la parte superior del documento
window.onscroll = function() {
    var backToTopButton = document.getElementById("backToTop");
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        backToTopButton.style.display = "block";
    } else {
        backToTopButton.style.display = "none";
    }
};

// Cuando el usuario haga clic en el botón, se desplazará hacia la parte superior del documento
function scrollToTop() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
}

// Galería de imágenes
let slideIndexDueños = 0;
let slideIndexMonitoreo = 0;

function showSlides(type) {
    const slides = document.querySelectorAll(`.carousel-container.${type} .carousel-item`);
    const index = type === 'Dueños' ? slideIndexDueños : slideIndexMonitoreo;
    slides.forEach((slide, i) => {
        slide.style.transform = `translateX(${-index * 100}%)`;
    });
}

function nextSlide(type) {
    const slides = document.querySelectorAll(`.carousel-container.${type} .carousel-item`);
    if (type === 'Dueños') {
        slideIndexDueños = (slideIndexDueños + 1) % slides.length;
    } else {
        slideIndexMonitoreo = (slideIndexMonitoreo + 1) % slides.length;
    }
    showSlides(type);
}

function prevSlide(type) {
    const slides = document.querySelectorAll(`.carousel-container.${type} .carousel-item`);
    if (type === 'Dueños') {
        slideIndexDueños = (slideIndexDueños - 1 + slides.length) % slides.length;
    } else {
        slideIndexMonitoreo = (slideIndexMonitoreo - 1 + slides.length) % slides.length;
    }
    showSlides(type);
}



showGallery('Dueños');

setInterval(() => nextSlide('Dueños'), 5000);
setInterval(() => nextSlide('Monitoreo'), 5000);



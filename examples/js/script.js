


          /*worksdata : [],
          singleworkdata : [],

          worksname : "",
          workscategory : "",
          workscover : "",
          worksurl : "",
          showDetails : false
      },

      created : function() {
          this.fetchWorkData(null);
      },

      methods : {
          fetchMore(e) {
              this.fetchWorkData(e.currentTarget.dataset.work); // this will be a number (id)
          },

          loadWork(e) {
              // stub
              e.preventDefault();

              dataKey = e.currentTarget.getAttribute('href');

              currentData = this.worksdata.filter(work => work.works_url === dataKey);

              this.worksname = currentData[0].works_name;
              this.workscategory = currentData[0].works_category;
              this.workscover = currentData[0].works_cover;
              this.videosource = dataKey;

              this.showDetails = true;

          },

          fetchWorkData(work) {
              url = work ? `./includes/index.php?work=${work}` : './includes/index.php';

              fetch(url) // pass in the one or many query
              .then(res => res.json())
              .then(data => {
                  if (work) {
                      // getting one movie, so use the single array
                      console.log(data);
                      this.singleworkdata = data;
                  } else {
                      // push all the video (or portfolio content) into the video array
                      console.log(data);
                      this.worksdata = data;
                  }
              })
              .catch(function(error) {
                  console.log(error);
              });
          }
      }
  });*/


//menu

const elem = document.querySelector('#nav-bg'),
      toggleBtn = document.querySelector('#toggle-btn'),
      elemH = elem.getBoundingClientRect().height,
      elemW = elem.getBoundingClientRect().width;

let open = false;
let scale, offsetX, offsetY;

const calculateValues = (() => {
  const w = window.innerWidth;
  const h = window.innerHeight;
  const offsetValue = Number(getComputedStyle(elem).getPropertyValue('--offset-value'));

  offsetX = (w/2) - (elemW/2) - offsetValue;
  offsetY = (h/2) - (elemH/2) - offsetValue;

  const radius = Math.sqrt((Math.pow(h, 2))+(Math.pow(w, 2)));
  scale = radius/(elemW/4)/2 + .1; // Add '.1' to compensate for Safari sub pixel blur issue
  return scale;
})


const openMenu = () => {
  elem.style.setProperty("--translate-x", `${offsetX}px`);
  elem.style.setProperty("--translate-y", `-${offsetY}px`);
  elem.style.setProperty("--scale", scale);
}
const closeMenu = () => {
  elem.style.setProperty("--scale", 1);
  elem.style.setProperty("--translate-x", 0);
  elem.style.setProperty("--translate-y", 0);
}
const animateMenu = () => {
  open ? openMenu() : closeMenu();
};

const toggleMenu = () => {
  open = !open;
  animateMenu();
  toggleBtn.classList.toggle('shown');
}

const resizeHandler = () => { 
  window.requestAnimationFrame(() => {
    calculateValues();
    animateMenu();
  });
}

calculateValues();

toggleBtn.addEventListener('click', toggleMenu, false);
window.addEventListener("resize", resizeHandler, false);



//light

let light = document.querySelector('#light');

function mouseOver() {
  light.src = "./images/infographic/light.png";
}

function mouseOut() {
  light.src = "./images/infographic/light_bw.png";
}

function clickOn() {
  light.src = "./images/infographic/light.png";
}

light.addEventListener('mouseover', mouseOver, false);
light.addEventListener('mouseout', mouseOut, false);
light.addEventListener('click', clickOn, false);




//logo disappears when scroll down - doesnt work for homepage with parallax (?)

var target = document.querySelector('#imgLogo');
window.addEventListener('scroll', function() {
if(window.scrollY > 250) {
target.style.display = "none";
}
if(window.scrollY < 250) {
target.style.display = "block";
}
});
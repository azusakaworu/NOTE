(()=> {


    //define a global component
    Vue.component('poster',{ 
           props:['video'],
           template:`  <li>
           <button  class="more-details">More Details...</button>
           <a :href="video.vid_path">
               <img :src="'images/' + video.vid_thumb" alt="">
           </a>
           <p>put genre data here</p>  <!-- add a field to the DB (or subquery another table) and plug data in -->
       </li>`
    });
    const vm = new Vue({
        el: '#app',

        data: {
            mainmessage : "welcome to my video app!",
            videodata : [],
            singlemoviedata : [],

            videotitle : "",
            videosource : "",
            videodescription : "",
            showDetails : false
        },

        created : function() {
            this.fetchMovieData(null);
        },

        methods : {
            fetchMore(e) {
                this.fetchMovieData(e.currentTarget.dataset.movie); // this will be a number (id)
            },

            loadMovie(e) {
                // stub
                e.preventDefault();

                dataKey = e.currentTarget.getAttribute('href');

                currentData = this.videodata.filter(video => video.vid_path === dataKey);

                this.videotitle = currentData[0].vid_name;
                this.videodescription = currentData[0].vid_desc;
                this.videosource = dataKey;

                this.showDetails = true;

                setTimeout(function() { window.scrollTo(0, 1200); }, 500);
            },

            scrollBackUp() {
                window.scrollTo(0, 0);
                this.showDetails = false;
                this.videsource = "";
            },

            fetchMovieData(movie) {
                url = movie ? `./includes/index.php?movie=${movie}` : './includes/index.php';

                fetch(url) // pass in the one or many query
                .then(res => res.json())
                .then(data => {
                    if (movie) {
                        // getting one movie, so use the single array
                        console.log(data);
                        this.singlemoviedata = data;
                    } else {
                        // push all the video (or portfolio content) into the video array
                        console.log(data);
                        this.videodata = data;
                    }
                })
                .catch(function(error) {
                    console.log(error);
                });
            }
        }
    });
})();
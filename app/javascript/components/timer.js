import { comment } from "postcss-selector-parser";

const timerCountdown = () => {
  const second = 1000,
        minute = second * 60,
        hour = minute * 60,
        day = hour * 24;
  const deadline = document.getElementById("countdown");
  let auction_deadline = deadline.dataset["deadline"],
      countDown = new Date(auction_deadline).getTime(),
      x = setInterval(function() {    

        let now = new Date().getTime(),
            distance = countDown - now;

        // document.getElementById("days").innerText = Math.floor(distance / (day)),
        //   document.getElementById("hours").innerText = Math.floor((distance % (day)) / (hour)),
        //   document.getElementById("minutes").innerText = Math.floor((distance % (hour)) / (minute)),
        //   document.getElementById("seconds").innerText = Math.floor((distance % (minute)) / second);

        //do something later when deadline is reached
        if (distance < 0) {
          let headline = document.getElementById("headline"),
              headlineComment = document.getElementById("headline-comment"),
              countdown = document.getElementById("countdown"),
              content = document.getElementById("content");


          headline.innerText = "The auction is over";
          headlineComment.innerText = "Thanks for bidding!";
          countdown.style.display = "none";

          clearInterval(x);
        } else {
          document.getElementById("days").innerText = Math.floor(distance / (day)),
          document.getElementById("hours").innerText = Math.floor((distance % (day)) / (hour)),
          document.getElementById("minutes").innerText = Math.floor((distance % (hour)) / (minute)),
          document.getElementById("seconds").innerText = Math.floor((distance % (minute)) / second);
        }
        //seconds
      }, 0)
  }

export { timerCountdown };
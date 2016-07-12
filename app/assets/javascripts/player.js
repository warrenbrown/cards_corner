$(document).ready(function(){
window.addEventListener('load', function() {

  // Video container
  video = document.getElementById('video');
  pauseScreen = document.getElementById('screen');
  screenButton = document.getElementsByClassName('fa fa-play-circle-o fa-4x')[0];

  // Progress Bar container
  pbarContainer = document.getElementById('pbar-container');
  pbar = document.getElementById('pbar');

  // Buttons container
  playButton = document.getElementsByClassName('fa fa-play-circle')[0];
  timeField = document.getElementById('time-field');
  soundButton = document.getElementsByClassName('fa fa-volume-up')[0];
  sbarContainer = document.getElementById('sbar-container');
  sbar = document.getElementById('sbar');
  fullScreenButton = document.getElementsByClassName('fa fa-expand')[0];

  video.load();
  video.addEventListener('canplaythrough', function() {

    playButton.addEventListener('click', playOrPause, false);
    pbarContainer.addEventListener('click', skip, false);
    updatePlayer();
    soundButton.addEventListener('click', muteOrUnmute, false);
    sbarContainer.addEventListener('click', changeVolume, false);
    fullScreenButton.addEventListener('click', fullScreen, false);
    screenButton.addEventListener('click', playOrPause, false);

  }, false);

}, false);
});
function playOrPause() {
  if (video.paused) {
      video.play();
      playButton.className = "fa fa-pause-circle";
      update = setInterval(updatePlayer, 30);

      pauseScreen.style.display = 'none';
  } else {
      video.pause();
      playButton.className = "fa fa-play-circle";
      window.clearInterval(update);

      pauseScreen.style.display = 'block';
      screenButton.className = "fa fa-play-circle fa-4x";
  }
}

function updatePlayer() {
  var percentage = (video.currentTime/video.duration)*100;
  pbar.style.width = percentage + '%';
  timeField.innerHTML = getFormattedTime();
  if (video.ended) {
    window.clearInterval(update);
    playButton.className = "fa fa-repeat";

    pauseScreen.style.display = 'block';
    screenButton.className = "fa fa-repeat fa-4x";
  }
}

function skip(ev) {
  var mouseX = ev.pageX - 929;
  var barWidth = window.getComputedStyle(pbarContainer).getPropertyValue('width');
  barWidth = parseFloat(barWidth.substr(0, barWidth.length - 2));

  video.currentTime = (mouseX/barWidth)*video.duration;
  updatePlayer();

}

function getFormattedTime() {
  var seconds = Math.round(video.currentTime);
  var mins = Math.floor(seconds/60);
  if (mins > 0 ) seconds -= mins*60;
  if (seconds.toString().length === 1) seconds = '0' + seconds;

  var totalSeconds = Math.round(video.duration);
  var totalMins = Math.floor(totalSeconds/60);
  if (totalMins > 0 ) totalSeconds -= mins*60;
  if (totalSeconds.toString().length === 1) totalSeconds = '0' + totalSeconds;

  return mins + ':' +   seconds + ' / ' + totalMins + ':' + totalSeconds;
}

function muteOrUnmute() {
  if (!video.muted) {
      video.muted = true;
      soundButton.className = "fa fa-volume-off";
      sbar.style.display = 'none';
  } else {
    video.muted = false;
    soundButton.className = "fa fa-volume-up";
    sbar.style.display = 'block';
  }
}

function changeVolume(ev) {
  var mouseX = ev.pageX - 1061;
  var width = window.getComputedStyle(sbarContainer).getPropertyValue('width');
  width = parseFloat(width.substr(0, width.length - 2));

  video.volume = (mouseX/width);
  sbar.style.width = (mouseX/width)*100 + '%';
  video.muted = false;
  soundButton.className = "fa fa-volume-up";
  sbar.style.display = 'block';
}

function fullScreen() {
  if (video.requestFullScreen) {
    video.requestFullScreen();
  } else if (video.webkitRequestFullScreen) {
    video.webkitRequestFullScreen();
  } else if (video.mozRequestFullScreen) {
    video.mozRequestFullScreen();
  } else if (video.msRequestFullScreen) {
    video.msRequestFullScreen();
  }
}

node ("master") {
    stage ("docker build") {
        sh 'ls; whoami; pwd'
        def mpd_image = docker.build("philipwold/mpd:${env.BUILD_ID}")
        def mpd_image_latest = docker.build("philipwold/mpd:latest")
        mpd_image.push()
        mpd_image_latest.push()
    }
}
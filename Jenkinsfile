String repo = "mpd"

node ("master") {
    stage ("checkout scm") {
        checkout scm
    }
    
    stage ("docker build") {
        def image = docker.build("philipwold/${repo}")
        image.push()
    }
}
node {
    
    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
        echo 'Cloning branch..'
        git branch: "master", url: "https://github.com/csrishabh/JenkinsTest.git"
    }

    stage('Build JAR') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
		echo 'Build Jar file..'
        gradle bootjar
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */
         echo 'Run Unit tests'
       
    }

    stage('Deploy Jar') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
		 echo 'Deploy Jar file..'
        }
    }

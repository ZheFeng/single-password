

module.exports = (grunt) ->

  # Load grunt tasks automatically
  require("load-grunt-tasks") grunt

  # Time how long tasks take. Can help when optimizing build times
  require("time-grunt") grunt


  config = {}

  config.nodewebkit =
    options:
        build_dir: 'webkitbuilds'
        mac: true
        win: true
        linux32: false
        linux64: false
    src: ['./**/*']

  config.clean =
    compile: [
      'webkitbuilds/releases'
    ]

  grunt.initConfig config



  grunt.registerTask('build', ["clean", "nodewebkit"]);


  grunt.registerTask('default', ["build"]);

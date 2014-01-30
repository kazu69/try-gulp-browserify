gulp = require 'gulp'
browserify = require 'gulp-browserify'

gulp.task 'scripts', ->
  gulp.src('./src/javascripts/index.js')
    .pipe(browserify())
    .pipe(gulp.dest('./'))

gulp.task 'default', ->
  gulp.run 'scripts'

  gulp.watch 'src/javascripts/**/*.js', (event) ->
    gulp.run 'scripts'

var gulp = require('gulp');
var sass = require('gulp-sass');
var autoprefixer = require('gulp-autoprefixer');
var eslint = require('gulp-eslint');

gulp.task('win', function() {
  console.log('winning');
});

gulp.task('sass', function() {
  gulp.src('./style.scss')    // original source code
    .pipe( sass() )           // compile it with sass
    .pipe( autoprefixer() )
    .pipe( gulp.dest('css') ) // destination folder
});

gulp.task('watch', function() {
  gulp.watch('style.scss', ['sass']);
});

gulp.task('lint', function() {
  gulp.src('./app.js')
    .pipe(eslint())
    .pipe(eslint.format())
    .pipe(eslint.failAfterError())
});

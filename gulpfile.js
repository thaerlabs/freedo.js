var gulp = require('gulp'),
	plumber = require('gulp-plumber'),
	sass = require('gulp-sass'),
    freemarker = require('gulp-freemarker'),
    prettify = require('gulp-prettify'),
    server = require('gulp-server-livereload'),
    livereload = require('gulp-livereload');

var config = {
	scss: {
		src: './src/scss/*.scss',
		dest: 'dist/css'
	},
    freemarker : {
        src: './src/views/data/*.json',
        dest: './dist',
        options: {
            viewRoot: __dirname + "/src/views/templates",
            options: {
                tagSyntax: 'autoDetect'
            }
        }
    }
}

gulp.task('sass', function () {
    gulp.src(config.scss.src)
	    .pipe(plumber())
        .pipe(sass())
        .pipe(gulp.dest(config.scss.dest))
        .pipe(livereload());
});

gulp.task('freemarker', function(){
    gulp.src(config.freemarker.src)
	    .pipe(plumber())
        .pipe(freemarker(config.freemarker.options))
        .pipe(prettify({indent_char: ' ', indent_size: 4})) //Fremarker's output sucks
        .pipe(gulp.dest(config.freemarker.dest))
        .pipe(livereload());
});

gulp.task('watch', function() {

    livereload.listen({start: true});

	gulp.watch('./src/scss/*', ['sass']);
	gulp.watch('src/views/**/*', ['freemarker']);
});

gulp.task('webserver', function() {
    gulp.src('./dist')
        .pipe(server({
            livereload: false,
            directoryListing: false,
            open: true
        }));
});

gulp.task('default', [
		'freemarker',
		'sass',
        'webserver',
		'watch']
);
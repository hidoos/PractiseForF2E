/*global module:false*/
module.exports = function(grunt) {
  require('time-grunt')(grunt); 
  require('load-grunt-tasks')(grunt);    
  // Project configuration.
  grunt.initConfig({
    // Metadata.
    pkg: grunt.file.readJSON('package.json'),
    banner: '/*! <%= pkg.title || pkg.name %> - v<%= pkg.version %> - ' +
      '<%= grunt.template.today("yyyy-mm-dd") %>\n' +
      '<%= pkg.homepage ? "* " + pkg.homepage + "\\n" : "" %>' +
      '* Copyright (c) <%= grunt.template.today("yyyy") %> <%= pkg.author.name %>;' +
      ' Licensed <%= _.pluck(pkg.licenses, "type").join(", ") %> */\n',
    // Task configuration.
    autoprefixer:{
        options:{
            browsers:['> 1%', 'last 2 versions', 'ff 17', 'opera 12.1']
        },
        multiple_files: {
            expand: true,
            flatten: true,
            src: 'src/*.css', // -> src/css/file1.css, src/css/file2.css
            dest: 'dest/css/' // -> dest/css/file1.css, dest/css/file2.css
       }
    },
    jshint:{
        options:{},
        check:{
            src:['src/grunttest.js']
        }
    },
    watch:{
        options:{
            livereload:true
        },
        js:{
            files:['src/a.js','src/b.js'],
            tasks:['jshint','uglify'],
            options:{
                spawn:false
            }
        },
        build:{
            tasks:['connect:build'],
            options:{
                spawn:false
            }
        }
    },
    connect:{
        server: {
          options: {
            port: 9001,
            base: 'src/',
            keepalive:true
          }
        },
        build:{
            options:{
                port:9000,
                base:'dest/',
                keepalive:true
            }
        }
    },
    clean:{
        build:{
            src:'dist/index.html'
        }
    },
    copy:{
        build:{
            src:'app/index.html',
            dest:'dist/index.html'
        }
    },
    useminPrepare:{
        html:'app/index.html',
        options:{
            root:'app',
            dest:'dist'
        }
    },
    usemin:{
        html:['dist/{,/*}*.html'],
        options:{
            dirs:['dist'],
        }
    }

  });

  // Default task.
  grunt.registerTask('default', ['jshint','uglify']);
  grunt.registerTask('server', ['connect','watch','uglify']);
  grunt.registerTask('test',
      [
        'clean:build',
        'copy:build',
        'useminPrepare',
        'concat',
        'uglify',
        'usemin'
      ]
  );
    
  
};


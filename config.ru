require File.expand_path(File.join('config', 'app'))

map ('/') {
    run ApplicationController
}
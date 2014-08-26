
# external-file-open.coffee

fs = require 'fs'
$  = require('atom').$
{Subscriber} = require 'emissary'

class ExtOpen 
  Subscriber.includeInto @
  
  activate: (state) ->
    console.log 'external-file-open activated'

    # atom.workspaceView.command "application:open-file", (event) => 
      # debugger;
      # event.stopPropagation();
      # event.preventDefault();
      # false
      
    # atom.workspaceView.command "window:open-path", (event) => 
    #   debugger;
    #   event.stopPropagation();
    #   event.preventDefault();
    #   false
    
    console.log 'jQuery', $
    @subscribe $(window), 'window:open-path', (event) -> 
      debugger;
      event.stopPropagation();
      event.preventDefault();
      false
      
    #extFile = "C:\\apps\\atom.txt"
    #symLink = atom.project.path + 
    # console.log fs.existsSync newFile
    # fs.symlinkSync , newFile

  deactivate: ->
  
module.exports = new ExtOpen

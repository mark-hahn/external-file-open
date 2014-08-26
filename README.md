# external-file-open package for the Atom editor

Open files outside of project directory.

This package waits in the background for an `Open File ...` request for a file outside of the project directory tree.  When such an open is requested it creates a symlink to that file inside a temp directory and opens that instead.  The symlink is contained in a directory in the project root called `.external-files`.

When an external file is opened it is treated exactly as a local project file with all Atom features.  When closed the symlink is removed.  When the last symlink is removed the directory `.external-files` is removed.

There is no way to open an external file the old way that also opens the enclosing folder.  To do this simply open that enclosing folder instead.

`Open Folder ...` is not changed in any way.  

That's it.  It couldn't be simpler.

This project is copyrighted with the MIT license.

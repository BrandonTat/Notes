### JSX
* Browser does not know how to interpret JSX, because of this JSX must be turned into JavaScript code.
  * Similar to erb in Rails, must be compiled into HTML.
* The reason we use JSX instead of JavaScript, is because it provides syntactic sugar.
  * Makes code easier to read.
  * ``` Array[i] = value ``` <==> ``` set_array(Array, i, value) ```
  * JSX: ``` <span>{this.state.count}</span> ```
  * JS: ``` React.createElement('span', {}, this.state.count) ```

### Babel/JSX Transpilation
* Always gitignore packages modules.
  * Will take forever to push applications to GitHub, instead you can always just re-download.
* Need several packages
  * babel-core (main package that handles the transpilation)
  * babel-preset-react (what's being transpiled)
  * babel-preset-es2015 (transpiles es6 to es5)
  * babel-loader (configures webpack to choose what files will be transpiled)
* Configure webpack to run files ending in .jsx through babel loader.

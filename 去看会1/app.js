
var Bmob = require('untils/bmob.js')
Bmob.initialize("a11516c0f4a9a6b30e1db6ec6dda9728", "6ffc1612de50fa2b33d1fe6f3a50b8b1");
import hudClass from "./hud/hud";

let util = require("./utils/util.js");

App({
  onLaunch: function () {
    util.run();
    this.util = util;
  },

  hudClass: (s) => new hudClass(s),
  
})
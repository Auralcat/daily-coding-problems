package = "daily_coding_problems"
version = ".-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   summary = "Solutions for the Daily Coding Problems list of exercises",
   detailed = "*** please enter a detailed description ***",
   homepage = "*** please enter a project homepage ***",
   license = "GNU GPL v3"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      problem045 = "problem045.lua"
   }
}

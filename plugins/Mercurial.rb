##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Mercurial" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-08-16
version "0.1"
description "Mercurial is a free, distributed source control management tool. - Homepage: http://mercurial.selenic.com/"

# Google results as at 2011-08-16 #
# 462 for Mercurial summary shortlog changelog graph tags branches files changeset bz2 zip gz
# 239 for Mercurial summary shortlog changelog graph tags branches files changeset bz2 zip gz inurl:shortlog

# Dorks #
dorks [
'Mercurial summary shortlog changelog graph tags branches files changeset bz2 zip gz'
]

# Examples #
examples %w|
www.cs.utexas.edu/users/speedway/jikesrvm-hg/trunk/
qilin.seas.harvard.edu/repo/
hg.dovecot.org/dovecot-2.0-sslstream/shortlog/
foss.ntua.gr/hg/pacman/shortlog/
hg.proclos.com/fluxomat/shortlog/
hg.trapdoor.org/decorum/shortlog/
|

# Matches #
matches [

{ :text=>'<a href="http://mercurial.selenic.com/" title="Mercurial" style="float: right;">Mercurial</a>' },

# Powered by link
{ :regexp=>/<div id="powered-by">[\s]+<p><a href="http:\/\/mercurial\.selenic\.com\/" title="Mercurial">/ },

]

end


##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "poMMo" do
author "Brendan Coles <bcoles@gmail.com>" # 2012-04-11
version "0.1"
description "poMMo is versatile mass mailing software - Requires PHP - Homepage: http://pommo.org/Main_Page"

# Google results as at 2012-11-04 #
# 413 for "Page fueled by poMMo mailing management software"

# Dorks #
dorks [
'"Page fueled by poMMo mailing management software"'
]

# Examples #
examples %w|
try.pommo.org
yourvoip.net
e-toaster.co.uk
msuced.com/mailinglist/
www.awbksales.com/mail/
www.taagwc.org/email/
business-emails.net/
www.arbutusmusic.net/pommo/user/login.php
mckeanre.com/listserver/
www.johnsoncountytx.org/pct3/newsletter/install/upgrade.php
www.shrimpfarmmarket.com/poMMo/user/mailings.php
riskywire.net/newsletter/
www.whimsymerced.com/enews/admin/admin.php
www.cbttraining.com.au/pommo/admin/admin.php
demos1.softaculous.com/poMMo/
www.hdtrials.org/pommo/user/mailings.php
motionbank.org/newsletter/user/subscribe.php
www.financial-advice-for-beginners.com/blog/
|

# Matches #
matches [

# Fueled by link
{ :text=>'Page fueled by <a href="http://www.pommo.org/">poMMo</a> mailing management software' },
{ :text=>'Page fueled by <a href="http://pommo.sourceforge.net/">poMMo</a> mailing management software' },

# Title
{ :text=>'<title>. ..poMMo.. .</title>' },

]

end


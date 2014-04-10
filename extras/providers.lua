---A bunch of providers preset with relevant data.
--
-- For more information about any provider, please see
-- Their documentation
--
--@module loauth2.client.extras.providers
--@author Brendan McGloin


--TODO mingle
--https://canvas.instructure.com/doc/api/file.oauth.html

mt = {__index = _ENV}
new_ENV = {}
setmetatable(new_ENV, mt)
_ENV = new_ENV

loauth2 = require('loauth2')
Provider = loauth2.Provider
M = {}

--- Google's info including it's *many* scopes.
--Scopes were retrieved via [http://discovery-check.appspot.com/](http://discovery-check.appspot.com/)
--@provider google
M.google = Provider:new("Google")
M.google.auth_uri = "https://accounts.google.com/o/oauth2/auth"
M.google.revoke_uri = "https://accounts.google.com/o/oauth2/revoke"
M.google.token_uri = "https://accounts.google.com/o/oauth2/token"
M.google.available_scopess={
    adexchangebuyer = "https://www.googleapis.com/auth/adexchange.buyer",

    adexchangeseller = "https://www.googleapis.com/auth/adexchange.seller",
    adexchangeseller_readonly = "https://www.googleapis.com/auth/adexchange.seller.readonly",

    device_chromeos = "https://www.googleapis.com/auth/admin.directory.device.chromeos",
    device_chromeos_readonly = "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly",
    device_mobile = "https://www.googleapis.com/auth/admin.directory.device.mobile",
    device_mobile_action = "https://www.googleapis.com/auth/admin.directory.device.mobile.action",
    device_mobile_readonly = "https://www.googleapis.com/auth/admin.directory.device.mobile.readonly",

    group = "https://www.googleapis.com/auth/admin.directory.group",
    group_readonly = "https://www.googleapis.com/auth/admin.directory.group.readonly",
    group_member = "https://www.googleapis.com/auth/admin.directory.group.member",
    group_member_readonly = "https://www.googleapis.com/auth/admin.directory.group.member.readonly",

    domain_notifications = "https://www.googleapis.com/auth/admin.directory.notifications",

    orgunits = "https://www.googleapis.com/auth/admin.directory.orgunit",
    orgunits_readonly = "https://www.googleapis.com/auth/admin.directory.orgunit.readonly",

    users = "https://www.googleapis.com/auth/admin.directory.user",
    users_readonly = "https://www.googleapis.com/auth/admin.directory.user.readonly",
    users_alias = "https://www.googleapis.com/auth/admin.directory.user.alias",
    users_alias_readonly = "https://www.googleapis.com/auth/admin.directory.user.alias.readonly",
    users_security = "https://www.googleapis.com/auth/admin.directory.user.alias",

    email_migration = "https://www.googleapis.com/auth/email.migration",
    audit_reports = "https://www.googleapis.com/auth/admin.reports.audit.readonly",
    usage_reports = "https://www.googleapis.com/auth/admin.reports.usage.readonly",

    adsense = "https://www.googleapis.com/auth/adsense",
    adsense_readonly = "https://www.googleapis.com/auth/adsense.readonly",
    adsensehost = "https://www.googleapis.com/auth/adsensehost",

    analytics = "https://www.googleapis.com/auth/analytics",
    analytics_edit = "https://www.googleapis.com/auth/analytics.edit",
    analytics_users = "https://www.googleapis.com/auth/analytics.manage.users",
    analytics_readonly = "https://www.googleapis.com/auth/analytics.readonly",

    appstate = "https://www.googleapis.com/auth/appstate",

    bigquery = "https://www.googleapis.com/auth/bigquery",
    cloud_platform = "https://www.googleapis.com/auth/cloud-platform",
    cloud_storage_full_control = "https://www.googleapis.com/auth/devstorage.full_control",
    cloud_storage_read_only = "https://www.googleapis.com/auth/devstorage.read_only",
    cloud_storage_read_write = "https://www.googleapis.com/auth/devstorage.read_write",

    blogger = "https://www.googleapis.com/auth/blogger",
    blogger_readonly = "https://www.googleapis.com/auth/blogger.readonly",

    books = "https://www.googleapis.com/auth/books",
    
    calendar = "https://www.googleapis.com/auth/calendar",
    calendar_readonly = "https://www.googleapis.com/auth/calendar.readonly",

    compute = "https://www.googleapis.com/auth/compute",
    compute_readonly = "https://www.googleapis.com/auth/compute.readonly",

    coordinate = "https://www.googleapis.com/auth/coordinate",
    coordinate_readonly = "https://www.googleapis.com/auth/coordinate.readonly",

    datastore = "https://www.googleapis.com/auth/datastore",

    dfareporting = "https://www.googleapis.com/auth/dfareporting",
    doubleclicksearch = "https://www.googleapis.com/auth/doubleclicksearch",

    drive = "https://www.googleapis.com/auth/drive",
    drive_appdata = "https://www.googleapis.com/auth/drive.appdata",
    drive_apps = "https://www.googleapis.com/auth/drive.apps.readonly",
    drive_file = "https://www.googleapis.com/auth/drive.file",
    drive_metadata_readonly = "https://www.googleapis.com/auth/drive.metadata.readonly",
    drive_readonly = "https://www.googleapis.com/auth/drive.readonly",
    drive_scripts = "https://www.googleapis.com/auth/drive.scripts",

    fusiontables = "https://www.googleapis.com/auth/fusiontables",
    fusiontables_readonly = "https://www.googleapis.com/auth/fusiontables.readonly",

    games = "https://www.googleapis.com/auth/games",

    groupssettings = "https://www.googleapis.com/auth/apps.groups.settings",

    glass_location = "https://www.googleapis.com/auth/glass.location",
    glass_timeline = "https://www.googleapis.com/auth/glass.timeline",

    orkut = "https://www.googleapis.com/auth/orkut",
    orkut_readonly = "https://www.googleapis.com/auth/orkut.readonly",

    plus_login = "https://www.googleapis.com/auth/plus.login",
    plus_me = "https://www.googleapis.com/auth/plus.me",
    plus_circles_read = "https://www.googleapis.com/auth/plus.circles.read",
    plus_circles_write = "https://www.googleapis.com/auth/plus.circles.write",
    plus_media_upload = "https://www.googleapis.com/auth/plus.media.upload",
    plus_profiles = "https://www.googleapis.com/auth/plus.profiles.read",
    plus_stream_read = "https://www.googleapis.com/auth/plus.stream.read",
    plus_stream_write = "https://www.googleapis.com/auth/plus.stream.write",

    prediction = "https://www.googleapis.com/auth/prediction",
    apps_order = "https://www.googleapis.com/auth/apps.order",
    apps_order_readonly = "https://www.googleapis.com/auth/apps.order.readonly",
    
    siteverification = "https://www.googleapis.com/auth/siteverification",
    siteverification_verify_only = "https://www.googleapis.com/auth/siteverification.verify_only",

    sqladmin = "https://www.googleapis.com/auth/sqlservice.admin",

    taskqueue = "https://www.googleapis.com/auth/taskqueue",
    taskqueue_consumer = "https://www.googleapis.com/auth/taskqueue.consumer",

    tasks = "https://www.googleapis.com/auth/tasks",
    tasks_readonly = "https://www.googleapis.com/auth/tasks.readonly",

    urlshortener = "https://www.googleapis.com/auth/urlshortener",

    youtube_analytics_monetary = "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
    youtube_analytics = "https://www.googleapis.com/auth/yt-analytics.readonly",

    --Maybe change name to memento
    notes = "https://www.googleapis.com/auth/memento",
    notes_readonly = "https://www.googleapis.com/auth/memento.readonly",

    moderator = "https://www.googleapis.com/auth/moderator",

    youtubepartner = "https://www.googleapis.com/auth/youtubepartner",
    youtubepartner_content_owner_readonly = "https://www.googleapis.com/auth/youtubepartner-content-owner-readonly",

    latitude_all_best = "https://www.googleapis.com/auth/latitude.all.best",
    latitude_all_city = "https://www.googleapis.com/auth/latitude.all.city",
    latitude_current_best = "https://www.googleapis.com/auth/latitude.current.best",
    latitude_current_city = "https://www.googleapis.com/auth/latitude.current.city",

    userinfo_email = "https://www.googleapis.com/auth/userinfo.email",
    userinfo_profile = "https://www.googleapis.com/auth/userinfo.profile",
}


---GitHub's info.
M.github = Provider:new("GitHub")
M.github.auth_uri = "https://github.com/login/oauth/authorize"
M.github.revoke_uri = ""
M.github.token_uri = "https://github.com/login/oauth/access_token"
M.github.available_scopess = {
    user = 'user',
    user_email = 'user:email',
    user_follow = "user:follow",
    public_repo = "public_repo",
    repo = "repo",
    repo_deployment = "repo_deployment",
    repo_status = "repo:status",
    delete_repo = "delete_repo",
    notifications = "notifications",
    gist = "gist",
    repo_hook_read = "read:repo_hook",
    repo_hook_write = "write:repo_hook",
    repo_hook_admin = "admin:repo_hook",
    org_read = "read:org",
    org_write = "write:org",
    org_admin = "admin:org",
    public_key_read = "read:public_key",
    public_key_write = "write:public_key",
    public_key_admin = "admin:public_key"
}

---Dropbox's info.
--(Possibly incomplete: no scopes)
M.dropbox = Provider:new("DropBox")
M.dropbox.auth_uri = "https://www.dropbox.com/1/oauth2/authorize"
M.dropbox.revoke_uri = ""
M.dropbox.token_uri = "https://api.dropbox.com/1/oauth2/token"
M.dropbox.available_scopess = {
}

---foursquare's info.
--(Possibly incomplete: no scopes)
M.foursquare = Provider:new("foursquare")
M.foursquare.auth_uri = "https://foursquare.com/oauth2/authenticate"
M.foursquare.revoke_uri = ""
M.foursquare.token_uri = "https://foursquare.com/oauth2/access_token"
M.foursquare.available_scopess = {
}

---Meetup's info.
M.meetup = Provider:new("Meetup")
M.meetup.auth_uri = "https://api.meetup.com/oauth/access/"
M.meetup.revoke_uri = ""
M.meetup.token_uri = "https://api.meetup.com/oauth/request/"
M.meetup.available_scopess = {
    basic = "basic",
    messaging = "messaging",
    ageless = "ageless"
}

---Amazon's info.
--(Incomplete: no URIs)
M.amazon = Provider:new("Amazon")
M.amazon.auth_uri = ""
M.amazon.token_uri = "https://api.amazon.com/auth/o2/tokeninfo"
M.amazon.revoke_uri = ""
M.amazon.available_scopess = {
    profile = "profile",
    account_id = "profile:user_id",
    postal_code = "postal_code"
}

---AOL's info.
--(Incomplete: no scopes)
M.aol = Provider:new("AOL")
M.aol.auth_uri = "https://api.screenname.aol.com/auth/authorize"
M.aol.token_uri = "https://api.screenname.aol.com/auth/access_token"
M.aol.revoke_uri = ""
M.aol.available_scopess = {
--TODO there are some.available_scopess, but I can't find them documented...
}

--- 's info.
--
M.basecamp = Provider:new("basecamp")
M.basecamp.auth_url = ''
M.basecamp.token_url = ''
M.basecamp.revoke_url = ''
M.basecamp.available_scopes = {

}

--- 's info.
--
M.bitly = Provider:new("bitly")
M.bitly .auth_url = ''
M.bitly .token_url = ''
M.bitly .revoke_url = ''
M.bitly .available_scopes = {

}

--- 's info.
--
M.bluekiwi_software = Provider:new("bluekiwi_software")
M.bluekiwi_software.auth_url = ''
M.bluekiwi_software.token_url = ''
M.bluekiwi_software.revoke_url = ''
M.bluekiwi_software.available_scopes = {

}

--- 's info.
--
M.box = Provider:new("box")
M.box.auth_url = ''
M.box.token_url = ''
M.box.revoke_url = ''
M.box.available_scopes = {

}

--- 's info.
--
M.devianArt = Provider:new("devianArt")
M.devianArt.auth_url = ''
M.devianArt.token_url = ''
M.devianArt.revoke_url = ''
M.devianArt.available_scopes = {

}

--- 's info.
--
M.deezer = Provider:new("deezer")
M.deezer.auth_url = ''
M.deezer.token_url = ''
M.deezer.revoke_url = ''
M.deezer.available_scopes = {

}

--- 's info.
--
M.formstack = Provider:new("formstack")
M.formstack.auth_url = ''
M.formstack.token_url = ''
M.formstack.revoke_url = ''
M.formstack.available_scopes = {

}

--- 's info.
--
M.hnyb = Provider:new("hnyb")
M.hnyb.auth_url = ''
M.hnyb.token_url = ''
M.hnyb.revoke_url = ''
M.hnyb.available_scopes = {

}

--- 's info.
--
M.huddle = Provider:new("huddle")
M.huddle.auth_url = ''
M.huddle.token_url = ''
M.huddle.revoke_url = ''
M.huddle.available_scopes = {

}

--- 's info.
--
M.instagram = Provider:new("instagram")
M.instagram.auth_url = ''
M.instagram.token_url = ''
M.instagram.revoke_url = ''
M.instagram.available_scopes = {

}

--- 's info.
--
M.jive = Provider:new("jive")
M.jive.auth_url = ''
M.jive.token_url = ''
M.jive.revoke_url = ''
M.jive.available_scopes = {

}

--- 's info.
--
M.linkedIn = Provider:new("linkedIn")
M.linkedIn.auth_url = ''
M.linkedIn.token_url = ''
M.linkedIn.revoke_url = ''
M.linkedIn.available_scopes = {

}

--- 's info.
--
M.microsoft_live_connect = Provider:new("microsoft_live_connect")
M.microsoft_live_connect.auth_url = ''
M.microsoft_live_connect.token_url = ''
M.microsoft_live_connect.revoke_url = ''
M.microsoft_live_connect.available_scopes = {

}

--- 's info.
--
M.noosh = Provider:new("noosh")
M.noosh.auth_url = ''
M.noosh.token_url = ''
M.noosh.revoke_url = ''
M.noosh.available_scopes = {

}

--- 's info.
--
M.paypal = Provider:new("paypal")
M.paypal.auth_url = ''
M.paypal.token_url = ''
M.paypal.revoke_url = ''
M.paypal.available_scopes = {

}

--- 's info.
--
M.reddit = Provider:new("reddit")
M.reddit.auth_url = ''
M.reddit.token_url = ''
M.reddit.revoke_url = ''
M.reddit.available_scopes = {

}

--- 's info.
--
M.salesforce = Provider:new("salesforce")
M.salesforce.auth_url = ''
M.salesforce.token_url = ''
M.salesforce.revoke_url = ''
M.salesforce.available_scopes = {

}

--- 's info.
--
M.sare = Provider:new("sare")
M.sare.auth_url = ''
M.sare.token_url = ''
M.sare.revoke_url = ''
M.sare.available_scopes = {

}

--- 's info.
--
M.sensioLabsConnect = Provider:new("sensioLabsConnect")
M.sensioLabsConnect.auth_url = ''
M.sensioLabsConnect.token_url = ''
M.sensioLabsConnect.revoke_url = ''
M.sensioLabsConnect.available_scopes = {

}

--- 's info.
--
M.sina_weibo = Provider:new("sina_weibo")
M.sina_weibo.auth_url = ''
M.sina_weibo.token_url = ''
M.sina_weibo.revoke_url = ''
M.sina_weibo.available_scopes = {

}

--- 's info.
--
M.strava = Provider:new("strava")
M.strava.auth_url = ''
M.strava.token_url = ''
M.strava.revoke_url = ''
M.strava.available_scopes = {

}

--- 's info.
--
M.stripe = Provider:new("stripe")
M.stripe.auth_url = ''
M.stripe.token_url = ''
M.stripe.revoke_url = ''
M.stripe.available_scopes = {

}

--- 's info.
--
M.tent = Provider:new("tent")
M.tent.auth_url = ''
M.tent.token_url = ''
M.tent.revoke_url = ''
M.tent.available_scopes = {

}

--- 's info.
--
M.twitter = Provider:new("twitter")
M.twitter.auth_url = ''
M.twitter.token_url = ''
M.twitter.revoke_url = ''
M.twitter.available_scopes = {

}

--- 's info.
--
M.unbounce = Provider:new("unbounce")
M.unbounce.auth_url = ''
M.unbounce.token_url = ''
M.unbounce.revoke_url = ''
M.unbounce.available_scopes = {

}

--- 's info.
--
M.veevop = Provider:new("veevop")
M.veevop.auth_url = ''
M.veevop.token_url = ''
M.veevop.revoke_url = ''
M.veevop.available_scopes = {

}

--- 's info.
--
M.vk = Provider:new("vk")
M.vk.auth_url = ''
M.vk.token_url = ''
M.vk.revoke_url = ''
M.vk.available_scopes = {

}

--- 's info.
--
M.viadeo = Provider:new("viadeo")
M.viadeo.auth_url = ''
M.viadeo.token_url = ''
M.viadeo.revoke_url = ''
M.viadeo.available_scopes = {

}

--- 's info.
--
M.yammer = Provider:new("yammer")
M.yammer.auth_url = ''
M.yammer.token_url = ''
M.yammer.revoke_url = ''
M.yammer.available_scopes = {

}

--- 's info.
--
M.yandex = Provider:new("yandex")
M.yandex.auth_url = ''
M.yandex.token_url = ''
M.yandex.revoke_url = ''
M.yandex.available_scopes = {

}

--- 's info.
--
M.zendesk = Provider:new("zendesk")
M.zendesk.auth_url = ''
M.zendesk.token_url = ''
M.zendesk.revoke_url = ''
M.zendesk.available_scopes = {

}

--- 's info.
--
M.xively = Provider:new("xively")
M.xively.auth_url = ''
M.xively.token_url = ''
M.xively.revoke_url = ''
M.xively.available_scopes = {

}

--- 's info.
--
M.force = Provider:new("force")
M.force.auth_url = ''
M.force.token_url = ''
M.force.revoke_url = ''
M.force.available_scopes = {

}

--- 's info.
--
M.arcgis = Provider:new("arcgis")
M.arcgis.auth_url = ''
M.arcgis.token_url = ''
M.arcgis.revoke_url = ''
M.arcgis.available_scopes = {

}

--- 's info.
--
M.imgur = Provider:new("imgur")
M.imgur.auth_url = ''
M.imgur.token_url = ''
M.imgur.revoke_url = ''
M.imgur.available_scopes = {

}

--- Gigya's info.
--
-- Info obtained from:
--[http://developers.gigya.com/010_Developer_Guide/85_REST/OAuth2](http://developers.gigya.com/010_Developer_Guide/85_REST/OAuth2)
M.gigya = Provider:new("gigya")
M.gigya.auth_url = 'http://socialize.gigya.com/socialize.login'
M.gigya.token_url = 'https://socialize.gigya.com/socialize.getToken'
M.gigya.available_scopes = {
--No scopes
}

--- 's info.
--
--Info obtained from
-- [http://www.drillster.com/info/oauth](http://www.drillster.com/info/oauth)
M.drillster = Provider:new("Drillster")
M.drillster.auth_url = 'https://www.drillster.com/oauth/authorize'
M.drillster.token_url = 'https://www.drillster.com/api/token.json'
M.drillster.revoke_url = ''
M.drillster.available_scopes = {
    --This appears to be the only one...
    non_expiring = "non-expiring"
}

--- 's info.
--
--Info obtained from
-- [http://developer.wordpress.com/docs/oauth2/](http://developer.wordpress.com/docs/oauth2/)
M.wordpress = Provider:new("wordpress")
M.wordpress.auth_url = 'http://developer.wordpress.com/docs/oauth2/'
M.wordpress.token_url = 'https://public-api.wordpress.com/oauth2/token'
M.wordpress.revoke_url = ''
M.wordpress.available_scopes = {

}

--- 's info.
--
--Info obtained from
-- [http://apidocs.mailchimp.com/oauth2/](http://apidocs.mailchimp.com/oauth2/)
M.mailchimp = Provider:new("")
M.mailchimp.auth_url = 'https://login.mailchimp.com/oauth2/authorize'
M.mailchimp.token_url = 'https://login.mailchimp.com/oauth2/token'
M.mailchimp.revoke_url = ''
M.mailchimp.available_scopes = {

}

--- 's info.
--
--Info obtained from
-- [http://developer.eventbrite.com/doc/authentication/oauth2/](http://developer.eventbrite.com/doc/authentication/oauth2/)
M.eventbrite = Provider:new("eventbrite")
M.eventbrite.auth_url = 'https://www.eventbrite.com/oauth/authorize'
M.eventbrite.token_url = 'https://www.eventbrite.com/oauth/token'
M.eventbrite.revoke_url = ''
M.eventbrite.available_scopes = {

}

--- 's info.
--
--Info obtained from
-- [https://www.wepay.com/developer/reference/oauth2](https://www.wepay.com/developer/reference/oauth2)
M.wepay_production = Provider:new("")
M.wepay_production.auth_url = 'https://www.wepay.com/v2/oauth2/authorize'
M.wepay_production.token_url = 'https://wepayapi.com/v2/oauth2/token'
M.wepay_production.revoke_url = ''
M.wepay_production.available_scopes = {
    manage_accounts = 'manage_accounts',
    collect_payments = 'collect_payments',
    view_user = 'view_user',
    preapprove_payments = 'preapprove_payments',
    manage_subscriptions = 'manage_subscriptions',
    send_money = 'send_money'
}

--- 's info.
--
--Info obtained from
-- [https://www.wepay.com/developer/reference/oauth2](https://www.wepay.com/developer/reference/oauth2)
M.wepay_stage = Provider:new("")
M.wepay_stage.auth_url = 'https://stage.wepay.com/v2/oauth2/authorize'
M.wepay_stage.token_url = 'https://stage.wepayapi.com/v2/oauth2/token'
M.wepay_stage.revoke_url = ''
M.wepay_stage.available_scopes = {
    manage_accounts = 'manage_accounts',
    collect_payments = 'collect_payments',
    view_user = 'view_user',
    preapprove_payments = 'preapprove_payments',
    manage_subscriptions = 'manage_subscriptions',
    send_money = 'send_money'
}

--- 's info.
--
--Info obtained from
-- [http://apiwiki.poken.com/authentication/oauth2](http://apiwiki.poken.com/authentication/oauth2)
M.poken = Provider:new("")
M.poken.auth_url = 'https://user.poken.com/authorize'
M.poken.token_url = 'https://api.poken.com/oauth2/access_token'

--- 's info.
--
--Info obtained from
-- [http://api.mail.ru/docs/guides/oauth/](http://api.mail.ru/docs/guides/oauth/)
-- *after* being put through Google translate.
M.mail_ru = Provider:new("")
M.mail_ru.auth_url = 'https://connect.mail.ru/oauth/authorize'
M.mail_ru.token_url = 'https://appsmail.ru/oauth/token'
M.mail_ru.revoke_url = ''
M.mail_ru.available_scopes = {
    photos = 'photos',
    guestbook = 'guestbook',
    stream = 'stream',
    messages = 'messages',
    events = 'events'
}

--- 's info.
--
--Info obtained from
-- [https://coinbase.com/docs/api/authentication](https://coinbase.com/docs/api/authentication)
M.coinbase = Provider:new("")
M.coinbase.auth_url = 'https://coinbase.com/oauth/authorize'
M.coinbase.token_url = 'https://coinbase.com/oauth/token'
--- Values and descriptions from:
-- [https://coinbase.com/docs/api/permissions](https://coinbase.com/docs/api/permissions)
-- @table coinbase.available_scopes
M.coinbase.available_scopes = {
    all = 'all', -- Debit an unlimited amount of money from your account, request, buy, and sell bitcoin, view your transaction history, and edit your account settings
    merchant = 'merchant', -- Create payment buttons and forms, view your basic user information, edit your merchant settings, and generate new receive addresses
    balance = 'balance', -- View your balance
    addresses = 'addresses', -- View receive addresses and create new ones
    buttons = 'buttons', -- Create payment buttons
    buy = 'buy', -- Buy bitcoin
    contacts = 'contacts', -- List emails and bitcoin addresses in your contact list
    orders = 'orders', -- List merchant orders received
    sell = 'sell', -- Sell bitcoin
    transactions = 'transactions', -- View your transaction history
    send = 'send', -- Debit an unlimited amount of money from your account
    request = 'request', -- Request money from your account
    transfers = 'transfers', -- List bitcoin buy and sell history
    user = 'user', -- View your basic account information
    recurring_payments = 'recurring_payments', -- List your recurring payments
    oauth_apps = 'oauth_apps' -- translation missing: en.doorkeeper.available_scopes.oauth_apps
}

--- 's info.
--
--Info extracted from Soundcloud's python sdk
M.soundcloud = Provider:new("")
M.soundcloud.auth_url = 'https://api.soundcloud.com/connect'
M.soundcloud.token_url = 'https://api.soundcloud.com/oauth2/token'
M.soundcloud.revoke_url = ''
M.soundcloud.available_scopes = {
    non_expiring = 'non-expiring',
    star = '*' -- not sure if this is even a real scope...
}

--- 's info.
--
--Info obtained from
-- [http://developers.flattr.net/api/](http://developers.flattr.net/api/)
M.flattr = Provider:new("")
M.flattr.auth_url = 'https://flattr.com/oauth/authorize'
M.flattr.token_url = 'https://flattr.com/oauth/token'
M.flattr.revoke_url = ''
-- Scopes
-- @table scopes
M.flattr.available_scopes = {
    flattr = 'flattr', -- Flattr things
    thing = 'thing', -- Create, update and delete things
    email = 'email', -- Read the users email address
    extendedread = 'extendedread' -- Read private user attributes and find hidden things
}

--- 's info.
--
--Info obtained from
-- [http://www.mixcloud.com/developers/#authorization](http://www.mixcloud.com/developers/#authorization)
M.mixcloud = Provider:new("")
M.mixcloud.auth_url = 'https://www.mixcloud.com/oauth/authorize'
M.mixcloud.token_url = 'https://www.mixcloud.com/oauth/access_token'
M.mixcloud.revoke_url = ''
M.mixcloud.available_scopes = {

}

--- 's info.
--
--Info obtained from
-- [http://stocktwits.com/developers/docs/authentication](http://stocktwits.com/developers/docs/authentication)
M.stocktwits = Provider:new("")
M.stocktwits.auth_url = 'https://api.stocktwits.com/api/2/oauth/authorize'
M.stocktwits.token_url = 'https://api.stocktwits.com/api/2/oauth/token'
M.stocktwits.revoke_url = ''
-- Scopes
-- @table scopes
M.stocktwits.available_scopes = {
    read = 'read', -- Default, allows to read user, symbol and authenticated streams, read social graph of people and stocks
    watch_lists = 'watch_lists', -- Read a users watch lists
    publish_watch_lists = 'publish_watch_lists', -- Publish to a users watch lists
    publish_messages = 'publish_messages', -- Publish messages for a user
    direct_messages = 'direct_messages', -- Read a users direct messages
    follow_users = 'follow_users', -- Follow other users
    follow_stocks = 'follow_stocks' -- Follow stocks
}

--- 's info.
--
--Info obtained from
-- [https://hootsuite.com/developers/api/oauth2](https://hootsuite.com/developers/api/oauth2)
M.hootsuite = Provider:new("")
M.hootsuite.auth_url = 'http://hootsuite.com/oauth2/authorize'
M.hootsuite.token_url = 'https://hootsuite.com/oauth2/token'
M.hootsuite.revoke_url = ''

--- 's info.
--
--Info obtained from
-- [http://disqus.com/api/docs/auth/](http://disqus.com/api/docs/auth/)
M.disqus = Provider:new("")
M.disqus.auth_url = 'https://disqus.com/api/oauth/2.0/authorize/'
M.disqus.token_url = 'https://disqus.com/api/oauth/2.0/access_token/'
M.disqus.revoke_url = ''
-- Scopes
-- @table disqus.available_scopes
M.disqus.available_scopes = {
    read = 'read',
    write = 'write',
    admin = 'admin',
    email = 'email'
}

--- 's info.
--
--Info obtained from
-- [https://www.mapmyapi.com/docs/OAuth_2_Intro](https://www.mapmyapi.com/docs/OAuth_2_Intro)
M.mapmyfitness = Provider:new("")
M.mapmyfitness.auth_url = 'https://www.mapmyfitness.com/v7.0/oauth2/authorize/'
M.mapmyfitness.token_url = 'https://oauth2-api.mapmyapi.com/v7.0/oauth2/access_token/'

--- 's info.
--
--Info obtained from
-- [http://wiki.musicbrainz.org/Development/OAuth2](http://wiki.musicbrainz.org/Development/OAuth2)
M.musicbrainz = Provider:new("")
M.musicbrainz.auth_url = 'https://musicbrainz.org/oauth2/authorize'
M.musicbrainz.token_url = 'https://musicbrainz.org/oauth2/token'
M.musicbrainz.revoke_url = ''
-- Scopes
-- @table musicbrainz.available_scopes
M.musicbrainz.available_scopes = {
    profile = 'profile', -- View the user's public profile information (username, age, country, homepage).
    email = 'email', -- View the user's email.
    tag = 'tag', -- View and modify the user's private tags.
    rating = 'rating', -- View and modify the user's private ratings.
    collection = 'collection', -- View and modify the user's private collections.
    submit_puid = 'submit_puid', -- Submit new PUIDs to the database.
    submit_isrc = 'submit_isrc', -- Submit new ISRCs to the database.
    submit_barcode = 'submit_barcode' -- Submit barcodes to the database.
}

--[[
--- Info for .
--
--Info obtained from
-- []()
-- @table 
M. = Provider:new("")
M..auth_url = ''
M..token_url = ''
M..revoke_url = ''
-- Scopes
-- @table scopes
M..available_scopes = {
}
--]]

return M

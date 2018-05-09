.class public final Lde/schildbach/wallet/ui/AboutActivity;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "AboutActivity.java"


# static fields
.field private static final KEY_ABOUT_AUTHOR_GOOGLEPLUS:Ljava/lang/String; = "about_author_googleplus"

.field private static final KEY_ABOUT_AUTHOR_TWITTER:Ljava/lang/String; = "about_author_twitter"

.field private static final KEY_ABOUT_COMMUNITY_GOOGLEPLUS:Ljava/lang/String; = "about_community_googleplus"

.field private static final KEY_ABOUT_CREDITS_BITCOINJ:Ljava/lang/String; = "about_credits_bitcoinj"

.field private static final KEY_ABOUT_CREDITS_FORUM:Ljava/lang/String; = "about_credits_forum"

.field private static final KEY_ABOUT_CREDITS_ICON:Ljava/lang/String; = "about_credits_icon"

.field private static final KEY_ABOUT_CREDITS_WEBSITE:Ljava/lang/String; = "about_credits_website"

.field private static final KEY_ABOUT_CREDITS_ZXING:Ljava/lang/String; = "about_credits_zxing"

.field private static final KEY_ABOUT_LICENSE:Ljava/lang/String; = "about_license"

.field private static final KEY_ABOUT_MARKET_APP:Ljava/lang/String; = "about_market_app"

.field private static final KEY_ABOUT_MARKET_PUBLISHER:Ljava/lang/String; = "about_market_publisher"

.field private static final KEY_ABOUT_SOURCE:Ljava/lang/String; = "about_source"

.field private static final KEY_ABOUT_VERSION:Ljava/lang/String; = "about_version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/AboutActivity;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AboutActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    const-string v1, "about_version"

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AboutActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v1}, Lde/schildbach/wallet/WalletApplication;->packageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    const-string v1, "about_license"

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "http://www.gnu.org/licenses/gpl-3.0.txt"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    const-string v1, "about_credits_website"

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "http://digitalpandacoin.org"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    const-string v1, "about_credits_forum"

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "http://forum.digitalpandacoin.org"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    const-string v1, "about_credits_zxing"

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "http://code.google.com/p/zxing/"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 84
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AboutActivity;->finish()V

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "key":Ljava/lang/String;
    const-string v1, "about_license"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.gnu.org/licenses/gpl-3.0.txt"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AboutActivity;->finish()V

    .line 152
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 101
    :cond_1
    const-string v1, "about_credits_website"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://digitalpandacoin.org"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AboutActivity;->finish()V

    goto :goto_0

    .line 105
    :cond_2
    const-string v1, "about_credits_forum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://forum.digitalpandacoin.org"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AboutActivity;->finish()V

    goto :goto_0

    .line 109
    :cond_3
    const-string v1, "about_author_twitter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://twitter.com/#!/Sk1rmant"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AboutActivity;->finish()V

    goto :goto_0

    .line 113
    :cond_4
    const-string v1, "about_credits_zxing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://code.google.com/p/zxing/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AboutActivity;->finish()V

    goto :goto_0
.end method

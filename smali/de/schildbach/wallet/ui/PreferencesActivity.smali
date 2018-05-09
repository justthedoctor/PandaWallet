.class public final Lde/schildbach/wallet/ui/PreferencesActivity;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREFS_KEY_DATA_USAGE:Ljava/lang/String; = "data_usage"

.field private static final PREFS_KEY_INITIATE_RESET:Ljava/lang/String; = "initiate_reset"

.field private static final PREFS_KEY_REPORT_ISSUE:Ljava/lang/String; = "report_issue"

.field private static final dataUsageIntent:Landroid/content/Intent;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private application:Lde/schildbach/wallet/WalletApplication;

.field private trustedPeerOnlyPreference:Landroid/preference/Preference;

.field private trustedPeerPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lde/schildbach/wallet/ui/PreferencesActivity;->dataUsageIntent:Landroid/content/Intent;

    .line 64
    sget-object v1, Lde/schildbach/wallet/ui/PreferencesActivity;->dataUsageIntent:Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 68
    const-class v0, Lde/schildbach/wallet/ui/PreferencesActivity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/PreferencesActivity;->log:Lorg/slf4j/Logger;

    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.Settings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/PreferencesActivity;)Lde/schildbach/wallet/WalletApplication;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/PreferencesActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->application:Lde/schildbach/wallet/WalletApplication;

    return-object v0
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lde/schildbach/wallet/ui/PreferencesActivity;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private updateTrustedPeer(Ljava/lang/String;)V
    .locals 2
    .param p1, "trustedPeer"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->trustedPeerPreference:Landroid/preference/Preference;

    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 216
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->trustedPeerOnlyPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->trustedPeerPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->trustedPeerOnlyPreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/PreferencesActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lde/schildbach/wallet/WalletApplication;

    iput-object v4, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->application:Lde/schildbach/wallet/WalletApplication;

    .line 76
    const v4, 0x7f040001

    invoke-virtual {p0, v4}, Lde/schildbach/wallet/ui/PreferencesActivity;->addPreferencesFromResource(I)V

    .line 78
    const-string v4, "trusted_peer"

    invoke-virtual {p0, v4}, Lde/schildbach/wallet/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->trustedPeerPreference:Landroid/preference/Preference;

    .line 79
    iget-object v4, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->trustedPeerPreference:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v4, "trusted_peer_only"

    invoke-virtual {p0, v4}, Lde/schildbach/wallet/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->trustedPeerOnlyPreference:Landroid/preference/Preference;

    .line 82
    iget-object v4, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->trustedPeerOnlyPreference:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    const-string v4, "data_usage"

    invoke-virtual {p0, v4}, Lde/schildbach/wallet/ui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 85
    .local v1, "dataUsagePreference":Landroid/preference/Preference;
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/PreferencesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v7, Lde/schildbach/wallet/ui/PreferencesActivity;->dataUsageIntent:Landroid/content/Intent;

    invoke-virtual {v4, v7, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/PreferencesActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 88
    .local v0, "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/PreferencesActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 91
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "trusted_peer"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "trustedPeer":Ljava/lang/String;
    invoke-direct {p0, v3}, Lde/schildbach/wallet/ui/PreferencesActivity;->updateTrustedPeer(Ljava/lang/String;)V

    .line 93
    return-void

    .end local v0    # "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "trustedPeer":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 85
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->trustedPeerPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onDestroy()V

    .line 101
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 106
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/PreferencesActivity;->finish()V

    .line 110
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 198
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->trustedPeerPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->stopBlockchainService()V

    .line 201
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lde/schildbach/wallet/ui/PreferencesActivity;->updateTrustedPeer(Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 203
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->trustedPeerOnlyPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->stopBlockchainService()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "key":Ljava/lang/String;
    const-string v3, "data_usage"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    sget-object v2, Lde/schildbach/wallet/ui/PreferencesActivity;->dataUsageIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/PreferencesActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/PreferencesActivity;->finish()V

    .line 192
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 126
    :cond_1
    const-string v3, "report_issue"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    new-instance v0, Lde/schildbach/wallet/ui/PreferencesActivity$1;

    const v3, 0x7f0b00cf

    const v4, 0x7f0b00d1

    invoke-direct {v0, p0, p0, v3, v4}, Lde/schildbach/wallet/ui/PreferencesActivity$1;-><init>(Lde/schildbach/wallet/ui/PreferencesActivity;Landroid/content/Context;II)V

    .line 166
    .local v0, "dialog":Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 170
    .end local v0    # "dialog":Lde/schildbach/wallet/ui/ReportIssueDialogBuilder;
    :cond_2
    const-string v3, "initiate_reset"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    new-instance v0, Lde/schildbach/wallet/ui/DialogBuilder;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v3, 0x7f0b00cb

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/DialogBuilder;->setTitle(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 174
    const v3, 0x7f0b00cd

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 175
    const v3, 0x7f0b00ce

    new-instance v4, Lde/schildbach/wallet/ui/PreferencesActivity$2;

    invoke-direct {v4, p0}, Lde/schildbach/wallet/ui/PreferencesActivity$2;-><init>(Lde/schildbach/wallet/ui/PreferencesActivity;)V

    invoke-virtual {v0, v3, v4}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    const v3, 0x7f0b00ec

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

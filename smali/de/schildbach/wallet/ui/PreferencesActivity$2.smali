.class Lde/schildbach/wallet/ui/PreferencesActivity$2;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/PreferencesActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/PreferencesActivity;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/PreferencesActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lde/schildbach/wallet/ui/PreferencesActivity$2;->this$0:Lde/schildbach/wallet/ui/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 180
    invoke-static {}, Lde/schildbach/wallet/ui/PreferencesActivity;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "manually initiated blockchain reset"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity$2;->this$0:Lde/schildbach/wallet/ui/PreferencesActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/PreferencesActivity;->access$000(Lde/schildbach/wallet/ui/PreferencesActivity;)Lde/schildbach/wallet/WalletApplication;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->resetBlockchain()V

    .line 183
    iget-object v0, p0, Lde/schildbach/wallet/ui/PreferencesActivity$2;->this$0:Lde/schildbach/wallet/ui/PreferencesActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/PreferencesActivity;->finish()V

    .line 184
    return-void
.end method

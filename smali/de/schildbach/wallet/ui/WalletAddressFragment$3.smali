.class Lde/schildbach/wallet/ui/WalletAddressFragment$3;
.super Ljava/lang/Object;
.source "WalletAddressFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/WalletAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletAddressFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletAddressFragment;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment$3;->this$0:Lde/schildbach/wallet/ui/WalletAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "selected_address"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment$3;->this$0:Lde/schildbach/wallet/ui/WalletAddressFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletAddressFragment;->access$200(Lde/schildbach/wallet/ui/WalletAddressFragment;)V

    .line 159
    :cond_0
    return-void
.end method

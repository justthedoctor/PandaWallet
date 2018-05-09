.class Lde/schildbach/wallet/ui/WalletAddressesFragment$3;
.super Landroid/database/ContentObserver;
.source "WalletAddressesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/WalletAddressesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletAddressesFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 290
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$3;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$3;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$400(Lde/schildbach/wallet/ui/WalletAddressesFragment;)V

    .line 295
    return-void
.end method

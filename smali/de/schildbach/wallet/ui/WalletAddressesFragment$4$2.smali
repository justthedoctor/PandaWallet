.class Lde/schildbach/wallet/ui/WalletAddressesFragment$4$2;
.super Ljava/lang/Object;
.source "WalletAddressesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletAddressesFragment$4;->onKeysAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/WalletAddressesFragment$4;

.field final synthetic val$keys:Ljava/util/List;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletAddressesFragment$4;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$2;->this$1:Lde/schildbach/wallet/ui/WalletAddressesFragment$4;

    iput-object p2, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$2;->val$keys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$2;->this$1:Lde/schildbach/wallet/ui/WalletAddressesFragment$4;

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$300(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/ui/WalletAddressesAdapter;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$2;->val$keys:Ljava/util/List;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->replace(Ljava/util/Collection;)V

    .line 329
    return-void
.end method

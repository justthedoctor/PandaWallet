.class Lde/schildbach/wallet/ui/WalletAddressesFragment$4;
.super Lcom/google/bitcoin/core/AbstractWalletEventListener;
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
.method constructor <init>(Lde/schildbach/wallet/ui/WalletAddressesFragment;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractWalletEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeysAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
    .locals 3
    .param p1, "w"    # Lcom/google/bitcoin/core/Wallet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Wallet;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p2, "keysAdded":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$500(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Wallet;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 305
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    new-instance v1, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$1;

    invoke-direct {v1, p0}, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$1;-><init>(Lde/schildbach/wallet/ui/WalletAddressesFragment$4;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 323
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$600(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$2;

    invoke-direct {v2, p0, v0}, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$2;-><init>(Lde/schildbach/wallet/ui/WalletAddressesFragment$4;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method

.class Lde/schildbach/wallet/ui/WalletAddressesFragment$4$1;
.super Ljava/lang/Object;
.source "WalletAddressesFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletAddressesFragment$4;->onKeysAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/bitcoin/core/ECKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/WalletAddressesFragment$4;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletAddressesFragment$4;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$1;->this$1:Lde/schildbach/wallet/ui/WalletAddressesFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/core/ECKey;)I
    .locals 8
    .param p1, "lhs"    # Lcom/google/bitcoin/core/ECKey;
    .param p2, "rhs"    # Lcom/google/bitcoin/core/ECKey;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 310
    iget-object v4, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$1;->this$1:Lde/schildbach/wallet/ui/WalletAddressesFragment$4;

    iget-object v4, v4, Lde/schildbach/wallet/ui/WalletAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v4}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$500(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/bitcoin/core/Wallet;->isKeyRotating(Lcom/google/bitcoin/core/ECKey;)Z

    move-result v0

    .line 311
    .local v0, "lhsRotating":Z
    iget-object v4, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$1;->this$1:Lde/schildbach/wallet/ui/WalletAddressesFragment$4;

    iget-object v4, v4, Lde/schildbach/wallet/ui/WalletAddressesFragment$4;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v4}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$500(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/bitcoin/core/Wallet;->isKeyRotating(Lcom/google/bitcoin/core/ECKey;)Z

    move-result v1

    .line 313
    .local v1, "rhsRotating":Z
    if-eq v0, v1, :cond_2

    .line 314
    if-eqz v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 314
    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p1}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 317
    invoke-virtual {p1}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 319
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 306
    check-cast p1, Lcom/google/bitcoin/core/ECKey;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/bitcoin/core/ECKey;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/WalletAddressesFragment$4$1;->compare(Lcom/google/bitcoin/core/ECKey;Lcom/google/bitcoin/core/ECKey;)I

    move-result v0

    return v0
.end method

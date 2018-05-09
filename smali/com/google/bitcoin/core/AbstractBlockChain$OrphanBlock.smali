.class Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;
.super Ljava/lang/Object;
.source "AbstractBlockChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/AbstractBlockChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrphanBlock"
.end annotation


# instance fields
.field final block:Lcom/google/bitcoin/core/Block;

.field final filteredTxHashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field final filteredTxn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/bitcoin/core/AbstractBlockChain;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/Block;Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .param p2, "block"    # Lcom/google/bitcoin/core/Block;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Block;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "filteredTxHashes":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    .local p4, "filteredTxn":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Transaction;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    iput-object p1, p0, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->this$0:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    move v0, v1

    .line 117
    .local v0, "filtered":Z
    :goto_0
    iget-object v3, p2, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-nez v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v3, p2, Lcom/google/bitcoin/core/Block;->transactions:Ljava/util/List;

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 119
    invoke-virtual {p1}, Lcom/google/bitcoin/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v1

    if-nez v1, :cond_4

    .line 120
    invoke-virtual {p2}, Lcom/google/bitcoin/core/Block;->cloneAsHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->block:Lcom/google/bitcoin/core/Block;

    .line 123
    :goto_1
    iput-object p3, p0, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->filteredTxHashes:Ljava/util/List;

    .line 124
    iput-object p4, p0, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->filteredTxn:Ljava/util/Map;

    .line 125
    return-void

    .end local v0    # "filtered":Z
    :cond_3
    move v0, v2

    .line 116
    goto :goto_0

    .line 122
    .restart local v0    # "filtered":Z
    :cond_4
    iput-object p2, p0, Lcom/google/bitcoin/core/AbstractBlockChain$OrphanBlock;->block:Lcom/google/bitcoin/core/Block;

    goto :goto_1
.end method

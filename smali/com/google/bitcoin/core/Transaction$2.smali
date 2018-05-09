.class final Lcom/google/bitcoin/core/Transaction$2;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/bitcoin/core/Transaction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction;)I
    .locals 3
    .param p1, "tx1"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "tx2"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionConfidence;->getAppearedAtChainHeight()I

    move-result v0

    .line 70
    .local v0, "height1":I
    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/TransactionConfidence;->getAppearedAtChainHeight()I

    move-result v1

    .line 71
    .local v1, "height2":I
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v2

    neg-int v2, v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/bitcoin/core/Transaction;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/core/Transaction$2;->compare(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction;)I

    move-result v0

    return v0
.end method

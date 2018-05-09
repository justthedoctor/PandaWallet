.class Lcom/google/bitcoin/core/Wallet$TxOffsetPair;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TxOffsetPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/bitcoin/core/Wallet$TxOffsetPair;",
        ">;"
    }
.end annotation


# instance fields
.field public final offset:I

.field public final tx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Transaction;I)V
    .locals 0
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "offset"    # I

    .prologue
    .line 2456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2457
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 2458
    iput p2, p0, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;->offset:I

    .line 2459
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/bitcoin/core/Wallet$TxOffsetPair;)I
    .locals 2
    .param p1, "o"    # Lcom/google/bitcoin/core/Wallet$TxOffsetPair;

    .prologue
    .line 2462
    iget v0, p0, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;->offset:I

    iget v1, p1, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;->offset:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2452
    check-cast p1, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Wallet$TxOffsetPair;->compareTo(Lcom/google/bitcoin/core/Wallet$TxOffsetPair;)I

    move-result v0

    return v0
.end method

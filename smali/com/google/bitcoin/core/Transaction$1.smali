.class final Lcom/google/bitcoin/core/Transaction$1;
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
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction;)I
    .locals 5
    .param p1, "tx1"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "tx2"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 61
    .local v0, "time1":J
    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 62
    .local v2, "time2":J
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v4

    neg-int v4, v4

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/bitcoin/core/Transaction;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/core/Transaction$1;->compare(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction;)I

    move-result v0

    return v0
.end method

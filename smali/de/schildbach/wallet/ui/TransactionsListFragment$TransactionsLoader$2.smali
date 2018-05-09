.class final Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader$2;
.super Ljava/lang/Object;
.source "TransactionsListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;
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
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction;)I
    .locals 10
    .param p1, "tx1"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "tx2"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v8

    sget-object v9, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v8, v9, :cond_0

    const/4 v0, 0x1

    .line 456
    .local v0, "pending1":Z
    :goto_0
    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v8

    sget-object v9, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v8, v9, :cond_1

    const/4 v1, 0x1

    .line 458
    .local v1, "pending2":Z
    :goto_1
    if-eq v0, v1, :cond_3

    .line 459
    if-eqz v0, :cond_2

    const/4 v8, -0x1

    .line 471
    :goto_2
    return v8

    .line 455
    .end local v0    # "pending1":Z
    .end local v1    # "pending2":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 456
    .restart local v0    # "pending1":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 459
    .restart local v1    # "pending2":Z
    :cond_2
    const/4 v8, 0x1

    goto :goto_2

    .line 461
    :cond_3
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v6

    .line 462
    .local v6, "updateTime1":Ljava/util/Date;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 463
    .local v2, "time1":J
    :goto_3
    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v7

    .line 464
    .local v7, "updateTime2":Ljava/util/Date;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 466
    .local v4, "time2":J
    :goto_4
    cmp-long v8, v2, v4

    if-lez v8, :cond_6

    .line 467
    const/4 v8, -0x1

    goto :goto_2

    .line 462
    .end local v2    # "time1":J
    .end local v4    # "time2":J
    .end local v7    # "updateTime2":Ljava/util/Date;
    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 464
    .restart local v2    # "time1":J
    .restart local v7    # "updateTime2":Ljava/util/Date;
    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_4

    .line 468
    .restart local v4    # "time2":J
    :cond_6
    cmp-long v8, v2, v4

    if-gez v8, :cond_7

    .line 469
    const/4 v8, 0x1

    goto :goto_2

    .line 471
    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 451
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/bitcoin/core/Transaction;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader$2;->compare(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction;)I

    move-result v0

    return v0
.end method

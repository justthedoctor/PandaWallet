.class Lcom/google/bitcoin/core/Wallet$2;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Wallet;->getRecentTransactions(IZ)Ljava/util/List;
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
        "Lcom/google/bitcoin/core/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Wallet;)V
    .locals 0

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet$2;->this$0:Lcom/google/bitcoin/core/Wallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction;)I
    .locals 2
    .param p1, "t1"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "t2"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 1415
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1413
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/bitcoin/core/Transaction;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/core/Wallet$2;->compare(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction;)I

    move-result v0

    return v0
.end method

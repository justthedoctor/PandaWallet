.class public Lcom/google/bitcoin/wallet/WalletTransaction;
.super Ljava/lang/Object;
.source "WalletTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    }
.end annotation


# instance fields
.field private final pool:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

.field private final transaction:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "pool"    # Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    .param p2, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    iput-object v0, p0, Lcom/google/bitcoin/wallet/WalletTransaction;->pool:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    .line 38
    iput-object p2, p0, Lcom/google/bitcoin/wallet/WalletTransaction;->transaction:Lcom/google/bitcoin/core/Transaction;

    .line 39
    return-void
.end method


# virtual methods
.method public getPool()Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/bitcoin/wallet/WalletTransaction;->pool:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    return-object v0
.end method

.method public getTransaction()Lcom/google/bitcoin/core/Transaction;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/bitcoin/wallet/WalletTransaction;->transaction:Lcom/google/bitcoin/core/Transaction;

    return-object v0
.end method

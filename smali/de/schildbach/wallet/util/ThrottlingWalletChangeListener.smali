.class public abstract Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;
.super Ljava/lang/Object;
.source "ThrottlingWalletChangeListener.java"

# interfaces
.implements Lcom/google/bitcoin/core/WalletEventListener;


# static fields
.field private static final DEFAULT_THROTTLE_MS:J = 0x1f4L


# instance fields
.field private final coinsRelevant:Z

.field private final confidenceRelevant:Z

.field private final handler:Landroid/os/Handler;

.field private final lastMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final relevant:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final reorganizeRelevant:Z

.field private final runnable:Ljava/lang/Runnable;

.field private final throttleMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;-><init>(J)V

    .line 52
    return-void
.end method

.method public constructor <init>(J)V
    .locals 6
    .param p1, "throttleMs"    # J

    .prologue
    const/4 v3, 0x1

    .line 56
    move-object v0, p0

    move-wide v1, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;-><init>(JZZZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(JZZZ)V
    .locals 3
    .param p1, "throttleMs"    # J
    .param p3, "coinsRelevant"    # Z
    .param p4, "reorganizeRelevant"    # Z
    .param p5, "confidenceRelevant"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->lastMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->handler:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->relevant:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener$1;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener$1;-><init>(Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;)V

    iput-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->runnable:Ljava/lang/Runnable;

    .line 67
    iput-wide p1, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->throttleMs:J

    .line 68
    iput-boolean p3, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->coinsRelevant:Z

    .line 69
    iput-boolean p4, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->reorganizeRelevant:Z

    .line 70
    iput-boolean p5, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->confidenceRelevant:Z

    .line 71
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 6
    .param p1, "coinsRelevant"    # Z
    .param p2, "reorganizeRelevant"    # Z
    .param p3, "confidenceRelevant"    # Z

    .prologue
    .line 61
    const-wide/16 v1, 0x1f4

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;-><init>(JZZZ)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    .prologue
    .line 36
    iget-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->lastMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method


# virtual methods
.method public onCoinsReceived(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "prevBalance"    # Ljava/math/BigInteger;
    .param p4, "newBalance"    # Ljava/math/BigInteger;

    .prologue
    .line 111
    iget-boolean v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->coinsRelevant:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->relevant:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    :cond_0
    return-void
.end method

.method public onCoinsSent(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "prevBalance"    # Ljava/math/BigInteger;
    .param p4, "newBalance"    # Ljava/math/BigInteger;

    .prologue
    .line 118
    iget-boolean v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->coinsRelevant:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->relevant:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    :cond_0
    return-void
.end method

.method public onKeysAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
    .locals 0
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
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
    .line 140
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    return-void
.end method

.method public onReorganize(Lcom/google/bitcoin/core/Wallet;)V
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 125
    iget-boolean v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->reorganizeRelevant:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->relevant:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public onScriptsAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V
    .locals 0
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Wallet;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/Script;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "scripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    return-void
.end method

.method public abstract onThrottledWalletChanged()V
.end method

.method public onTransactionConfidenceChanged(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;)V
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 132
    iget-boolean v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->confidenceRelevant:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->relevant:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public final onWalletChanged(Lcom/google/bitcoin/core/Wallet;)V
    .locals 6
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 76
    iget-object v2, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->relevant:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, "now":J
    iget-object v2, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->lastMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->throttleMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 83
    iget-object v2, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .end local v0    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local v0    # "now":J
    :cond_1
    iget-object v2, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->runnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->throttleMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public removeCallbacks()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

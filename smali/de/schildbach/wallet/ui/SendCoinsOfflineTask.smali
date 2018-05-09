.class public abstract Lde/schildbach/wallet/ui/SendCoinsOfflineTask;
.super Ljava/lang/Object;
.source "SendCoinsOfflineTask.java"


# instance fields
.field private final backgroundHandler:Landroid/os/Handler;

.field private final callbackHandler:Landroid/os/Handler;

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Wallet;Landroid/os/Handler;)V
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "backgroundHandler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 45
    iput-object p2, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->backgroundHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->callbackHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/SendCoinsOfflineTask;)Lcom/google/bitcoin/core/Wallet;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsOfflineTask;

    .prologue
    .line 36
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->wallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/SendCoinsOfflineTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsOfflineTask;

    .prologue
    .line 36
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected abstract onFailure()V
.end method

.method protected abstract onInsufficientMoney(Ljava/math/BigInteger;)V
    .param p1    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected abstract onSuccess(Lcom/google/bitcoin/core/Transaction;)V
    .param p1    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public final sendCoinsOffline(Lcom/google/bitcoin/core/Wallet$SendRequest;)V
    .locals 2
    .param p1, "sendRequest"    # Lcom/google/bitcoin/core/Wallet$SendRequest;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 51
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->backgroundHandler:Landroid/os/Handler;

    new-instance v1, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;

    invoke-direct {v1, p0, p1}, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;-><init>(Lde/schildbach/wallet/ui/SendCoinsOfflineTask;Lcom/google/bitcoin/core/Wallet$SendRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

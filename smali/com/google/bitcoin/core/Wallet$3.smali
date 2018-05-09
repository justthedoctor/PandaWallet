.class Lcom/google/bitcoin/core/Wallet$3;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Wallet;->checkBalanceFuturesLocked(Ljava/math/BigInteger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Wallet;

.field final synthetic val$req:Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;

.field final synthetic val$v:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 3236
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet$3;->this$0:Lcom/google/bitcoin/core/Wallet;

    iput-object p2, p0, Lcom/google/bitcoin/core/Wallet$3;->val$req:Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;

    iput-object p3, p0, Lcom/google/bitcoin/core/Wallet$3;->val$v:Ljava/math/BigInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3238
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$3;->val$req:Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$BalanceFutureRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet$3;->val$v:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 3239
    return-void
.end method

.class Lcom/google/bitcoin/core/Wallet$7;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Wallet;->queueOnCoinsSent(Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Wallet;

.field final synthetic val$newBalance:Ljava/math/BigInteger;

.field final synthetic val$prevBalance:Ljava/math/BigInteger;

.field final synthetic val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

.field final synthetic val$tx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 3362
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet$7;->this$0:Lcom/google/bitcoin/core/Wallet;

    iput-object p2, p0, Lcom/google/bitcoin/core/Wallet$7;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iput-object p3, p0, Lcom/google/bitcoin/core/Wallet$7;->val$tx:Lcom/google/bitcoin/core/Transaction;

    iput-object p4, p0, Lcom/google/bitcoin/core/Wallet$7;->val$prevBalance:Ljava/math/BigInteger;

    iput-object p5, p0, Lcom/google/bitcoin/core/Wallet$7;->val$newBalance:Ljava/math/BigInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3365
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$7;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v0, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/google/bitcoin/core/WalletEventListener;

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet$7;->this$0:Lcom/google/bitcoin/core/Wallet;

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet$7;->val$tx:Lcom/google/bitcoin/core/Transaction;

    iget-object v3, p0, Lcom/google/bitcoin/core/Wallet$7;->val$prevBalance:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/google/bitcoin/core/Wallet$7;->val$newBalance:Ljava/math/BigInteger;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/bitcoin/core/WalletEventListener;->onCoinsSent(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 3366
    return-void
.end method

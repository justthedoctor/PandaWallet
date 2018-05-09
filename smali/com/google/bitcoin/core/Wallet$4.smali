.class Lcom/google/bitcoin/core/Wallet$4;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Wallet;->queueOnTransactionConfidenceChanged(Lcom/google/bitcoin/core/Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Wallet;

.field final synthetic val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

.field final synthetic val$tx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/Transaction;)V
    .locals 0

    .prologue
    .line 3321
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet$4;->this$0:Lcom/google/bitcoin/core/Wallet;

    iput-object p2, p0, Lcom/google/bitcoin/core/Wallet$4;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iput-object p3, p0, Lcom/google/bitcoin/core/Wallet$4;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3324
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$4;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v0, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/google/bitcoin/core/WalletEventListener;

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet$4;->this$0:Lcom/google/bitcoin/core/Wallet;

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet$4;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-interface {v0, v1, v2}, Lcom/google/bitcoin/core/WalletEventListener;->onTransactionConfidenceChanged(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;)V

    .line 3325
    return-void
.end method

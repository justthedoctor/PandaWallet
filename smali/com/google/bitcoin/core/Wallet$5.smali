.class Lcom/google/bitcoin/core/Wallet$5;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Wallet;->maybeQueueOnWalletChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Wallet;

.field final synthetic val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/utils/ListenerRegistration;)V
    .locals 0

    .prologue
    .line 3338
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet$5;->this$0:Lcom/google/bitcoin/core/Wallet;

    iput-object p2, p0, Lcom/google/bitcoin/core/Wallet$5;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$5;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v0, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/google/bitcoin/core/WalletEventListener;

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet$5;->this$0:Lcom/google/bitcoin/core/Wallet;

    invoke-interface {v0, v1}, Lcom/google/bitcoin/core/WalletEventListener;->onWalletChanged(Lcom/google/bitcoin/core/Wallet;)V

    .line 3342
    return-void
.end method

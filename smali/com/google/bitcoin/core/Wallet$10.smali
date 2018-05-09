.class Lcom/google/bitcoin/core/Wallet$10;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Wallet;->queueOnScriptsAdded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/Wallet;

.field final synthetic val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

.field final synthetic val$scripts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/utils/ListenerRegistration;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet$10;->this$0:Lcom/google/bitcoin/core/Wallet;

    iput-object p2, p0, Lcom/google/bitcoin/core/Wallet$10;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iput-object p3, p0, Lcom/google/bitcoin/core/Wallet$10;->val$scripts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3402
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$10;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v0, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/google/bitcoin/core/WalletEventListener;

    iget-object v1, p0, Lcom/google/bitcoin/core/Wallet$10;->this$0:Lcom/google/bitcoin/core/Wallet;

    iget-object v2, p0, Lcom/google/bitcoin/core/Wallet$10;->val$scripts:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/google/bitcoin/core/WalletEventListener;->onScriptsAdded(Lcom/google/bitcoin/core/Wallet;Ljava/util/List;)V

    .line 3403
    return-void
.end method

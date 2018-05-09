.class Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;
.super Ljava/lang/Object;
.source "SendCoinsOfflineTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->sendCoinsOffline(Lcom/google/bitcoin/core/Wallet$SendRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsOfflineTask;

.field final synthetic val$sendRequest:Lcom/google/bitcoin/core/Wallet$SendRequest;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsOfflineTask;Lcom/google/bitcoin/core/Wallet$SendRequest;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsOfflineTask;

    iput-object p2, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;->val$sendRequest:Lcom/google/bitcoin/core/Wallet$SendRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    :try_start_0
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsOfflineTask;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->access$000(Lde/schildbach/wallet/ui/SendCoinsOfflineTask;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;->val$sendRequest:Lcom/google/bitcoin/core/Wallet$SendRequest;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Wallet;->sendCoinsOffline(Lcom/google/bitcoin/core/Wallet$SendRequest;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    .line 62
    .local v0, "transaction":Lcom/google/bitcoin/core/Transaction;
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsOfflineTask;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->access$100(Lde/schildbach/wallet/ui/SendCoinsOfflineTask;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$1;

    invoke-direct {v3, p0, v0}, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$1;-><init>(Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;Lcom/google/bitcoin/core/Transaction;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/google/bitcoin/core/InsufficientMoneyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .end local v0    # "transaction":Lcom/google/bitcoin/core/Transaction;
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 73
    .local v1, "x":Lcom/google/bitcoin/core/InsufficientMoneyException;
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsOfflineTask;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->access$100(Lde/schildbach/wallet/ui/SendCoinsOfflineTask;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$2;

    invoke-direct {v3, p0, v1}, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$2;-><init>(Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;Lcom/google/bitcoin/core/InsufficientMoneyException;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 82
    .end local v1    # "x":Lcom/google/bitcoin/core/InsufficientMoneyException;
    :catch_1
    move-exception v1

    .line 84
    .local v1, "x":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsOfflineTask;

    invoke-static {v2}, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->access$100(Lde/schildbach/wallet/ui/SendCoinsOfflineTask;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$3;

    invoke-direct {v3, p0}, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$3;-><init>(Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

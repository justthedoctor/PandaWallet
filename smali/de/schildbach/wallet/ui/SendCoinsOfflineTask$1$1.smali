.class Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$1;
.super Ljava/lang/Object;
.source "SendCoinsOfflineTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;

.field final synthetic val$transaction:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;Lcom/google/bitcoin/core/Transaction;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;

    iput-object p2, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$1;->val$transaction:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;

    iget-object v0, v0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsOfflineTask;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$1;->val$transaction:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->onSuccess(Lcom/google/bitcoin/core/Transaction;)V

    .line 68
    return-void
.end method

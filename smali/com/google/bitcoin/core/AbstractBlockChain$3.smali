.class Lcom/google/bitcoin/core/AbstractBlockChain$3;
.super Lcom/google/bitcoin/core/AbstractBlockChainListener;
.source "AbstractBlockChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/AbstractBlockChain;->getHeightFuture(I)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/AbstractBlockChain;

.field final synthetic val$height:I

.field final synthetic val$result:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/AbstractBlockChain;ILcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/google/bitcoin/core/AbstractBlockChain$3;->this$0:Lcom/google/bitcoin/core/AbstractBlockChain;

    iput p2, p0, Lcom/google/bitcoin/core/AbstractBlockChain$3;->val$height:I

    iput-object p3, p0, Lcom/google/bitcoin/core/AbstractBlockChain$3;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractBlockChainListener;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyNewBestBlock(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 2
    .param p1, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain$3;->val$height:I

    if-lt v0, v1, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain$3;->this$0:Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v0, p0}, Lcom/google/bitcoin/core/AbstractBlockChain;->removeListener(Lcom/google/bitcoin/core/BlockChainListener;)V

    .line 1159
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain$3;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1161
    :cond_0
    return-void
.end method

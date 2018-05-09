.class Lcom/google/bitcoin/core/AbstractBlockChain$2;
.super Ljava/lang/Object;
.source "AbstractBlockChain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/AbstractBlockChain;->handleNewBestChain(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/Block;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/AbstractBlockChain;

.field final synthetic val$newBlocks:Ljava/util/LinkedList;

.field final synthetic val$oldBlocks:Ljava/util/LinkedList;

.field final synthetic val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

.field final synthetic val$splitPoint:Lcom/google/bitcoin/core/StoredBlock;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/utils/ListenerRegistration;Lcom/google/bitcoin/core/StoredBlock;Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/google/bitcoin/core/AbstractBlockChain$2;->this$0:Lcom/google/bitcoin/core/AbstractBlockChain;

    iput-object p2, p0, Lcom/google/bitcoin/core/AbstractBlockChain$2;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iput-object p3, p0, Lcom/google/bitcoin/core/AbstractBlockChain$2;->val$splitPoint:Lcom/google/bitcoin/core/StoredBlock;

    iput-object p4, p0, Lcom/google/bitcoin/core/AbstractBlockChain$2;->val$oldBlocks:Ljava/util/LinkedList;

    iput-object p5, p0, Lcom/google/bitcoin/core/AbstractBlockChain$2;->val$newBlocks:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain$2;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v1, v1, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v1, Lcom/google/bitcoin/core/BlockChainListener;

    iget-object v2, p0, Lcom/google/bitcoin/core/AbstractBlockChain$2;->val$splitPoint:Lcom/google/bitcoin/core/StoredBlock;

    iget-object v3, p0, Lcom/google/bitcoin/core/AbstractBlockChain$2;->val$oldBlocks:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain$2;->val$newBlocks:Ljava/util/LinkedList;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/bitcoin/core/BlockChainListener;->reorganize(Lcom/google/bitcoin/core/StoredBlock;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    invoke-static {}, Lcom/google/bitcoin/core/AbstractBlockChain;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Block chain listener threw exception during reorg"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

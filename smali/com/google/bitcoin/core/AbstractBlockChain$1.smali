.class Lcom/google/bitcoin/core/AbstractBlockChain$1;
.super Ljava/lang/Object;
.source "AbstractBlockChain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/AbstractBlockChain;->informListenersForNewBlock(Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lcom/google/bitcoin/core/StoredBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/AbstractBlockChain;

.field final synthetic val$block:Lcom/google/bitcoin/core/Block;

.field final synthetic val$filteredTxHashList:Ljava/util/List;

.field final synthetic val$filteredTxn:Ljava/util/Map;

.field final synthetic val$newBlockType:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

.field final synthetic val$newStoredBlock:Lcom/google/bitcoin/core/StoredBlock;

.field final synthetic val$notFirst:Z

.field final synthetic val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lcom/google/bitcoin/core/StoredBlock;ZLcom/google/bitcoin/utils/ListenerRegistration;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->this$0:Lcom/google/bitcoin/core/AbstractBlockChain;

    iput-object p2, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$block:Lcom/google/bitcoin/core/Block;

    iput-object p3, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$newBlockType:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    iput-object p4, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$filteredTxHashList:Ljava/util/List;

    iput-object p5, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$filteredTxn:Ljava/util/Map;

    iput-object p6, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$newStoredBlock:Lcom/google/bitcoin/core/StoredBlock;

    iput-boolean p7, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$notFirst:Z

    iput-object p8, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 518
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 519
    .local v7, "ignoredFalsePositives":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$block:Lcom/google/bitcoin/core/Block;

    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$newBlockType:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    iget-object v2, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$filteredTxHashList:Ljava/util/List;

    iget-object v3, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$filteredTxn:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$newStoredBlock:Lcom/google/bitcoin/core/StoredBlock;

    iget-boolean v5, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$notFirst:Z

    iget-object v6, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v6, v6, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v6, Lcom/google/bitcoin/core/BlockChainListener;

    invoke-static/range {v0 .. v7}, Lcom/google/bitcoin/core/AbstractBlockChain;->access$000(Lcom/google/bitcoin/core/Block;Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lcom/google/bitcoin/core/StoredBlock;ZLcom/google/bitcoin/core/BlockChainListener;Ljava/util/Set;)V

    .line 521
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$newBlockType:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    sget-object v1, Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lcom/google/bitcoin/core/AbstractBlockChain$NewBlockType;

    if-ne v0, v1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$registration:Lcom/google/bitcoin/utils/ListenerRegistration;

    iget-object v0, v0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/google/bitcoin/core/BlockChainListener;

    iget-object v1, p0, Lcom/google/bitcoin/core/AbstractBlockChain$1;->val$newStoredBlock:Lcom/google/bitcoin/core/StoredBlock;

    invoke-interface {v0, v1}, Lcom/google/bitcoin/core/BlockChainListener;->notifyNewBestBlock(Lcom/google/bitcoin/core/StoredBlock;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v7    # "ignoredFalsePositives":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/bitcoin/core/Transaction;>;"
    :cond_0
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v8

    .line 524
    .local v8, "e":Lcom/google/bitcoin/core/VerificationException;
    invoke-static {}, Lcom/google/bitcoin/core/AbstractBlockChain;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Block chain listener threw exception: "

    invoke-interface {v0, v1, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.class Lcom/google/bitcoin/core/PeerGroup$1;
.super Lcom/google/bitcoin/core/AbstractPeerEventListener;
.source "PeerGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/PeerGroup;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/PeerGroup;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$1;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractPeerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/GetDataMessage;)Ljava/util/List;
    .locals 1
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "m"    # Lcom/google/bitcoin/core/GetDataMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Peer;",
            "Lcom/google/bitcoin/core/GetDataMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup$1;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v0, p2}, Lcom/google/bitcoin/core/PeerGroup;->access$000(Lcom/google/bitcoin/core/PeerGroup;Lcom/google/bitcoin/core/GetDataMessage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBlocksDownloaded(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Block;I)V
    .locals 6
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "block"    # Lcom/google/bitcoin/core/Block;
    .param p3, "blocksLeft"    # I

    .prologue
    .line 140
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup$1;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v2}, Lcom/google/bitcoin/core/PeerGroup;->access$100(Lcom/google/bitcoin/core/PeerGroup;)Lcom/google/bitcoin/core/AbstractBlockChain;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/AbstractBlockChain;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/AbstractBlockChain;->getFalsePositiveRate()D

    move-result-wide v0

    .line 141
    .local v0, "rate":D
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup$1;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v2}, Lcom/google/bitcoin/core/PeerGroup;->access$200(Lcom/google/bitcoin/core/PeerGroup;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 142
    invoke-static {}, Lcom/google/bitcoin/core/PeerGroup;->access$300()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Force update Bloom filter due to high false positive rate"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup$1;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    sget-object v3, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->FORCE_SEND:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/PeerGroup;->recalculateFastCatchupAndFilter(Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;)V

    .line 145
    :cond_0
    return-void
.end method

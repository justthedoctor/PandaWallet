.class Lcom/google/bitcoin/core/Peer$PendingPing;
.super Ljava/lang/Object;
.source "Peer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/Peer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingPing"
.end annotation


# instance fields
.field public future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final nonce:J

.field public final startTimeMsec:J

.field final synthetic this$0:Lcom/google/bitcoin/core/Peer;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Peer;J)V
    .locals 2
    .param p2, "nonce"    # J

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/google/bitcoin/core/Peer$PendingPing;->this$0:Lcom/google/bitcoin/core/Peer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1312
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Peer$PendingPing;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 1313
    iput-wide p2, p0, Lcom/google/bitcoin/core/Peer$PendingPing;->nonce:J

    .line 1314
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/core/Peer$PendingPing;->startTimeMsec:J

    .line 1315
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 5

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer$PendingPing;->future:Lcom/google/common/util/concurrent/SettableFuture;

    const-string v2, "Already completed"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/bitcoin/core/Peer$PendingPing;->startTimeMsec:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1320
    .local v0, "elapsed":Ljava/lang/Long;
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer$PendingPing;->this$0:Lcom/google/bitcoin/core/Peer;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/bitcoin/core/Peer;->access$400(Lcom/google/bitcoin/core/Peer;J)V

    .line 1321
    invoke-static {}, Lcom/google/bitcoin/core/Peer;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "{}: ping time is {} msec"

    iget-object v3, p0, Lcom/google/bitcoin/core/Peer$PendingPing;->this$0:Lcom/google/bitcoin/core/Peer;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Peer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1322
    iget-object v1, p0, Lcom/google/bitcoin/core/Peer$PendingPing;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1323
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/core/Peer$PendingPing;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 1324
    return-void
.end method

.class public Lcom/google/bitcoin/core/DownloadListener;
.super Lcom/google/bitcoin/core/AbstractPeerEventListener;
.source "DownloadListener.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private caughtUp:Z

.field private done:Ljava/util/concurrent/Semaphore;

.field private lastPercent:I

.field private originalBlocksLeft:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/bitcoin/core/DownloadListener;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/core/DownloadListener;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractPeerEventListener;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bitcoin/core/DownloadListener;->originalBlocksLeft:I

    .line 34
    iput v1, p0, Lcom/google/bitcoin/core/DownloadListener;->lastPercent:I

    .line 35
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/bitcoin/core/DownloadListener;->done:Ljava/util/concurrent/Semaphore;

    .line 36
    iput-boolean v1, p0, Lcom/google/bitcoin/core/DownloadListener;->caughtUp:Z

    return-void
.end method


# virtual methods
.method public await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/bitcoin/core/DownloadListener;->done:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 102
    return-void
.end method

.method protected doneDownload()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onBlocksDownloaded(Lcom/google/bitcoin/core/Peer;Lcom/google/bitcoin/core/Block;I)V
    .locals 8
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "block"    # Lcom/google/bitcoin/core/Block;
    .param p3, "blocksLeft"    # I

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 50
    iget-boolean v2, p0, Lcom/google/bitcoin/core/DownloadListener;->caughtUp:Z

    if-eqz v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    if-nez p3, :cond_2

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/bitcoin/core/DownloadListener;->caughtUp:Z

    .line 55
    invoke-virtual {p0}, Lcom/google/bitcoin/core/DownloadListener;->doneDownload()V

    .line 56
    iget-object v2, p0, Lcom/google/bitcoin/core/DownloadListener;->done:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 59
    :cond_2
    if-ltz p3, :cond_0

    iget v2, p0, Lcom/google/bitcoin/core/DownloadListener;->originalBlocksLeft:I

    if-lez v2, :cond_0

    .line 62
    int-to-double v2, p3

    iget v4, p0, Lcom/google/bitcoin/core/DownloadListener;->originalBlocksLeft:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v6

    sub-double v0, v6, v2

    .line 63
    .local v0, "pct":D
    double-to-int v2, v0

    iget v3, p0, Lcom/google/bitcoin/core/DownloadListener;->lastPercent:I

    if-eq v2, v3, :cond_0

    .line 64
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, v1, p3, v2}, Lcom/google/bitcoin/core/DownloadListener;->progress(DILjava/util/Date;)V

    .line 65
    double-to-int v2, v0

    iput v2, p0, Lcom/google/bitcoin/core/DownloadListener;->lastPercent:I

    goto :goto_0
.end method

.method public onChainDownloadStarted(Lcom/google/bitcoin/core/Peer;I)V
    .locals 1
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "blocksLeft"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p2}, Lcom/google/bitcoin/core/DownloadListener;->startDownload(I)V

    .line 41
    iput p2, p0, Lcom/google/bitcoin/core/DownloadListener;->originalBlocksLeft:I

    .line 42
    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/google/bitcoin/core/DownloadListener;->doneDownload()V

    .line 44
    iget-object v0, p0, Lcom/google/bitcoin/core/DownloadListener;->done:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 46
    :cond_0
    return-void
.end method

.method protected progress(DILjava/util/Date;)V
    .locals 5
    .param p1, "pct"    # D
    .param p3, "blocksSoFar"    # I
    .param p4, "date"    # Ljava/util/Date;

    .prologue
    .line 76
    sget-object v0, Lcom/google/bitcoin/core/DownloadListener;->log:Lorg/slf4j/Logger;

    const-string v1, "Chain download %d%% done with %d blocks to go, block date %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    double-to-int v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected startDownload(I)V
    .locals 3
    .param p1, "blocks"    # I

    .prologue
    .line 86
    if-lez p1, :cond_0

    .line 87
    sget-object v1, Lcom/google/bitcoin/core/DownloadListener;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading block chain of size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    const-string v0, "This may take a while."

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void

    .line 87
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

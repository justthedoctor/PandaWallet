.class final Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;
.super Ljava/lang/Object;
.source "BlockchainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/service/BlockchainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityHistoryEntry"
.end annotation


# instance fields
.field public final numBlocksDownloaded:I

.field public final numTransactionsReceived:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "numTransactionsReceived"    # I
    .param p2, "numBlocksDownloaded"    # I

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;->numTransactionsReceived:I

    .line 532
    iput p2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;->numBlocksDownloaded:I

    .line 533
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;->numTransactionsReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$ActivityHistoryEntry;->numBlocksDownloaded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lde/schildbach/wallet/service/BlockchainServiceImpl$2$1;
.super Ljava/lang/Object;
.source "BlockchainServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/service/BlockchainServiceImpl$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$2;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/service/BlockchainServiceImpl$2;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$2;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->access$900(Lde/schildbach/wallet/service/BlockchainServiceImpl$2;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 347
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$2;

    iget-object v0, v0, Lde/schildbach/wallet/service/BlockchainServiceImpl$2;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1000(Lde/schildbach/wallet/service/BlockchainServiceImpl;I)V

    .line 348
    return-void
.end method

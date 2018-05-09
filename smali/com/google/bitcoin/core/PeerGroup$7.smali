.class Lcom/google/bitcoin/core/PeerGroup$7;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/PeerGroup;->waitForJobQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/PeerGroup;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/PeerGroup;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$7;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    iput-object p2, p0, Lcom/google/bitcoin/core/PeerGroup$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 682
    return-void
.end method

.class Lcom/google/bitcoin/core/PeerGroup$2;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 149
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$2;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/bitcoin/core/PeerGroup$2;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    sget-object v1, Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/PeerGroup;->recalculateFastCatchupAndFilter(Lcom/google/bitcoin/core/PeerGroup$FilterRecalculateMode;)V

    .line 152
    return-void
.end method

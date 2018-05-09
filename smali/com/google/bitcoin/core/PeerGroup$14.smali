.class Lcom/google/bitcoin/core/PeerGroup$14;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/PeerGroup;->selectDownloadPeer(Ljava/util/List;)Lcom/google/bitcoin/core/Peer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/PeerGroup;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/PeerGroup;)V
    .locals 0

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$14;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;)I
    .locals 4
    .param p1, "peerAndPing"    # Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;
    .param p2, "peerAndPing2"    # Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;

    .prologue
    .line 1546
    iget-wide v0, p1, Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;->pingTime:J

    iget-wide v2, p2, Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;->pingTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1544
    check-cast p1, Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/core/PeerGroup$14;->compare(Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;)I

    move-result v0

    return v0
.end method

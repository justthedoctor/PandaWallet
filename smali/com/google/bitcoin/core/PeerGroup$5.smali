.class Lcom/google/bitcoin/core/PeerGroup$5;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/PeerGroup;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/google/bitcoin/net/ClientConnectionManager;Lcom/subgraph/orchid/TorClient;)V
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
        "Lcom/google/bitcoin/core/PeerAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/core/PeerGroup;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/PeerGroup;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/bitcoin/core/PeerGroup$5;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/PeerAddress;)I
    .locals 3
    .param p1, "a"    # Lcom/google/bitcoin/core/PeerAddress;
    .param p2, "b"    # Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/google/bitcoin/core/PeerGroup$5;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v1}, Lcom/google/bitcoin/core/PeerGroup;->access$800(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/utils/ExponentialBackoff;

    iget-object v2, p0, Lcom/google/bitcoin/core/PeerGroup$5;->this$0:Lcom/google/bitcoin/core/PeerGroup;

    invoke-static {v2}, Lcom/google/bitcoin/core/PeerGroup;->access$800(Lcom/google/bitcoin/core/PeerGroup;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/utils/ExponentialBackoff;

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/utils/ExponentialBackoff;->compareTo(Lcom/google/bitcoin/utils/ExponentialBackoff;)I

    move-result v0

    .line 348
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/google/bitcoin/core/PeerAddress;->getPort()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/bitcoin/core/PeerAddress;->getPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    .line 350
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 343
    check-cast p1, Lcom/google/bitcoin/core/PeerAddress;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/bitcoin/core/PeerAddress;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/core/PeerGroup$5;->compare(Lcom/google/bitcoin/core/PeerAddress;Lcom/google/bitcoin/core/PeerAddress;)I

    move-result v0

    return v0
.end method

.class Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;
.super Ljava/util/HashSet;
.source "PeerDBDiscovery.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddressSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;->this$0:Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;)Z
    .locals 6
    .param p1, "peer"    # Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    .prologue
    const/16 v5, 0x80

    .line 126
    invoke-virtual {p0}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 129
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    .line 131
    .local v1, "peerToCheck":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    invoke-virtual {v1}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->isBad()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-static {}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery;->access$200()Lorg/slf4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing bad node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;->address:Lcom/google/bitcoin/core/PeerAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 136
    .end local v1    # "peerToCheck":Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 142
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;->size()I

    move-result v2

    if-ge v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 143
    invoke-super {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 142
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$AddressSet;->add(Lcom/google/bitcoin/net/discovery/PeerDBDiscovery$PeerData;)Z

    move-result v0

    return v0
.end method

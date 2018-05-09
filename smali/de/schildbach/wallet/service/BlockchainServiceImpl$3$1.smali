.class Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;
.super Ljava/lang/Object;
.source "BlockchainServiceImpl.java"

# interfaces
.implements Lcom/google/bitcoin/net/discovery/PeerDiscovery;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->check()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field channel:Ljava/lang/String;

.field private dbPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

.field private final fallbackPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

.field private final normalPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

.field final synthetic this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$3;

.field final synthetic val$connectTrustedPeerOnly:Z

.field final synthetic val$hasTrustedPeer:Z

.field final synthetic val$maxConnectedPeers:I

.field final synthetic val$trustedPeerHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/service/BlockchainServiceImpl$3;ZLjava/lang/String;ZI)V
    .locals 2

    .prologue
    .line 421
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$3;

    iput-boolean p2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->val$hasTrustedPeer:Z

    iput-object p3, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->val$trustedPeerHost:Ljava/lang/String;

    iput-boolean p4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->val$connectTrustedPeerOnly:Z

    iput p5, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->val$maxConnectedPeers:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance v0, Lcom/google/bitcoin/net/discovery/DnsDiscovery;

    sget-object v1, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, v1}, Lcom/google/bitcoin/net/discovery/DnsDiscovery;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->normalPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->dbPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pandacoin"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->channel:Ljava/lang/String;

    .line 428
    new-instance v0, Lcom/google/bitcoin/net/discovery/IrcDiscovery;

    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->channel:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/bitcoin/net/discovery/IrcDiscovery;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->fallbackPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    return-void
.end method


# virtual methods
.method public getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .locals 9
    .param p1, "timeoutValue"    # J
    .param p3, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .prologue
    .line 434
    :try_start_0
    iget-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->dbPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    if-nez v4, :cond_0

    .line 436
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v4

    const-string v5, "Adding PeerDBDiscovery"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 437
    new-instance v4, Lorg/litecoin/LitecoinPeerDBDiscovery;

    sget-object v5, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v6, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$3;

    iget-object v6, v6, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pandacoin"

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".peerdb"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->this$1:Lde/schildbach/wallet/service/BlockchainServiceImpl$3;

    iget-object v7, v7, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v7}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/litecoin/LitecoinPeerDBDiscovery;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/File;Lcom/google/bitcoin/core/PeerGroup;)V

    iput-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->dbPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_0
    :goto_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 447
    .local v3, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    const/4 v2, 0x0

    .line 449
    .local v2, "needsTrimPeersWorkaround":Z
    iget-boolean v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->val$hasTrustedPeer:Z

    if-eqz v4, :cond_1

    .line 451
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trusted peer \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->val$trustedPeerHost:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->val$connectTrustedPeerOnly:Z

    if-eqz v4, :cond_4

    const-string v4, " only"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 453
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->val$trustedPeerHost:Ljava/lang/String;

    sget-object v5, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/NetworkParameters;->getPort()I

    move-result v5

    invoke-direct {v0, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 454
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 456
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    const/4 v2, 0x1

    .line 461
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_1
    iget-boolean v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->val$connectTrustedPeerOnly:Z

    if-nez v4, :cond_3

    .line 463
    iget-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->normalPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    invoke-interface {v4, p1, p2, p3}, Lcom/google/bitcoin/net/discovery/PeerDiscovery;->getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 466
    iget-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->dbPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    if-eqz v4, :cond_2

    .line 467
    iget-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->dbPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7}, Lcom/google/bitcoin/net/discovery/PeerDiscovery;->getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 469
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_3

    invoke-static {}, Lcom/google/bitcoin/core/CoinDefinition;->supportsIrcDiscovery()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 473
    :try_start_1
    iget-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->fallbackPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    if-eqz v4, :cond_3

    .line 474
    iget-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->fallbackPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    invoke-interface {v4, p1, p2, p3}, Lcom/google/bitcoin/net/discovery/PeerDiscovery;->getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lcom/google/bitcoin/net/discovery/PeerDiscoveryException; {:try_start_1 .. :try_end_1} :catch_1

    .line 483
    :cond_3
    :goto_2
    if-eqz v2, :cond_5

    .line 484
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->val$maxConnectedPeers:I

    if-lt v4, v5, :cond_5

    .line 485
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 440
    .end local v2    # "needsTrimPeersWorkaround":Z
    .end local v3    # "peers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/4 v4, 0x0

    iput-object v4, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->dbPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    .line 443
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException in bitcoinj: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "needsTrimPeersWorkaround":Z
    .restart local v3    # "peers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    :cond_4
    const-string v4, ""

    goto/16 :goto_1

    .line 475
    :catch_1
    move-exception v1

    .line 476
    .local v1, "e":Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to discover IRC peers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 487
    .end local v1    # "e":Lcom/google/bitcoin/net/discovery/PeerDiscoveryException;
    :cond_5
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/net/InetSocketAddress;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/net/InetSocketAddress;

    return-object v4
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->normalPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    invoke-interface {v0}, Lcom/google/bitcoin/net/discovery/PeerDiscovery;->shutdown()V

    .line 494
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->dbPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->dbPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    invoke-interface {v0}, Lcom/google/bitcoin/net/discovery/PeerDiscovery;->shutdown()V

    .line 496
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->fallbackPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;->fallbackPeerDiscovery:Lcom/google/bitcoin/net/discovery/PeerDiscovery;

    invoke-interface {v0}, Lcom/google/bitcoin/net/discovery/PeerDiscovery;->shutdown()V

    .line 498
    :cond_1
    return-void
.end method

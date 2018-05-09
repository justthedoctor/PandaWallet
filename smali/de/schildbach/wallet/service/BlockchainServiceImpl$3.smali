.class Lde/schildbach/wallet/service/BlockchainServiceImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "BlockchainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/service/BlockchainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private hasConnectivity:Z

.field private hasStorage:Z

.field final synthetic this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;)V
    .locals 1

    .prologue
    .line 353
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->hasStorage:Z

    return-void
.end method

.method private check()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1200(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/WalletApplication;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v10

    .line 389
    .local v10, "wallet":Lcom/google/bitcoin/core/Wallet;
    iget-boolean v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->hasConnectivity:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->hasStorage:Z

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    .line 391
    .local v8, "hasEverything":Z
    :goto_0
    if-eqz v8, :cond_6

    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v0

    if-nez v0, :cond_6

    .line 393
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "acquiring wakelock"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1400(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 397
    invoke-virtual {v10}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHeight()I

    move-result v11

    .line 398
    .local v11, "walletLastBlockSeenHeight":I
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$100(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/BlockChain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/BlockChain;->getBestChainHeight()I

    move-result v6

    .line 399
    .local v6, "bestChainHeight":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    if-eq v11, v6, :cond_0

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wallet/blockchain out of sync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 402
    .local v9, "message":Ljava/lang/String;
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 403
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1200(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/WalletApplication;

    move-result-object v1

    invoke-virtual {v1}, Lde/schildbach/wallet/WalletApplication;->packageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/CrashReporter;->saveBackgroundTrace(Ljava/lang/Throwable;Landroid/content/pm/PackageInfo;)V

    .line 406
    .end local v9    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "starting peergroup"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    new-instance v1, Lcom/google/bitcoin/core/PeerGroup;

    sget-object v12, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v13, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v13}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$100(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/BlockChain;

    move-result-object v13

    invoke-direct {v1, v12, v13}, Lcom/google/bitcoin/core/PeerGroup;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;)V

    invoke-static {v0, v1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1302(Lde/schildbach/wallet/service/BlockchainServiceImpl;Lcom/google/bitcoin/core/PeerGroup;)Lcom/google/bitcoin/core/PeerGroup;

    .line 408
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/bitcoin/core/PeerGroup;->addWallet(Lcom/google/bitcoin/core/Wallet;)V

    .line 409
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v0

    const-string v1, "Pandacoin Wallet"

    iget-object v12, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v12}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1200(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/WalletApplication;

    move-result-object v12

    invoke-virtual {v12}, Lde/schildbach/wallet/WalletApplication;->packageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v12}, Lcom/google/bitcoin/core/PeerGroup;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1500(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/PeerGroup;->addEventListener(Lcom/google/bitcoin/core/PeerEventListener;)V

    .line 412
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1200(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/WalletApplication;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->maxConnectedPeers()I

    move-result v5

    .line 414
    .local v5, "maxConnectedPeers":I
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$500(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/Configuration;->getTrustedPeerHost()Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "trustedPeerHost":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x1

    .line 417
    .local v2, "hasTrustedPeer":Z
    :goto_1
    if-eqz v2, :cond_4

    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$500(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/Configuration;->getTrustedPeerOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    .line 418
    .local v4, "connectTrustedPeerOnly":Z
    :goto_2
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v1

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v0}, Lcom/google/bitcoin/core/PeerGroup;->setMaxConnections(I)V

    .line 420
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v12

    new-instance v0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lde/schildbach/wallet/service/BlockchainServiceImpl$3$1;-><init>(Lde/schildbach/wallet/service/BlockchainServiceImpl$3;ZLjava/lang/String;ZI)V

    invoke-virtual {v12, v0}, Lcom/google/bitcoin/core/PeerGroup;->addPeerDiscovery(Lcom/google/bitcoin/net/discovery/PeerDiscovery;)V

    .line 502
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerGroup;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 503
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1600(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/PeerGroup;->startBlockChainDownload(Lcom/google/bitcoin/core/PeerEventListener;)V

    .line 517
    .end local v2    # "hasTrustedPeer":Z
    .end local v3    # "trustedPeerHost":Ljava/lang/String;
    .end local v4    # "connectTrustedPeerOnly":Z
    .end local v5    # "maxConnectedPeers":I
    .end local v6    # "bestChainHeight":I
    .end local v11    # "walletLastBlockSeenHeight":I
    :cond_1
    :goto_4
    iget-boolean v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->hasConnectivity:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_5
    iget-boolean v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->hasStorage:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_6
    or-int v7, v0, v1

    .line 520
    .local v7, "download":I
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0, v7}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1000(Lde/schildbach/wallet/service/BlockchainServiceImpl;I)V

    .line 521
    return-void

    .line 389
    .end local v7    # "download":I
    .end local v8    # "hasEverything":Z
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 415
    .restart local v3    # "trustedPeerHost":Ljava/lang/String;
    .restart local v5    # "maxConnectedPeers":I
    .restart local v6    # "bestChainHeight":I
    .restart local v8    # "hasEverything":Z
    .restart local v11    # "walletLastBlockSeenHeight":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 417
    .restart local v2    # "hasTrustedPeer":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .restart local v4    # "connectTrustedPeerOnly":Z
    :cond_5
    move v0, v5

    .line 418
    goto :goto_3

    .line 505
    .end local v2    # "hasTrustedPeer":Z
    .end local v3    # "trustedPeerHost":Ljava/lang/String;
    .end local v4    # "connectTrustedPeerOnly":Z
    .end local v5    # "maxConnectedPeers":I
    .end local v6    # "bestChainHeight":I
    .end local v11    # "walletLastBlockSeenHeight":I
    :cond_6
    if-nez v8, :cond_1

    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "stopping peergroup"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1500(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/PeerGroup;->removeEventListener(Lcom/google/bitcoin/core/PeerEventListener;)Z

    .line 509
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/bitcoin/core/PeerGroup;->removeWallet(Lcom/google/bitcoin/core/Wallet;)V

    .line 510
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1300(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerGroup;->stop()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 511
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1302(Lde/schildbach/wallet/service/BlockchainServiceImpl;Lcom/google/bitcoin/core/PeerGroup;)Lcom/google/bitcoin/core/PeerGroup;

    .line 513
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "releasing wakelock"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1400(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_4

    .line 517
    :cond_7
    const/4 v0, 0x2

    goto :goto_5

    :cond_8
    const/4 v1, 0x1

    goto :goto_6
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 364
    const-string v3, "noConnectivity"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->hasConnectivity:Z

    .line 365
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->hasConnectivity:Z

    if-eqz v1, :cond_2

    const-string v1, "up"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->check()V

    .line 383
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 364
    goto :goto_0

    .line 365
    :cond_2
    const-string v1, "down"

    goto :goto_1

    .line 369
    :cond_3
    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 371
    iput-boolean v2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->hasStorage:Z

    .line 372
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "device storage low"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->check()V

    goto :goto_2

    .line 376
    :cond_4
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    iput-boolean v1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->hasStorage:Z

    .line 379
    invoke-static {}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$1100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "device storage ok"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lde/schildbach/wallet/service/BlockchainServiceImpl$3;->check()V

    goto :goto_2
.end method

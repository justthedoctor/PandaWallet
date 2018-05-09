.class public Lcom/google/bitcoin/kits/WalletAppKit;
.super Lcom/google/common/util/concurrent/AbstractIdleService;
.source "WalletAppKit.java"


# instance fields
.field protected autoStop:Z

.field protected blockingStartup:Z

.field protected checkpoints:Ljava/io/InputStream;

.field protected final directory:Ljava/io/File;

.field protected downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

.field protected final filePrefix:Ljava/lang/String;

.field protected final params:Lcom/google/bitcoin/core/NetworkParameters;

.field protected peerAddresses:[Lcom/google/bitcoin/core/PeerAddress;

.field protected useAutoSave:Z

.field protected useTor:Z

.field protected userAgent:Ljava/lang/String;

.field protected volatile vChain:Lcom/google/bitcoin/core/BlockChain;

.field protected volatile vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

.field protected volatile vStore:Lcom/google/bitcoin/store/SPVBlockStore;

.field protected volatile vWallet:Lcom/google/bitcoin/core/Wallet;

.field protected volatile vWalletFile:Ljava/io/File;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "filePrefix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->useAutoSave:Z

    .line 78
    iput-boolean v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->autoStop:Z

    .line 80
    iput-boolean v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->blockingStartup:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->useTor:Z

    .line 85
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/NetworkParameters;

    iput-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 86
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->directory:Ljava/io/File;

    .line 87
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->filePrefix:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private installShutdownHook()V
    .locals 2

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->autoStop:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lcom/google/bitcoin/kits/WalletAppKit$2;

    invoke-direct {v1, p0}, Lcom/google/bitcoin/kits/WalletAppKit$2;-><init>(Lcom/google/bitcoin/kits/WalletAppKit;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method protected addWalletExtensions()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method public chain()Lcom/google/bitcoin/core/BlockChain;
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/bitcoin/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/bitcoin/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call until startup is complete"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vChain:Lcom/google/bitcoin/core/BlockChain;

    return-object v0

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connectToLocalHost()Lcom/google/bitcoin/kits/WalletAppKit;
    .locals 6

    .prologue
    .line 100
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    .line 101
    .local v1, "localHost":Ljava/net/InetAddress;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/bitcoin/core/PeerAddress;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/bitcoin/core/PeerAddress;

    iget-object v5, p0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/NetworkParameters;->getPort()I

    move-result v5

    invoke-direct {v4, v1, v5}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetAddress;I)V

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/google/bitcoin/kits/WalletAppKit;->setPeerNodes([Lcom/google/bitcoin/core/PeerAddress;)Lcom/google/bitcoin/kits/WalletAppKit;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 102
    .end local v1    # "localHost":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected createPeerGroup()Lcom/google/bitcoin/core/PeerGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->useTor:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vChain:Lcom/google/bitcoin/core/BlockChain;

    new-instance v2, Lcom/subgraph/orchid/TorClient;

    invoke-direct {v2}, Lcom/subgraph/orchid/TorClient;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/core/PeerGroup;->newWithTor(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;Lcom/subgraph/orchid/TorClient;)Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/bitcoin/core/PeerGroup;

    iget-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v2, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vChain:Lcom/google/bitcoin/core/BlockChain;

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/PeerGroup;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/AbstractBlockChain;)V

    goto :goto_0
.end method

.method public directory()Ljava/io/File;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->directory:Ljava/io/File;

    return-object v0
.end method

.method protected onSetupCompleted()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public params()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    return-object v0
.end method

.method public peerGroup()Lcom/google/bitcoin/core/PeerGroup;
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/bitcoin/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/bitcoin/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call until startup is complete"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    return-object v0

    .line 337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoSave(Z)Lcom/google/bitcoin/kits/WalletAppKit;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/bitcoin/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call after startup"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 111
    iput-boolean p1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->useAutoSave:Z

    .line 112
    return-object p0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoStop(Z)Lcom/google/bitcoin/kits/WalletAppKit;
    .locals 0
    .param p1, "autoStop"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->autoStop:Z

    .line 127
    return-object p0
.end method

.method public setBlockingStartup(Z)Lcom/google/bitcoin/kits/WalletAppKit;
    .locals 0
    .param p1, "blockingStartup"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->blockingStartup:Z

    .line 147
    return-object p0
.end method

.method public setCheckpoints(Ljava/io/InputStream;)Lcom/google/bitcoin/kits/WalletAppKit;
    .locals 1
    .param p1, "checkpoints"    # Ljava/io/InputStream;

    .prologue
    .line 135
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->checkpoints:Ljava/io/InputStream;

    .line 136
    return-object p0
.end method

.method public setDownloadListener(Lcom/google/bitcoin/core/PeerEventListener;)Lcom/google/bitcoin/kits/WalletAppKit;
    .locals 0
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    .line 121
    return-object p0
.end method

.method public varargs setPeerNodes([Lcom/google/bitcoin/core/PeerAddress;)Lcom/google/bitcoin/kits/WalletAppKit;
    .locals 2
    .param p1, "addresses"    # [Lcom/google/bitcoin/core/PeerAddress;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/bitcoin/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call after startup"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 93
    iput-object p1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->peerAddresses:[Lcom/google/bitcoin/core/PeerAddress;

    .line 94
    return-object p0

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;)Lcom/google/bitcoin/kits/WalletAppKit;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->userAgent:Ljava/lang/String;

    .line 157
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->version:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method protected shutDown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/PeerGroup;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 304
    iget-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/PeerGroup;->awaitTerminated()V

    .line 305
    iget-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v2, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Wallet;->saveToFile(Ljava/io/File;)V

    .line 306
    iget-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vStore:Lcom/google/bitcoin/store/SPVBlockStore;

    invoke-virtual {v1}, Lcom/google/bitcoin/store/SPVBlockStore;->close()V

    .line 308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vStore:Lcom/google/bitcoin/store/SPVBlockStore;

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vChain:Lcom/google/bitcoin/core/BlockChain;
    :try_end_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Lcom/google/bitcoin/store/BlockStoreException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected startUp()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not create named directory."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_0
    const/16 v21, 0x0

    .line 194
    .local v21, "walletStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->directory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/kits/WalletAppKit;->filePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".spvchain"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .local v10, "chainFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    .line 196
    .local v11, "chainFileExists":Z
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/kits/WalletAppKit;->directory:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/bitcoin/kits/WalletAppKit;->filePrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".wallet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v11, :cond_5

    const/16 v16, 0x1

    .line 199
    .local v16, "shouldReplayWallet":Z
    :goto_0
    new-instance v2, Lcom/google/bitcoin/store/SPVBlockStore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v2, v3, v10}, Lcom/google/bitcoin/store/SPVBlockStore;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vStore:Lcom/google/bitcoin/store/SPVBlockStore;

    .line 200
    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->checkpoints:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    .line 205
    const-wide v18, 0x7fffffffffffffffL

    .line 206
    .local v18, "time":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    new-instance v20, Lcom/google/bitcoin/core/Wallet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/google/bitcoin/core/Wallet;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 208
    .local v20, "wallet":Lcom/google/bitcoin/core/Wallet;
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 209
    .local v17, "stream":Ljava/io/FileInputStream;
    new-instance v2, Lcom/google/bitcoin/store/WalletProtobufSerializer;

    invoke-direct {v2}, Lcom/google/bitcoin/store/WalletProtobufSerializer;-><init>()V

    invoke-static/range {v17 .. v17}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->parseToProto(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->readWallet(Lorg/bitcoinj/wallet/Protos$Wallet;Lcom/google/bitcoin/core/Wallet;)V

    .line 210
    invoke-virtual/range {v20 .. v20}, Lcom/google/bitcoin/core/Wallet;->getEarliestKeyCreationTime()J

    move-result-wide v18

    .line 212
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .end local v20    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/kits/WalletAppKit;->checkpoints:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vStore:Lcom/google/bitcoin/store/SPVBlockStore;

    move-wide/from16 v0, v18

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/bitcoin/core/CheckpointManager;->checkpoint(Lcom/google/bitcoin/core/NetworkParameters;Ljava/io/InputStream;Lcom/google/bitcoin/store/BlockStore;J)V

    .line 214
    .end local v18    # "time":J
    :cond_2
    new-instance v2, Lcom/google/bitcoin/core/BlockChain;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vStore:Lcom/google/bitcoin/store/SPVBlockStore;

    invoke-direct {v2, v3, v4}, Lcom/google/bitcoin/core/BlockChain;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/store/BlockStore;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vChain:Lcom/google/bitcoin/core/BlockChain;

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/kits/WalletAppKit;->createPeerGroup()Lcom/google/bitcoin/core/PeerGroup;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->userAgent:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/kits/WalletAppKit;->userAgent:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/kits/WalletAppKit;->version:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/bitcoin/core/PeerGroup;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .end local v21    # "walletStream":Ljava/io/FileInputStream;
    .local v22, "walletStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Lcom/google/bitcoin/core/Wallet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/Wallet;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/kits/WalletAppKit;->addWalletExtensions()V

    .line 222
    new-instance v2, Lcom/google/bitcoin/store/WalletProtobufSerializer;

    invoke-direct {v2}, Lcom/google/bitcoin/store/WalletProtobufSerializer;-><init>()V

    invoke-static/range {v22 .. v22}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->parseToProto(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2, v3, v4}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->readWallet(Lorg/bitcoinj/wallet/Protos$Wallet;Lcom/google/bitcoin/core/Wallet;)V

    .line 223
    if-eqz v16, :cond_c

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Wallet;->clearTransactions(I)V
    :try_end_1
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v21, v22

    .line 231
    .end local v22    # "walletStream":Ljava/io/FileInputStream;
    .restart local v21    # "walletStream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->useAutoSave:Z

    if-eqz v2, :cond_4

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    const-wide/16 v4, 0xc8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/bitcoin/core/Wallet;->autosaveToFile(Ljava/io/File;JLjava/util/concurrent/TimeUnit;Lcom/google/bitcoin/wallet/WalletFiles$Listener;)Lcom/google/bitcoin/wallet/WalletFiles;

    .line 236
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->peerAddresses:[Lcom/google/bitcoin/core/PeerAddress;

    if-eqz v2, :cond_a

    .line 237
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/bitcoin/kits/WalletAppKit;->peerAddresses:[Lcom/google/bitcoin/core/PeerAddress;

    .local v9, "arr$":[Lcom/google/bitcoin/core/PeerAddress;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2
    if-ge v13, v14, :cond_8

    aget-object v8, v9, v13

    .local v8, "addr":Lcom/google/bitcoin/core/PeerAddress;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v2, v8}, Lcom/google/bitcoin/core/PeerGroup;->addAddress(Lcom/google/bitcoin/core/PeerAddress;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 197
    .end local v8    # "addr":Lcom/google/bitcoin/core/PeerAddress;
    .end local v9    # "arr$":[Lcom/google/bitcoin/core/PeerAddress;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "shouldReplayWallet":Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 226
    .restart local v16    # "shouldReplayWallet":Z
    :cond_6
    new-instance v2, Lcom/google/bitcoin/core/Wallet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/Wallet;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    new-instance v3, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v3}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Wallet;->addKey(Lcom/google/bitcoin/core/ECKey;)Z

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/kits/WalletAppKit;->addWalletExtensions()V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Wallet;->saveToFile(Ljava/io/File;)V
    :try_end_2
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 271
    .end local v10    # "chainFile":Ljava/io/File;
    .end local v11    # "chainFileExists":Z
    .end local v16    # "shouldReplayWallet":Z
    :catch_0
    move-exception v12

    .line 272
    .local v12, "e":Lcom/google/bitcoin/store/BlockStoreException;
    :goto_3
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v12}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    .end local v12    # "e":Lcom/google/bitcoin/store/BlockStoreException;
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    :cond_7
    throw v2

    .line 238
    .restart local v9    # "arr$":[Lcom/google/bitcoin/core/PeerAddress;
    .restart local v10    # "chainFile":Ljava/io/File;
    .restart local v11    # "chainFileExists":Z
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v16    # "shouldReplayWallet":Z
    :cond_8
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->peerAddresses:[Lcom/google/bitcoin/core/PeerAddress;

    .line 242
    .end local v9    # "arr$":[Lcom/google/bitcoin/core/PeerAddress;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vChain:Lcom/google/bitcoin/core/BlockChain;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/BlockChain;->addWallet(Lcom/google/bitcoin/core/Wallet;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/PeerGroup;->addWallet(Lcom/google/bitcoin/core/Wallet;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/kits/WalletAppKit;->onSetupCompleted()V

    .line 246
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->blockingStartup:Z

    if-eqz v2, :cond_b

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/PeerGroup;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/PeerGroup;->awaitRunning()V

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/kits/WalletAppKit;->installShutdownHook()V

    .line 253
    new-instance v15, Lcom/google/bitcoin/core/DownloadListener;

    invoke-direct {v15}, Lcom/google/bitcoin/core/DownloadListener;-><init>()V

    .line 254
    .local v15, "listener":Lcom/google/bitcoin/core/DownloadListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v2, v15}, Lcom/google/bitcoin/core/PeerGroup;->startBlockChainDownload(Lcom/google/bitcoin/core/PeerEventListener;)V

    .line 255
    invoke-virtual {v15}, Lcom/google/bitcoin/core/DownloadListener;->await()V
    :try_end_4
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    .end local v15    # "listener":Lcom/google/bitcoin/core/DownloadListener;
    :goto_6
    if-eqz v21, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    .line 276
    :cond_9
    return-void

    .line 240
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    new-instance v3, Lcom/google/bitcoin/net/discovery/DnsDiscovery;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/bitcoin/kits/WalletAppKit;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v3, v4}, Lcom/google/bitcoin/net/discovery/DnsDiscovery;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/PeerGroup;->addPeerDiscovery(Lcom/google/bitcoin/net/discovery/PeerDiscovery;)V

    goto :goto_5

    .line 257
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/PeerGroup;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    new-instance v3, Lcom/google/bitcoin/kits/WalletAppKit$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/bitcoin/kits/WalletAppKit$1;-><init>(Lcom/google/bitcoin/kits/WalletAppKit;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/bitcoin/core/PeerGroup;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    :try_end_5
    .catch Lcom/google/bitcoin/store/BlockStoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 274
    .end local v21    # "walletStream":Ljava/io/FileInputStream;
    .restart local v22    # "walletStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v21, v22

    .end local v22    # "walletStream":Ljava/io/FileInputStream;
    .restart local v21    # "walletStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 271
    .end local v21    # "walletStream":Ljava/io/FileInputStream;
    .restart local v22    # "walletStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v12

    move-object/from16 v21, v22

    .end local v22    # "walletStream":Ljava/io/FileInputStream;
    .restart local v21    # "walletStream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v21    # "walletStream":Ljava/io/FileInputStream;
    .restart local v22    # "walletStream":Ljava/io/FileInputStream;
    :cond_c
    move-object/from16 v21, v22

    .end local v22    # "walletStream":Ljava/io/FileInputStream;
    .restart local v21    # "walletStream":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public store()Lcom/google/bitcoin/store/SPVBlockStore;
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/bitcoin/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/bitcoin/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call until startup is complete"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vStore:Lcom/google/bitcoin/store/SPVBlockStore;

    return-object v0

    .line 327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useTor()Lcom/google/bitcoin/kits/WalletAppKit;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->useTor:Z

    .line 167
    return-object p0
.end method

.method public wallet()Lcom/google/bitcoin/core/Wallet;
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/google/bitcoin/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/bitcoin/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot call until startup is complete"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/google/bitcoin/kits/WalletAppKit;->vWallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0

    .line 332
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

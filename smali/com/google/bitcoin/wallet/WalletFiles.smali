.class public Lcom/google/bitcoin/wallet/WalletFiles;
.super Ljava/lang/Object;
.source "WalletFiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/wallet/WalletFiles$Listener;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final delay:J

.field private final delayTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private final executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final file:Ljava/io/File;

.field private final savePending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final saver:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private volatile vListener:Lcom/google/bitcoin/wallet/WalletFiles$Listener;

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/bitcoin/wallet/WalletFiles;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/wallet/WalletFiles;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/Wallet;Ljava/io/File;JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "delay"    # J
    .param p5, "delayTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v6, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v2, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v2}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    invoke-virtual {v2, v6}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v2

    const-string v3, "Wallet autosave thread"

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setPriority(I)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    .line 74
    .local v0, "builder":Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    sget-object v1, Lcom/google/bitcoin/utils/Threading;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 75
    .local v1, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    .line 78
    :cond_0
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v2, p0, Lcom/google/bitcoin/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 79
    iget-object v2, p0, Lcom/google/bitcoin/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 80
    iget-object v2, p0, Lcom/google/bitcoin/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 81
    iget-object v2, p0, Lcom/google/bitcoin/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    .line 82
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/Wallet;

    iput-object v2, p0, Lcom/google/bitcoin/wallet/WalletFiles;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 84
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iput-object v2, p0, Lcom/google/bitcoin/wallet/WalletFiles;->file:Ljava/io/File;

    .line 85
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/google/bitcoin/wallet/WalletFiles;->savePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    iput-wide p3, p0, Lcom/google/bitcoin/wallet/WalletFiles;->delay:J

    .line 87
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/google/bitcoin/wallet/WalletFiles;->delayTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 89
    new-instance v2, Lcom/google/bitcoin/wallet/WalletFiles$1;

    invoke-direct {v2, p0, p1}, Lcom/google/bitcoin/wallet/WalletFiles$1;-><init>(Lcom/google/bitcoin/wallet/WalletFiles;Lcom/google/bitcoin/core/Wallet;)V

    iput-object v2, p0, Lcom/google/bitcoin/wallet/WalletFiles;->saver:Ljava/util/concurrent/Callable;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/wallet/WalletFiles;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/wallet/WalletFiles;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/bitcoin/wallet/WalletFiles;->savePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/bitcoin/wallet/WalletFiles;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/bitcoin/wallet/WalletFiles;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/wallet/WalletFiles;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/bitcoin/wallet/WalletFiles;->saveNowInternal()V

    return-void
.end method

.method private saveNowInternal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 120
    .local v2, "now":J
    iget-object v5, p0, Lcom/google/bitcoin/wallet/WalletFiles;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 121
    .local v0, "directory":Ljava/io/File;
    const-string v5, "wallet"

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 122
    .local v4, "temp":Ljava/io/File;
    iget-object v1, p0, Lcom/google/bitcoin/wallet/WalletFiles;->vListener:Lcom/google/bitcoin/wallet/WalletFiles$Listener;

    .line 123
    .local v1, "listener":Lcom/google/bitcoin/wallet/WalletFiles$Listener;
    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1, v4}, Lcom/google/bitcoin/wallet/WalletFiles$Listener;->onBeforeAutoSave(Ljava/io/File;)V

    .line 125
    :cond_0
    iget-object v5, p0, Lcom/google/bitcoin/wallet/WalletFiles;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v6, p0, Lcom/google/bitcoin/wallet/WalletFiles;->file:Ljava/io/File;

    invoke-virtual {v5, v4, v6}, Lcom/google/bitcoin/core/Wallet;->saveToFile(Ljava/io/File;Ljava/io/File;)V

    .line 126
    if-eqz v1, :cond_1

    .line 127
    iget-object v5, p0, Lcom/google/bitcoin/wallet/WalletFiles;->file:Ljava/io/File;

    invoke-interface {v1, v5}, Lcom/google/bitcoin/wallet/WalletFiles$Listener;->onAfterAutoSave(Ljava/io/File;)V

    .line 128
    :cond_1
    sget-object v5, Lcom/google/bitcoin/wallet/WalletFiles;->log:Lorg/slf4j/Logger;

    const-string v6, "Save completed in {}msec"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    return-void
.end method


# virtual methods
.method public saveLater()V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/bitcoin/wallet/WalletFiles;->savePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/google/bitcoin/wallet/WalletFiles;->saver:Ljava/util/concurrent/Callable;

    iget-wide v2, p0, Lcom/google/bitcoin/wallet/WalletFiles;->delay:J

    iget-object v4, p0, Lcom/google/bitcoin/wallet/WalletFiles;->delayTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public saveNow()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Lcom/google/bitcoin/wallet/WalletFiles;->log:Lorg/slf4j/Logger;

    const-string v1, "Saving wallet, last seen block is {}/{}"

    iget-object v2, p0, Lcom/google/bitcoin/wallet/WalletFiles;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/bitcoin/wallet/WalletFiles;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/google/bitcoin/wallet/WalletFiles;->saveNowInternal()V

    .line 116
    return-void
.end method

.method public setListener(Lcom/google/bitcoin/wallet/WalletFiles$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/wallet/WalletFiles$Listener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/wallet/WalletFiles$Listener;

    iput-object v0, p0, Lcom/google/bitcoin/wallet/WalletFiles;->vListener:Lcom/google/bitcoin/wallet/WalletFiles$Listener;

    .line 108
    return-void
.end method

.method public shutdownAndWait()V
    .locals 5

    .prologue
    .line 140
    iget-object v1, p0, Lcom/google/bitcoin/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide v2, 0x7fffffffffffffffL

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "x":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

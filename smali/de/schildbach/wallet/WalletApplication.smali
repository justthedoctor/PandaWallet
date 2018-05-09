.class public Lde/schildbach/wallet/WalletApplication;
.super Landroid/app/Application;
.source "WalletApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/WalletApplication$WalletAutosaveEventListener;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field private blockchainServiceCancelCoinsReceivedIntent:Landroid/content/Intent;

.field private blockchainServiceIntent:Landroid/content/Intent;

.field private blockchainServiceResetBlockchainIntent:Landroid/content/Intent;

.field private config:Lde/schildbach/wallet/Configuration;

.field private packageInfo:Landroid/content/pm/PackageInfo;

.field private wallet:Lcom/google/bitcoin/core/Wallet;

.field private walletFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Lde/schildbach/wallet/WalletApplication;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 193
    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/WalletApplication;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/WalletApplication;

    .prologue
    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private backupWallet()V
    .locals 13

    .prologue
    .line 377
    new-instance v5, Lcom/google/bitcoin/store/WalletProtobufSerializer;

    invoke-direct {v5}, Lcom/google/bitcoin/store/WalletProtobufSerializer;-><init>()V

    iget-object v6, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v5, v6}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->walletToProto(Lcom/google/bitcoin/core/Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$Wallet;->toBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    .line 380
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clearTransaction()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 381
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clearLastSeenBlockHash()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 382
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockHeight(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 383
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clearLastSeenBlockTimeSecs()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 384
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->build()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v3

    .line 386
    .local v3, "walletProto":Lorg/bitcoinj/wallet/Protos$Wallet;
    const/4 v2, 0x0

    .line 390
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_0
    sget-object v5, Lde/schildbach/wallet/Constants;->WALLET_KEY_BACKUP_PROTOBUF:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lde/schildbach/wallet/WalletApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 391
    invoke-virtual {v3, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 411
    :goto_0
    :try_start_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s.%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lde/schildbach/wallet/Constants;->WALLET_KEY_BACKUP_PROTOBUF:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v11, 0x5265c00

    div-long/2addr v9, v11

    const-wide/16 v11, 0x64

    rem-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Lde/schildbach/wallet/WalletApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 414
    invoke-virtual {v3, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 424
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 431
    .end local v1    # "filename":Ljava/lang/String;
    :goto_1
    return-void

    .line 393
    :catch_0
    move-exception v4

    .line 395
    .local v4, "x":Ljava/io/IOException;
    :try_start_4
    sget-object v5, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    const-string v6, "problem writing key backup"

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 401
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 403
    :catch_1
    move-exception v5

    goto :goto_0

    .line 399
    .end local v4    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 401
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 406
    :goto_2
    throw v5

    .line 416
    :catch_2
    move-exception v4

    .line 418
    .restart local v4    # "x":Ljava/io/IOException;
    :try_start_7
    sget-object v5, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    const-string v6, "problem writing key backup"

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 424
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 426
    :catch_3
    move-exception v5

    goto :goto_1

    .line 422
    .end local v4    # "x":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 424
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 429
    :goto_3
    throw v5

    .line 403
    :catch_4
    move-exception v5

    goto :goto_0

    :catch_5
    move-exception v6

    goto :goto_2

    .line 426
    .restart local v1    # "filename":Ljava/lang/String;
    :catch_6
    move-exception v5

    goto :goto_1

    .end local v1    # "filename":Ljava/lang/String;
    :catch_7
    move-exception v6

    goto :goto_3
.end method

.method private ensureKey()V
    .locals 4

    .prologue
    .line 333
    iget-object v2, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Wallet;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/ECKey;

    .line 334
    .local v1, "key":Lcom/google/bitcoin/core/ECKey;
    iget-object v2, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2, v1}, Lcom/google/bitcoin/core/Wallet;->isKeyRotating(Lcom/google/bitcoin/core/ECKey;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    .end local v1    # "key":Lcom/google/bitcoin/core/ECKey;
    :goto_0
    return-void

    .line 337
    :cond_1
    sget-object v2, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    const-string v3, "wallet has no usable key - creating"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lde/schildbach/wallet/WalletApplication;->addNewKeyToWallet()V

    goto :goto_0
.end method

.method public static httpUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "versionName"    # Ljava/lang/String;

    .prologue
    .line 527
    new-instance v0, Lcom/google/bitcoin/core/VersionMessage;

    sget-object v1, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/VersionMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;I)V

    .line 528
    .local v0, "versionMessage":Lcom/google/bitcoin/core/VersionMessage;
    const-string v1, "Pandacoin Wallet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/bitcoin/core/VersionMessage;->appendToSubVer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v1, v0, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    return-object v1
.end method

.method private initLogging()V
    .locals 12

    .prologue
    .line 146
    const-string v11, "log"

    sget-boolean v10, Lde/schildbach/wallet/Constants;->TEST:Z

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {p0, v11, v10}, Lde/schildbach/wallet/WalletApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 147
    .local v4, "logDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v10, "wallet.log"

    invoke-direct {v5, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v5, "logFile":Ljava/io/File;
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    .line 151
    .local v0, "context":Lch/qos/logback/classic/LoggerContext;
    new-instance v2, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-direct {v2}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;-><init>()V

    .line 152
    .local v2, "filePattern":Lch/qos/logback/classic/encoder/PatternLayoutEncoder;
    invoke-virtual {v2, v0}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setContext(Lch/qos/logback/core/Context;)V

    .line 153
    const-string v10, "%d{HH:mm:ss.SSS} [%thread] %logger{0} - %msg%n"

    invoke-virtual {v2, v10}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setPattern(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->start()V

    .line 156
    new-instance v1, Lch/qos/logback/core/rolling/RollingFileAppender;

    invoke-direct {v1}, Lch/qos/logback/core/rolling/RollingFileAppender;-><init>()V

    .line 157
    .local v1, "fileAppender":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    invoke-virtual {v1, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->setContext(Lch/qos/logback/core/Context;)V

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lch/qos/logback/core/rolling/RollingFileAppender;->setFile(Ljava/lang/String;)V

    .line 160
    new-instance v9, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;

    invoke-direct {v9}, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;-><init>()V

    .line 161
    .local v9, "rollingPolicy":Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;, "Lch/qos/logback/core/rolling/TimeBasedRollingPolicy<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    invoke-virtual {v9, v0}, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->setContext(Lch/qos/logback/core/Context;)V

    .line 162
    invoke-virtual {v9, v1}, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->setParent(Lch/qos/logback/core/FileAppender;)V

    .line 163
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/wallet.%d.log.gz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->setFileNamePattern(Ljava/lang/String;)V

    .line 164
    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->setMaxHistory(I)V

    .line 165
    invoke-virtual {v9}, Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;->start()V

    .line 167
    invoke-virtual {v1, v2}, Lch/qos/logback/core/rolling/RollingFileAppender;->setEncoder(Lch/qos/logback/core/encoder/Encoder;)V

    .line 168
    invoke-virtual {v1, v9}, Lch/qos/logback/core/rolling/RollingFileAppender;->setRollingPolicy(Lch/qos/logback/core/rolling/RollingPolicy;)V

    .line 169
    invoke-virtual {v1}, Lch/qos/logback/core/rolling/RollingFileAppender;->start()V

    .line 171
    new-instance v8, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-direct {v8}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;-><init>()V

    .line 172
    .local v8, "logcatTagPattern":Lch/qos/logback/classic/encoder/PatternLayoutEncoder;
    invoke-virtual {v8, v0}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setContext(Lch/qos/logback/core/Context;)V

    .line 173
    const-string v10, "%logger{0}"

    invoke-virtual {v8, v10}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setPattern(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v8}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->start()V

    .line 176
    new-instance v7, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-direct {v7}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;-><init>()V

    .line 177
    .local v7, "logcatPattern":Lch/qos/logback/classic/encoder/PatternLayoutEncoder;
    invoke-virtual {v7, v0}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setContext(Lch/qos/logback/core/Context;)V

    .line 178
    const-string v10, "[%thread] %msg%n"

    invoke-virtual {v7, v10}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setPattern(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v7}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->start()V

    .line 181
    new-instance v6, Lch/qos/logback/classic/android/LogcatAppender;

    invoke-direct {v6}, Lch/qos/logback/classic/android/LogcatAppender;-><init>()V

    .line 182
    .local v6, "logcatAppender":Lch/qos/logback/classic/android/LogcatAppender;
    invoke-virtual {v6, v0}, Lch/qos/logback/classic/android/LogcatAppender;->setContext(Lch/qos/logback/core/Context;)V

    .line 183
    invoke-virtual {v6, v8}, Lch/qos/logback/classic/android/LogcatAppender;->setTagEncoder(Lch/qos/logback/classic/encoder/PatternLayoutEncoder;)V

    .line 184
    invoke-virtual {v6, v7}, Lch/qos/logback/classic/android/LogcatAppender;->setEncoder(Lch/qos/logback/classic/encoder/PatternLayoutEncoder;)V

    .line 185
    invoke-virtual {v6}, Lch/qos/logback/classic/android/LogcatAppender;->start()V

    .line 187
    const-string v10, "ROOT"

    invoke-virtual {v0, v10}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v3

    .line 188
    .local v3, "log":Lch/qos/logback/classic/Logger;
    invoke-virtual {v3, v1}, Lch/qos/logback/classic/Logger;->addAppender(Lch/qos/logback/core/Appender;)V

    .line 189
    invoke-virtual {v3, v6}, Lch/qos/logback/classic/Logger;->addAppender(Lch/qos/logback/core/Appender;)V

    .line 190
    sget-object v10, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    invoke-virtual {v3, v10}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    .line 191
    return-void

    .line 146
    .end local v0    # "context":Lch/qos/logback/classic/LoggerContext;
    .end local v1    # "fileAppender":Lch/qos/logback/core/rolling/RollingFileAppender;, "Lch/qos/logback/core/rolling/RollingFileAppender<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    .end local v2    # "filePattern":Lch/qos/logback/classic/encoder/PatternLayoutEncoder;
    .end local v3    # "log":Lch/qos/logback/classic/Logger;
    .end local v4    # "logDir":Ljava/io/File;
    .end local v5    # "logFile":Ljava/io/File;
    .end local v6    # "logcatAppender":Lch/qos/logback/classic/android/LogcatAppender;
    .end local v7    # "logcatPattern":Lch/qos/logback/classic/encoder/PatternLayoutEncoder;
    .end local v8    # "logcatTagPattern":Lch/qos/logback/classic/encoder/PatternLayoutEncoder;
    .end local v9    # "rollingPolicy":Lch/qos/logback/core/rolling/TimeBasedRollingPolicy;, "Lch/qos/logback/core/rolling/TimeBasedRollingPolicy<Lch/qos/logback/classic/spi/ILoggingEvent;>;"
    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private loadWalletFromProtobuf()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 221
    iget-object v7, p0, Lde/schildbach/wallet/WalletApplication;->walletFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 225
    .local v2, "start":J
    const/4 v4, 0x0

    .line 229
    .local v4, "walletStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v7, p0, Lde/schildbach/wallet/WalletApplication;->walletFile:Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/bitcoin/store/UnreadableWalletException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v4    # "walletStream":Ljava/io/FileInputStream;
    .local v5, "walletStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Lcom/google/bitcoin/store/WalletProtobufSerializer;

    invoke-direct {v7}, Lcom/google/bitcoin/store/WalletProtobufSerializer;-><init>()V

    invoke-virtual {v7, v5}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->readWallet(Ljava/io/InputStream;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v7

    iput-object v7, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 233
    sget-object v7, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wallet loaded from: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lde/schildbach/wallet/WalletApplication;->walletFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/google/bitcoin/store/UnreadableWalletException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    if-eqz v5, :cond_7

    .line 257
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 266
    .end local v5    # "walletStream":Ljava/io/FileInputStream;
    .restart local v4    # "walletStream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    iget-object v7, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Wallet;->isConsistent()Z

    move-result v7

    if-nez v7, :cond_1

    .line 268
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inconsistent wallet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lde/schildbach/wallet/WalletApplication;->walletFile:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 270
    invoke-direct {p0}, Lde/schildbach/wallet/WalletApplication;->restoreWalletFromBackup()Lcom/google/bitcoin/core/Wallet;

    move-result-object v7

    iput-object v7, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 273
    :cond_1
    iget-object v7, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v7

    sget-object v8, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v7, v8}, Lcom/google/bitcoin/core/NetworkParameters;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 274
    new-instance v7, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad wallet network parameters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v9}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 259
    .end local v4    # "walletStream":Ljava/io/FileInputStream;
    .restart local v5    # "walletStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v4, v5

    .line 262
    .end local v5    # "walletStream":Ljava/io/FileInputStream;
    .restart local v4    # "walletStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 235
    :catch_1
    move-exception v6

    .line 237
    .local v6, "x":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v7, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    const-string v8, "problem loading wallet"

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 241
    invoke-direct {p0}, Lde/schildbach/wallet/WalletApplication;->restoreWalletFromBackup()Lcom/google/bitcoin/core/Wallet;

    move-result-object v7

    iput-object v7, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    if-eqz v4, :cond_0

    .line 257
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 259
    :catch_2
    move-exception v7

    goto/16 :goto_0

    .line 243
    .end local v6    # "x":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    .line 245
    .local v6, "x":Lcom/google/bitcoin/store/UnreadableWalletException;
    :goto_2
    :try_start_5
    sget-object v7, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    const-string v8, "problem loading wallet"

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 249
    invoke-direct {p0}, Lde/schildbach/wallet/WalletApplication;->restoreWalletFromBackup()Lcom/google/bitcoin/core/Wallet;

    move-result-object v7

    iput-object v7, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 253
    if-eqz v4, :cond_0

    .line 257
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 259
    :catch_4
    move-exception v7

    goto/16 :goto_0

    .line 253
    .end local v6    # "x":Lcom/google/bitcoin/store/UnreadableWalletException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_2

    .line 257
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 262
    :cond_2
    :goto_4
    throw v7

    .line 278
    .end local v2    # "start":J
    .end local v4    # "walletStream":Ljava/io/FileInputStream;
    :cond_3
    new-instance v7, Lcom/google/bitcoin/core/Wallet;

    sget-object v8, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v7, v8}, Lcom/google/bitcoin/core/Wallet;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    iput-object v7, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 280
    sget-object v7, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    const-string v8, "new wallet created"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 284
    :cond_4
    iget-object v7, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Wallet;->getKeys()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/ECKey;

    .line 285
    .local v1, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v7

    if-nez v7, :cond_5

    .line 286
    new-instance v7, Ljava/lang/Error;

    const-string v8, "found read-only key, but wallet is likely an encrypted wallet from the future"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 259
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Lcom/google/bitcoin/core/ECKey;
    .restart local v2    # "start":J
    .restart local v4    # "walletStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v8

    goto :goto_4

    .line 287
    .end local v2    # "start":J
    .end local v4    # "walletStream":Ljava/io/FileInputStream;
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void

    .line 253
    .end local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "start":J
    .restart local v5    # "walletStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "walletStream":Ljava/io/FileInputStream;
    .restart local v4    # "walletStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 243
    .end local v4    # "walletStream":Ljava/io/FileInputStream;
    .restart local v5    # "walletStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    move-object v4, v5

    .end local v5    # "walletStream":Ljava/io/FileInputStream;
    .restart local v4    # "walletStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 235
    .end local v4    # "walletStream":Ljava/io/FileInputStream;
    .restart local v5    # "walletStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5    # "walletStream":Ljava/io/FileInputStream;
    .restart local v4    # "walletStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v4    # "walletStream":Ljava/io/FileInputStream;
    .restart local v5    # "walletStream":Ljava/io/FileInputStream;
    :cond_7
    move-object v4, v5

    .end local v5    # "walletStream":Ljava/io/FileInputStream;
    .restart local v4    # "walletStream":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method private migrateBackup()V
    .locals 6

    .prologue
    .line 435
    sget-object v4, Lde/schildbach/wallet/Constants;->WALLET_KEY_BACKUP_PROTOBUF:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lde/schildbach/wallet/WalletApplication;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 437
    sget-object v4, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    const-string v5, "migrating automatic backup to protobuf"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 440
    invoke-direct {p0}, Lde/schildbach/wallet/WalletApplication;->backupWallet()V

    .line 443
    invoke-virtual {p0}, Lde/schildbach/wallet/WalletApplication;->fileList()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 444
    .local v1, "filename":Ljava/lang/String;
    sget-object v4, Lde/schildbach/wallet/Constants;->WALLET_KEY_BACKUP_BASE58:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lde/schildbach/wallet/WalletApplication;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 443
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    return-void
.end method

.method public static packageInfoFromContext(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 501
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 503
    :catch_0
    move-exception v0

    .line 505
    .local v0, "x":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private protobufSerializeWallet(Lcom/google/bitcoin/core/Wallet;)V
    .locals 6
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 366
    .local v0, "start":J
    iget-object v2, p0, Lde/schildbach/wallet/WalletApplication;->walletFile:Ljava/io/File;

    invoke-virtual {p1, v2}, Lcom/google/bitcoin/core/Wallet;->saveToFile(Ljava/io/File;)V

    .line 369
    sget-boolean v2, Lde/schildbach/wallet/Constants;->TEST:Z

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lde/schildbach/wallet/WalletApplication;->walletFile:Ljava/io/File;

    const/16 v3, 0x1ff

    invoke-static {v2, v3}, Lde/schildbach/wallet/util/Io;->chmod(Ljava/io/File;I)V

    .line 372
    :cond_0
    sget-object v2, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wallet saved to: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/schildbach/wallet/WalletApplication;->walletFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private restoreWalletFromBackup()Lcom/google/bitcoin/core/Wallet;
    .locals 6

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 295
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v3, Lde/schildbach/wallet/Constants;->WALLET_KEY_BACKUP_PROTOBUF:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lde/schildbach/wallet/WalletApplication;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 297
    new-instance v3, Lcom/google/bitcoin/store/WalletProtobufSerializer;

    invoke-direct {v3}, Lcom/google/bitcoin/store/WalletProtobufSerializer;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->readWallet(Ljava/io/InputStream;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v1

    .line 299
    .local v1, "wallet":Lcom/google/bitcoin/core/Wallet;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Wallet;->isConsistent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    new-instance v3, Ljava/lang/Error;

    const-string v4, "inconsistent backup"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/store/UnreadableWalletException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v1    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :catch_0
    move-exception v2

    .line 312
    .local v2, "x":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/Error;

    const-string v4, "cannot read backup"

    invoke-direct {v3, v4, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    .end local v2    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 322
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 327
    :goto_0
    throw v3

    .line 302
    .restart local v1    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lde/schildbach/wallet/WalletApplication;->resetBlockchain()V

    .line 304
    const v3, 0x7f0b000b

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 306
    sget-object v3, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wallet restored from backup: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lde/schildbach/wallet/Constants;->WALLET_KEY_BACKUP_PROTOBUF:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/bitcoin/store/UnreadableWalletException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 327
    :goto_1
    return-object v1

    .line 314
    .end local v1    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :catch_1
    move-exception v2

    .line 316
    .local v2, "x":Lcom/google/bitcoin/store/UnreadableWalletException;
    :try_start_5
    new-instance v3, Ljava/lang/Error;

    const-string v4, "cannot read backup"

    invoke-direct {v3, v4, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 324
    .end local v2    # "x":Lcom/google/bitcoin/store/UnreadableWalletException;
    .restart local v1    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :catch_2
    move-exception v3

    goto :goto_1

    .end local v1    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public static scheduleStartBlockchainService(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 548
    new-instance v9, Lde/schildbach/wallet/Configuration;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v9, v1}, Lde/schildbach/wallet/Configuration;-><init>(Landroid/content/SharedPreferences;)V

    .line 549
    .local v9, "config":Lde/schildbach/wallet/Configuration;
    invoke-virtual {v9}, Lde/schildbach/wallet/Configuration;->getLastUsedAgo()J

    move-result-wide v10

    .line 553
    .local v10, "lastUsedAgo":J
    const-wide/32 v1, 0x36ee80

    cmp-long v1, v10, v1

    if-gez v1, :cond_0

    .line 554
    const-wide/32 v7, 0xdbba0

    .line 560
    .local v7, "alarmInterval":J
    :goto_0
    sget-object v1, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    const-string v2, "last used {} minutes ago, rescheduling blockchain sync in roughly {} minutes"

    const-wide/32 v3, 0xea60

    div-long v3, v10, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0xea60

    div-long v4, v7, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 563
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 564
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 565
    .local v6, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 569
    .local v12, "now":J
    const/4 v1, 0x0

    add-long v2, v12, v7

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 570
    return-void

    .line 555
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v6    # "alarmIntent":Landroid/app/PendingIntent;
    .end local v7    # "alarmInterval":J
    .end local v12    # "now":J
    :cond_0
    const-wide/32 v1, 0xa4cb800

    cmp-long v1, v10, v1

    if-gez v1, :cond_1

    .line 556
    const-wide/32 v7, 0x2932e00

    .restart local v7    # "alarmInterval":J
    goto :goto_0

    .line 558
    .end local v7    # "alarmInterval":J
    :cond_1
    const-wide/32 v7, 0x5265c00

    .restart local v7    # "alarmInterval":J
    goto :goto_0
.end method


# virtual methods
.method public addNewKeyToWallet()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    new-instance v1, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v1}, Lcom/google/bitcoin/core/ECKey;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->addKey(Lcom/google/bitcoin/core/ECKey;)Z

    .line 345
    invoke-direct {p0}, Lde/schildbach/wallet/WalletApplication;->backupWallet()V

    .line 347
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0}, Lde/schildbach/wallet/Configuration;->armBackupReminder()V

    .line 348
    return-void
.end method

.method public final applicationPackageFlavor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 516
    invoke-virtual {p0}, Lde/schildbach/wallet/WalletApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "packageName":Ljava/lang/String;
    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 519
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 520
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 522
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 4
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lde/schildbach/wallet/service/BlockchainService;->ACTION_BROADCAST_TRANSACTION:Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hash"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0, v0}, Lde/schildbach/wallet/WalletApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 495
    return-void
.end method

.method public determineSelectedAddress()Lcom/google/bitcoin/core/Address;
    .locals 6

    .prologue
    .line 451
    iget-object v5, p0, Lde/schildbach/wallet/WalletApplication;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v5}, Lde/schildbach/wallet/Configuration;->getSelectedAddress()Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, "selectedAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .line 454
    .local v1, "firstAddress":Lcom/google/bitcoin/core/Address;
    iget-object v5, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Wallet;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/bitcoin/core/ECKey;

    .line 456
    .local v3, "key":Lcom/google/bitcoin/core/ECKey;
    iget-object v5, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v5, v3}, Lcom/google/bitcoin/core/Wallet;->isKeyRotating(Lcom/google/bitcoin/core/ECKey;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 458
    sget-object v5, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v3, v5}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v0

    .line 460
    .local v0, "address":Lcom/google/bitcoin/core/Address;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 468
    .end local v0    # "address":Lcom/google/bitcoin/core/Address;
    .end local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :goto_1
    return-object v0

    .line 463
    .restart local v0    # "address":Lcom/google/bitcoin/core/Address;
    .restart local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_1
    if-nez v1, :cond_0

    .line 464
    move-object v1, v0

    goto :goto_0

    .end local v0    # "address":Lcom/google/bitcoin/core/Address;
    .end local v3    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_2
    move-object v0, v1

    .line 468
    goto :goto_1
.end method

.method public getConfiguration()Lde/schildbach/wallet/Configuration;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->config:Lde/schildbach/wallet/Configuration;

    return-object v0
.end method

.method public getWallet()Lcom/google/bitcoin/core/Wallet;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0
.end method

.method public httpUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lde/schildbach/wallet/WalletApplication;->packageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lde/schildbach/wallet/WalletApplication;->httpUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public maxConnectedPeers()I
    .locals 2

    .prologue
    .line 539
    iget-object v1, p0, Lde/schildbach/wallet/WalletApplication;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 540
    .local v0, "memoryClass":I
    const/16 v1, 0x30

    if-gt v0, v1, :cond_0

    .line 541
    const/4 v1, 0x4

    .line 543
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x6

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 95
    new-instance v0, Lde/schildbach/wallet/util/LinuxSecureRandom;

    invoke-direct {v0}, Lde/schildbach/wallet/util/LinuxSecureRandom;-><init>()V

    .line 97
    invoke-direct {p0}, Lde/schildbach/wallet/WalletApplication;->initLogging()V

    .line 99
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 101
    invoke-static {}, Lcom/google/bitcoin/utils/Threading;->throwOnLockCycles()V

    .line 103
    sget-object v1, Lde/schildbach/wallet/WalletApplication;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lde/schildbach/wallet/Constants;->TEST:Z

    if-eqz v0, :cond_0

    const-string v0, "test"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 105
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 107
    invoke-static {p0}, Lde/schildbach/wallet/WalletApplication;->packageInfoFromContext(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/WalletApplication;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 109
    invoke-virtual {p0}, Lde/schildbach/wallet/WalletApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lde/schildbach/wallet/util/CrashReporter;->init(Ljava/io/File;)V

    .line 111
    new-instance v0, Lde/schildbach/wallet/WalletApplication$1;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/WalletApplication$1;-><init>(Lde/schildbach/wallet/WalletApplication;)V

    sput-object v0, Lcom/google/bitcoin/utils/Threading;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 121
    new-instance v0, Lde/schildbach/wallet/Configuration;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/schildbach/wallet/Configuration;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lde/schildbach/wallet/WalletApplication;->config:Lde/schildbach/wallet/Configuration;

    .line 122
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/WalletApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lde/schildbach/wallet/WalletApplication;->activityManager:Landroid/app/ActivityManager;

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lde/schildbach/wallet/WalletApplication;->blockchainServiceIntent:Landroid/content/Intent;

    .line 125
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lde/schildbach/wallet/service/BlockchainService;->ACTION_CANCEL_COINS_RECEIVED:Ljava/lang/String;

    const-class v2, Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {v0, v1, v6, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lde/schildbach/wallet/WalletApplication;->blockchainServiceCancelCoinsReceivedIntent:Landroid/content/Intent;

    .line 127
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lde/schildbach/wallet/service/BlockchainService;->ACTION_RESET_BLOCKCHAIN:Ljava/lang/String;

    const-class v2, Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {v0, v1, v6, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lde/schildbach/wallet/WalletApplication;->blockchainServiceResetBlockchainIntent:Landroid/content/Intent;

    .line 129
    sget-object v0, Lde/schildbach/wallet/Constants;->WALLET_FILENAME_PROTOBUF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/WalletApplication;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/WalletApplication;->walletFile:Ljava/io/File;

    .line 131
    invoke-direct {p0}, Lde/schildbach/wallet/WalletApplication;->loadWalletFromProtobuf()V

    .line 132
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v1, p0, Lde/schildbach/wallet/WalletApplication;->walletFile:Ljava/io/File;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Lde/schildbach/wallet/WalletApplication$WalletAutosaveEventListener;

    invoke-direct {v5, v6}, Lde/schildbach/wallet/WalletApplication$WalletAutosaveEventListener;-><init>(Lde/schildbach/wallet/WalletApplication$1;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/bitcoin/core/Wallet;->autosaveToFile(Ljava/io/File;JLjava/util/concurrent/TimeUnit;Lcom/google/bitcoin/wallet/WalletFiles$Listener;)Lcom/google/bitcoin/wallet/WalletFiles;

    .line 135
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Wallet;->cleanup()V

    .line 137
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->config:Lde/schildbach/wallet/Configuration;

    iget-object v1, p0, Lde/schildbach/wallet/WalletApplication;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/Configuration;->updateLastVersionCode(I)V

    .line 139
    invoke-direct {p0}, Lde/schildbach/wallet/WalletApplication;->ensureKey()V

    .line 141
    invoke-direct {p0}, Lde/schildbach/wallet/WalletApplication;->migrateBackup()V

    .line 142
    return-void

    .line 103
    :cond_0
    const-string v0, "prod"

    goto/16 :goto_0
.end method

.method public packageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public resetBlockchain()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->blockchainServiceResetBlockchainIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/WalletApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 488
    return-void
.end method

.method public saveWallet()V
    .locals 2

    .prologue
    .line 354
    :try_start_0
    iget-object v1, p0, Lde/schildbach/wallet/WalletApplication;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-direct {p0, v1}, Lde/schildbach/wallet/WalletApplication;->protobufSerializeWallet(Lcom/google/bitcoin/core/Wallet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 358
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startBlockchainService(Z)V
    .locals 1
    .param p1, "cancelCoinsReceived"    # Z

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .line 474
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->blockchainServiceCancelCoinsReceivedIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/WalletApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 477
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->blockchainServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/WalletApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public stopBlockchainService()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lde/schildbach/wallet/WalletApplication;->blockchainServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/WalletApplication;->stopService(Landroid/content/Intent;)Z

    .line 482
    return-void
.end method

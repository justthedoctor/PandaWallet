.class public Lcom/google/bitcoin/store/WalletProtobufSerializer;
.super Ljava/lang/Object;
.source "WalletProtobufSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/store/WalletProtobufSerializer$1;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private requireMandatoryExtensions:Z

.field protected txMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/google/bitcoin/store/WalletProtobufSerializer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->requireMandatoryExtensions:Z

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    .line 81
    return-void
.end method

.method public static byteStringToHash(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/core/Sha256Hash;
    .locals 2
    .param p0, "bs"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 354
    new-instance v0, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    return-object v0
.end method

.method private connectTransactionOutputs(Lorg/bitcoinj/wallet/Protos$Transaction;)Lcom/google/bitcoin/wallet/WalletTransaction;
    .locals 17
    .param p1, "txProto"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/UnreadableWalletException;
        }
    .end annotation

    .prologue
    .line 582
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/bitcoin/core/Transaction;

    .line 584
    .local v11, "tx":Lcom/google/bitcoin/core/Transaction;
    sget-object v12, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getPool()Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 598
    new-instance v12, Lcom/google/bitcoin/store/UnreadableWalletException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown transaction pool: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getPool()Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 585
    :pswitch_0
    sget-object v6, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->DEAD:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    .line 600
    .local v6, "pool":Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v11}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_2

    .line 601
    invoke-virtual {v11}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/TransactionOutput;

    .line 602
    .local v5, "output":Lcom/google/bitcoin/core/TransactionOutput;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v10

    .line 603
    .local v10, "transactionOutput":Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasSpentByTransactionHash()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 604
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSpentByTransactionHash()Lcom/google/protobuf/ByteString;

    move-result-object v9

    .line 605
    .local v9, "spentByTransactionHash":Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/bitcoin/core/Transaction;

    .line 606
    .local v8, "spendingTx":Lcom/google/bitcoin/core/Transaction;
    if-nez v8, :cond_0

    .line 607
    new-instance v12, Lcom/google/bitcoin/store/UnreadableWalletException;

    const-string v13, "Could not connect %s to %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v11}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 586
    .end local v3    # "i":I
    .end local v5    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v6    # "pool":Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    .end local v8    # "spendingTx":Lcom/google/bitcoin/core/Transaction;
    .end local v9    # "spentByTransactionHash":Lcom/google/protobuf/ByteString;
    .end local v10    # "transactionOutput":Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    :pswitch_1
    sget-object v6, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    .restart local v6    # "pool":Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    goto :goto_0

    .line 587
    .end local v6    # "pool":Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    :pswitch_2
    sget-object v6, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->SPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    .restart local v6    # "pool":Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    goto :goto_0

    .line 588
    .end local v6    # "pool":Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    :pswitch_3
    sget-object v6, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->UNSPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    .restart local v6    # "pool":Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    goto :goto_0

    .line 595
    .end local v6    # "pool":Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    :pswitch_4
    sget-object v6, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    .line 596
    .restart local v6    # "pool":Lcom/google/bitcoin/wallet/WalletTransaction$Pool;
    goto :goto_0

    .line 610
    .restart local v3    # "i":I
    .restart local v5    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .restart local v8    # "spendingTx":Lcom/google/bitcoin/core/Transaction;
    .restart local v9    # "spentByTransactionHash":Lcom/google/protobuf/ByteString;
    .restart local v10    # "transactionOutput":Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    :cond_0
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSpentByTransactionIndex()I

    move-result v7

    .line 611
    .local v7, "spendingIndex":I
    invoke-virtual {v8, v7}, Lcom/google/bitcoin/core/Transaction;->getInput(I)Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v12

    invoke-static {v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/TransactionInput;

    .line 612
    .local v4, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v4, v5}, Lcom/google/bitcoin/core/TransactionInput;->connect(Lcom/google/bitcoin/core/TransactionOutput;)V

    .line 600
    .end local v4    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v7    # "spendingIndex":I
    .end local v8    # "spendingTx":Lcom/google/bitcoin/core/Transaction;
    .end local v9    # "spentByTransactionHash":Lcom/google/protobuf/ByteString;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 616
    .end local v5    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v10    # "transactionOutput":Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasConfidence()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 617
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v2

    .line 618
    .local v2, "confidenceProto":Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    invoke-virtual {v11}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v1

    .line 619
    .local v1, "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v1}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->readConfidence(Lcom/google/bitcoin/core/Transaction;Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lcom/google/bitcoin/core/TransactionConfidence;)V

    .line 622
    .end local v1    # "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    .end local v2    # "confidenceProto":Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    :cond_3
    new-instance v12, Lcom/google/bitcoin/wallet/WalletTransaction;

    invoke-direct {v12, v6, v11}, Lcom/google/bitcoin/wallet/WalletTransaction;-><init>(Lcom/google/bitcoin/wallet/WalletTransaction$Pool;Lcom/google/bitcoin/core/Transaction;)V

    return-object v12

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static getProtoPool(Lcom/google/bitcoin/wallet/WalletTransaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 2
    .param p0, "wtx"    # Lcom/google/bitcoin/wallet/WalletTransaction;

    .prologue
    .line 296
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$wallet$WalletTransaction$Pool:[I

    invoke-virtual {p0}, Lcom/google/bitcoin/wallet/WalletTransaction;->getPool()Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 302
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :pswitch_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 300
    :goto_0
    return-object v0

    .line 298
    :pswitch_1
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    goto :goto_0

    .line 299
    :pswitch_2
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    goto :goto_0

    .line 300
    :pswitch_3
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static hashToByteString(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static isWallet(Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 710
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 711
    .local v0, "cis":Lcom/google/protobuf/CodedInputStream;
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 712
    .local v3, "tag":I
    invoke-static {v3}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 713
    .local v1, "field":I
    if-eq v1, v5, :cond_0

    .line 718
    .end local v0    # "cis":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "field":I
    .end local v3    # "tag":I
    :goto_0
    return v6

    .line 715
    .restart local v0    # "cis":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "field":I
    .restart local v3    # "tag":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "network":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/bitcoin/core/NetworkParameters;->fromID(Ljava/lang/String;)Lcom/google/bitcoin/core/NetworkParameters;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_1

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    .line 717
    .end local v0    # "cis":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "field":I
    .end local v2    # "network":Ljava/lang/String;
    .end local v3    # "tag":I
    :catch_0
    move-exception v4

    .line 718
    .local v4, "x":Ljava/io/IOException;
    goto :goto_0
.end method

.method private loadExtensions(Lcom/google/bitcoin/core/Wallet;Lorg/bitcoinj/wallet/Protos$Wallet;)V
    .locals 9
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "walletProto"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/UnreadableWalletException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v3

    .line 489
    .local v3, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/bitcoin/core/WalletExtension;>;"
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Wallet;->getExtensionList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/Protos$Extension;

    .line 490
    .local v1, "extProto":Lorg/bitcoinj/wallet/Protos$Extension;
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Extension;->getId()Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, "id":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/WalletExtension;

    .line 492
    .local v2, "extension":Lcom/google/bitcoin/core/WalletExtension;
    if-nez v2, :cond_2

    .line 493
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Extension;->getMandatory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 494
    iget-boolean v6, p0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->requireMandatoryExtensions:Z

    if-eqz v6, :cond_1

    .line 495
    new-instance v6, Lcom/google/bitcoin/store/UnreadableWalletException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown mandatory extension in wallet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 497
    :cond_1
    sget-object v6, Lcom/google/bitcoin/store/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string v7, "Unknown extension in wallet {}, ignoring"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 500
    :cond_2
    sget-object v6, Lcom/google/bitcoin/store/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string v7, "Loading wallet extension {}"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    :try_start_0
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Extension;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-interface {v2, p1, v6}, Lcom/google/bitcoin/core/WalletExtension;->deserializeWalletExtension(Lcom/google/bitcoin/core/Wallet;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Extension;->getMandatory()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->requireMandatoryExtensions:Z

    if-eqz v6, :cond_3

    .line 505
    new-instance v6, Lcom/google/bitcoin/store/UnreadableWalletException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse mandatory extension in wallet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 507
    :cond_3
    sget-object v6, Lcom/google/bitcoin/store/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string v7, "Error whilst reading extension {}, ignoring: {}"

    invoke-interface {v6, v7, v5, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 511
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "extProto":Lorg/bitcoinj/wallet/Protos$Extension;
    .end local v2    # "extension":Lcom/google/bitcoin/core/WalletExtension;
    .end local v5    # "id":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static makeTxProto(Lcom/google/bitcoin/wallet/WalletTransaction;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 21
    .param p0, "wtx"    # Lcom/google/bitcoin/wallet/WalletTransaction;

    .prologue
    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/google/bitcoin/wallet/WalletTransaction;->getTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v15

    .line 226
    .local v15, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v16

    .line 228
    .local v16, "txBuilder":Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    invoke-static/range {p0 .. p0}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->getProtoPool(Lcom/google/bitcoin/wallet/WalletTransaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setPool(Lorg/bitcoinj/wallet/Protos$Transaction$Pool;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v17

    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->hashToByteString(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v17

    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getVersion()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setVersion(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 232
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 233
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setUpdatedAt(J)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 236
    :cond_0
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getLockTime()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_1

    .line 237
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getLockTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setLockTime(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 241
    :cond_1
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/bitcoin/core/TransactionInput;

    .line 242
    .local v7, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v17

    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionInput;->getScriptBytes()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v17

    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/TransactionOutPoint;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->hashToByteString(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setTransactionOutPointHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v17

    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionInput;->getOutpoint()Lcom/google/bitcoin/core/TransactionOutPoint;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/TransactionOutPoint;->getIndex()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setTransactionOutPointIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v8

    .line 246
    .local v8, "inputBuilder":Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionInput;->hasSequence()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 247
    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionInput;->getSequenceNumber()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->setSequence(I)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 249
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->addTransactionInput(Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    goto :goto_0

    .line 253
    .end local v7    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v8    # "inputBuilder":Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    :cond_3
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/bitcoin/core/TransactionOutput;

    .line 254
    .local v9, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v17

    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptBytes()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setScriptBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v17

    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setValue(J)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v10

    .line 257
    .local v10, "outputBuilder":Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    invoke-virtual {v9}, Lcom/google/bitcoin/core/TransactionOutput;->getSpentBy()Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v13

    .line 258
    .local v13, "spentBy":Lcom/google/bitcoin/core/TransactionInput;
    if-eqz v13, :cond_4

    .line 259
    invoke-virtual {v13}, Lcom/google/bitcoin/core/TransactionInput;->getParentTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v12

    .line 260
    .local v12, "spendingHash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v13}, Lcom/google/bitcoin/core/TransactionInput;->getParentTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 261
    .local v14, "spentByTransactionIndex":I
    invoke-static {v12}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->hashToByteString(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setSpentByTransactionHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->setSpentByTransactionIndex(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 264
    .end local v12    # "spendingHash":Lcom/google/bitcoin/core/Sha256Hash;
    .end local v14    # "spentByTransactionIndex":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->addTransactionOutput(Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    goto :goto_1

    .line 268
    .end local v9    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v10    # "outputBuilder":Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .end local v13    # "spentBy":Lcom/google/bitcoin/core/TransactionInput;
    :cond_5
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getAppearsInHashes()Ljava/util/Map;

    move-result-object v2

    .line 269
    .local v2, "appearsInHashes":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/bitcoin/core/Sha256Hash;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_6

    .line 270
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 271
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/bitcoin/core/Sha256Hash;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-static/range {v17 .. v17}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->hashToByteString(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->addBlockHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 272
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->addBlockRelativityOffsets(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    goto :goto_2

    .line 276
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/bitcoin/core/Sha256Hash;Ljava/lang/Integer;>;"
    :cond_6
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->hasConfidence()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 277
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v3

    .line 278
    .local v3, "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v4

    .line 279
    .local v4, "confidenceBuilder":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    move-object/from16 v0, v16

    invoke-static {v0, v3, v4}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->writeConfidence(Lorg/bitcoinj/wallet/Protos$Transaction$Builder;Lcom/google/bitcoin/core/TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;)V

    .line 283
    .end local v3    # "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    .end local v4    # "confidenceBuilder":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    :cond_7
    sget-object v17, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$core$Transaction$Purpose:[I

    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getPurpose()Lcom/google/bitcoin/core/Transaction$Purpose;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/Transaction$Purpose;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 288
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "New tx purpose serialization not implemented."

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 284
    :pswitch_0
    sget-object v11, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 290
    .local v11, "purpose":Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setPurpose(Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 292
    invoke-virtual/range {v16 .. v16}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v17

    return-object v17

    .line 285
    .end local v11    # "purpose":Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    :pswitch_1
    sget-object v11, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .restart local v11    # "purpose":Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    goto :goto_3

    .line 286
    .end local v11    # "purpose":Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    :pswitch_2
    sget-object v11, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .restart local v11    # "purpose":Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    goto :goto_3

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static parseToProto(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method private static populateExtensions(Lcom/google/bitcoin/core/Wallet;Lorg/bitcoinj/wallet/Protos$Wallet$Builder;)V
    .locals 4
    .param p0, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p1, "walletBuilder"    # Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/WalletExtension;

    .line 216
    .local v0, "extension":Lcom/google/bitcoin/core/WalletExtension;
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v2

    .line 217
    .local v2, "proto":Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    invoke-interface {v0}, Lcom/google/bitcoin/core/WalletExtension;->getWalletExtensionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->setId(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 218
    invoke-interface {v0}, Lcom/google/bitcoin/core/WalletExtension;->isWalletExtensionMandatory()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->setMandatory(Z)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 219
    invoke-interface {v0}, Lcom/google/bitcoin/core/WalletExtension;->serializeWalletExtension()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 220
    invoke-virtual {p1, v2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->addExtension(Lorg/bitcoinj/wallet/Protos$Extension$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    goto :goto_0

    .line 222
    .end local v0    # "extension":Lcom/google/bitcoin/core/WalletExtension;
    .end local v2    # "proto":Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    :cond_0
    return-void
.end method

.method private readConfidence(Lcom/google/bitcoin/core/Transaction;Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lcom/google/bitcoin/core/TransactionConfidence;)V
    .locals 11
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p2, "confidenceProto"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .param p3, "confidence"    # Lcom/google/bitcoin/core/TransactionConfidence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/UnreadableWalletException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasType()Z

    move-result v8

    if-nez v8, :cond_0

    .line 630
    sget-object v8, Lcom/google/bitcoin/store/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string v9, "Unknown confidence type for tx {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 699
    :goto_0
    return-void

    .line 634
    :cond_0
    sget-object v8, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 643
    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .line 645
    .local v1, "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    :goto_1
    invoke-virtual {p3, v1}, Lcom/google/bitcoin/core/TransactionConfidence;->setConfidenceType(Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;)V

    .line 646
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasAppearedAtHeight()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 647
    invoke-virtual {p3}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v8

    sget-object v9, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-eq v8, v9, :cond_1

    .line 648
    sget-object v8, Lcom/google/bitcoin/store/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string v9, "Have appearedAtHeight but not BUILDING for tx {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 635
    .end local v1    # "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    :pswitch_0
    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .restart local v1    # "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    goto :goto_1

    .line 636
    .end local v1    # "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    :pswitch_1
    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .restart local v1    # "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    goto :goto_1

    .line 638
    .end local v1    # "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    :pswitch_2
    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .restart local v1    # "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    goto :goto_1

    .line 639
    .end local v1    # "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    :pswitch_3
    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    .restart local v1    # "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    goto :goto_1

    .line 651
    :cond_1
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getAppearedAtHeight()I

    move-result v8

    invoke-virtual {p3, v8}, Lcom/google/bitcoin/core/TransactionConfidence;->setAppearedAtChainHeight(I)V

    .line 653
    :cond_2
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasDepth()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 654
    invoke-virtual {p3}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v8

    sget-object v9, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-eq v8, v9, :cond_3

    .line 655
    sget-object v8, Lcom/google/bitcoin/store/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string v9, "Have depth but not BUILDING for tx {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 658
    :cond_3
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDepth()I

    move-result v8

    invoke-virtual {p3, v8}, Lcom/google/bitcoin/core/TransactionConfidence;->setDepthInBlocks(I)V

    .line 660
    :cond_4
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasWorkDone()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 661
    invoke-virtual {p3}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v8

    sget-object v9, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-eq v8, v9, :cond_5

    .line 662
    sget-object v8, Lcom/google/bitcoin/store/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string v9, "Have workDone but not BUILDING for tx {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 665
    :cond_5
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getWorkDone()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p3, v8}, Lcom/google/bitcoin/core/TransactionConfidence;->setWorkDone(Ljava/math/BigInteger;)V

    .line 667
    :cond_6
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasOverridingTransaction()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 668
    invoke-virtual {p3}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v8

    sget-object v9, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-eq v8, v9, :cond_7

    .line 669
    sget-object v8, Lcom/google/bitcoin/store/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string v9, "Have overridingTransaction but not OVERRIDDEN for tx {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 672
    :cond_7
    iget-object v8, p0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getOverridingTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/Transaction;

    .line 674
    .local v5, "overridingTransaction":Lcom/google/bitcoin/core/Transaction;
    if-nez v5, :cond_8

    .line 675
    sget-object v8, Lcom/google/bitcoin/store/WalletProtobufSerializer;->log:Lorg/slf4j/Logger;

    const-string v9, "Have overridingTransaction that is not in wallet for tx {}"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 678
    :cond_8
    invoke-virtual {p3, v5}, Lcom/google/bitcoin/core/TransactionConfidence;->setOverridingTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 680
    .end local v5    # "overridingTransaction":Lcom/google/bitcoin/core/Transaction;
    :cond_9
    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getBroadcastByList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    .line 683
    .local v7, "proto":Lorg/bitcoinj/wallet/Protos$PeerAddress;
    :try_start_0
    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getIpAddress()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 687
    .local v4, "ip":Ljava/net/InetAddress;
    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getPort()I

    move-result v6

    .line 688
    .local v6, "port":I
    new-instance v0, Lcom/google/bitcoin/core/PeerAddress;

    invoke-direct {v0, v4, v6}, Lcom/google/bitcoin/core/PeerAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 689
    .local v0, "address":Lcom/google/bitcoin/core/PeerAddress;
    invoke-virtual {v7}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getServices()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/bitcoin/core/PeerAddress;->setServices(Ljava/math/BigInteger;)V

    .line 690
    invoke-virtual {p3, v0}, Lcom/google/bitcoin/core/TransactionConfidence;->markBroadcastBy(Lcom/google/bitcoin/core/PeerAddress;)Z

    goto :goto_2

    .line 684
    .end local v0    # "address":Lcom/google/bitcoin/core/PeerAddress;
    .end local v4    # "ip":Ljava/net/InetAddress;
    .end local v6    # "port":I
    :catch_0
    move-exception v2

    .line 685
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v8, Lcom/google/bitcoin/store/UnreadableWalletException;

    const-string v9, "Peer IP address does not have the right length"

    invoke-direct {v8, v9, v2}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 692
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .end local v7    # "proto":Lorg/bitcoinj/wallet/Protos$PeerAddress;
    :cond_a
    sget-object v8, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Source:[I

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getSource()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 697
    sget-object v8, Lcom/google/bitcoin/core/TransactionConfidence$Source;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {p3, v8}, Lcom/google/bitcoin/core/TransactionConfidence;->setSource(Lcom/google/bitcoin/core/TransactionConfidence$Source;)V

    goto/16 :goto_0

    .line 693
    :pswitch_4
    sget-object v8, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {p3, v8}, Lcom/google/bitcoin/core/TransactionConfidence;->setSource(Lcom/google/bitcoin/core/TransactionConfidence$Source;)V

    goto/16 :goto_0

    .line 694
    :pswitch_5
    sget-object v8, Lcom/google/bitcoin/core/TransactionConfidence$Source;->NETWORK:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {p3, v8}, Lcom/google/bitcoin/core/TransactionConfidence;->setSource(Lcom/google/bitcoin/core/TransactionConfidence$Source;)V

    goto/16 :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 692
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private readTransaction(Lorg/bitcoinj/wallet/Protos$Transaction;Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 22
    .param p1, "txProto"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p2, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/UnreadableWalletException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v15, Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 524
    .local v15, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasUpdatedAt()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 525
    new-instance v17, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getUpdatedAt()J

    move-result-wide v18

    invoke-direct/range {v17 .. v19}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/bitcoin/core/Transaction;->setUpdateTime(Ljava/util/Date;)V

    .line 528
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionOutputList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    .line 529
    .local v10, "outputProto":Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    .line 530
    .local v16, "value":Ljava/math/BigInteger;
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v13

    .line 531
    .local v13, "scriptBytes":[B
    new-instance v9, Lcom/google/bitcoin/core/TransactionOutput;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v15, v1, v13}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;[B)V

    .line 532
    .local v9, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v15, v9}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    goto :goto_0

    .line 535
    .end local v9    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v10    # "outputProto":Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .end local v13    # "scriptBytes":[B
    .end local v16    # "value":Ljava/math/BigInteger;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionInputList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    .line 536
    .local v14, "transactionInput":Lorg/bitcoinj/wallet/Protos$TransactionInput;
    invoke-virtual {v14}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v13

    .line 537
    .restart local v13    # "scriptBytes":[B
    new-instance v8, Lcom/google/bitcoin/core/TransactionOutPoint;

    invoke-virtual {v14}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getTransactionOutPointIndex()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0xffffffffL

    and-long v17, v17, v19

    invoke-virtual {v14}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getTransactionOutPointHash()Lcom/google/protobuf/ByteString;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v19

    move-object/from16 v0, p2

    move-wide/from16 v1, v17

    move-object/from16 v3, v19

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/google/bitcoin/core/TransactionOutPoint;-><init>(Lcom/google/bitcoin/core/NetworkParameters;JLcom/google/bitcoin/core/Sha256Hash;)V

    .line 541
    .local v8, "outpoint":Lcom/google/bitcoin/core/TransactionOutPoint;
    new-instance v7, Lcom/google/bitcoin/core/TransactionInput;

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v15, v13, v8}, Lcom/google/bitcoin/core/TransactionInput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;[BLcom/google/bitcoin/core/TransactionOutPoint;)V

    .line 542
    .local v7, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v14}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasSequence()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 543
    invoke-virtual {v14}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getSequence()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Lcom/google/bitcoin/core/TransactionInput;->setSequenceNumber(J)V

    .line 545
    :cond_2
    invoke-virtual {v15, v7}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionInput;)Lcom/google/bitcoin/core/TransactionInput;

    goto :goto_1

    .line 548
    .end local v7    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v8    # "outpoint":Lcom/google/bitcoin/core/TransactionOutPoint;
    .end local v13    # "scriptBytes":[B
    .end local v14    # "transactionInput":Lorg/bitcoinj/wallet/Protos$TransactionInput;
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockHashCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_5

    .line 549
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockHash(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 550
    .local v4, "blockHash":Lcom/google/protobuf/ByteString;
    const/4 v12, 0x0

    .line 551
    .local v12, "relativityOffset":I
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockRelativityOffsetsCount()I

    move-result v17

    if-lez v17, :cond_4

    .line 552
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockRelativityOffsets(I)I

    move-result v12

    .line 553
    :cond_4
    invoke-static {v4}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v12}, Lcom/google/bitcoin/core/Transaction;->addBlockAppearance(Lcom/google/bitcoin/core/Sha256Hash;I)V

    .line 548
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 556
    .end local v4    # "blockHash":Lcom/google/protobuf/ByteString;
    .end local v12    # "relativityOffset":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasLockTime()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 557
    const-wide v17, 0xffffffffL

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getLockTime()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    and-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Lcom/google/bitcoin/core/Transaction;->setLockTime(J)V

    .line 560
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasPurpose()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 561
    sget-object v17, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getPurpose()Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 565
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "New purpose serialization not implemented"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 562
    :pswitch_0
    sget-object v17, Lcom/google/bitcoin/core/Transaction$Purpose;->UNKNOWN:Lcom/google/bitcoin/core/Transaction$Purpose;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/bitcoin/core/Transaction;->setPurpose(Lcom/google/bitcoin/core/Transaction$Purpose;)V

    .line 573
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v11

    .line 574
    .local v11, "protoHash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 575
    new-instance v17, Lcom/google/bitcoin/store/UnreadableWalletException;

    const-string v18, "Transaction did not deserialize completely: %s vs %s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v15}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 563
    .end local v11    # "protoHash":Lcom/google/bitcoin/core/Sha256Hash;
    :pswitch_1
    sget-object v17, Lcom/google/bitcoin/core/Transaction$Purpose;->USER_PAYMENT:Lcom/google/bitcoin/core/Transaction$Purpose;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/bitcoin/core/Transaction;->setPurpose(Lcom/google/bitcoin/core/Transaction$Purpose;)V

    goto :goto_3

    .line 564
    :pswitch_2
    sget-object v17, Lcom/google/bitcoin/core/Transaction$Purpose;->KEY_ROTATION:Lcom/google/bitcoin/core/Transaction$Purpose;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/bitcoin/core/Transaction;->setPurpose(Lcom/google/bitcoin/core/Transaction$Purpose;)V

    goto :goto_3

    .line 569
    :cond_7
    sget-object v17, Lcom/google/bitcoin/core/Transaction$Purpose;->USER_PAYMENT:Lcom/google/bitcoin/core/Transaction$Purpose;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/bitcoin/core/Transaction;->setPurpose(Lcom/google/bitcoin/core/Transaction$Purpose;)V

    goto :goto_3

    .line 576
    .restart local v11    # "protoHash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 577
    new-instance v17, Lcom/google/bitcoin/store/UnreadableWalletException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Wallet contained duplicate transaction "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 578
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    return-void

    .line 561
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static writeConfidence(Lorg/bitcoinj/wallet/Protos$Transaction$Builder;Lcom/google/bitcoin/core/TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;)V
    .locals 8
    .param p0, "txBuilder"    # Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .param p1, "confidence"    # Lcom/google/bitcoin/core/TransactionConfidence;
    .param p2, "confidenceBuilder"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .prologue
    .line 309
    monitor-enter p1

    .line 310
    :try_start_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->getValue()I

    move-result v5

    invoke-static {v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->valueOf(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setType(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 311
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v5

    sget-object v6, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v5, v6, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionConfidence;->getAppearedAtChainHeight()I

    move-result v5

    invoke-virtual {p2, v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setAppearedAtHeight(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 313
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v5

    invoke-virtual {p2, v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setDepth(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 314
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionConfidence;->getWorkDone()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 315
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionConfidence;->getWorkDone()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setWorkDone(J)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 318
    :cond_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v5

    sget-object v6, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    if-ne v5, v6, :cond_1

    .line 321
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionConfidence;->getOverridingTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 322
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionConfidence;->getOverridingTransaction()Lcom/google/bitcoin/core/Transaction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    .line 323
    .local v2, "overridingHash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-static {v2}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->hashToByteString(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setOverridingTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 326
    .end local v2    # "overridingHash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_1
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionConfidence;->getSource()Lcom/google/bitcoin/core/TransactionConfidence$Source;

    move-result-object v4

    .line 327
    .local v4, "source":Lcom/google/bitcoin/core/TransactionConfidence$Source;
    sget-object v5, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$core$TransactionConfidence$Source:[I

    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionConfidence$Source;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 333
    sget-object v5, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {p2, v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setSource(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 335
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {p1}, Lcom/google/bitcoin/core/TransactionConfidence;->getBroadcastBy()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/bitcoin/core/PeerAddress;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 338
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/PeerAddress;

    .line 339
    .local v0, "address":Lcom/google/bitcoin/core/PeerAddress;
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setIpAddress(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setPort(I)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/bitcoin/core/PeerAddress;->getServices()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->setServices(J)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v3

    .line 344
    .local v3, "proto":Lorg/bitcoinj/wallet/Protos$PeerAddress;
    invoke-virtual {p2, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->addBroadcastBy(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    goto :goto_1

    .line 328
    .end local v0    # "address":Lcom/google/bitcoin/core/PeerAddress;
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/bitcoin/core/PeerAddress;>;"
    .end local v3    # "proto":Lorg/bitcoinj/wallet/Protos$PeerAddress;
    :pswitch_0
    :try_start_1
    sget-object v5, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_SELF:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {p2, v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setSource(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    goto :goto_0

    .line 335
    .end local v4    # "source":Lcom/google/bitcoin/core/TransactionConfidence$Source;
    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 329
    .restart local v4    # "source":Lcom/google/bitcoin/core/TransactionConfidence$Source;
    :pswitch_1
    :try_start_2
    sget-object v5, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {p2, v5}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setSource(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 346
    .restart local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/bitcoin/core/PeerAddress;>;"
    :cond_2
    invoke-virtual {p0, p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->setConfidence(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .line 347
    return-void

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public readWallet(Ljava/io/InputStream;)Lcom/google/bitcoin/core/Wallet;
    .locals 8
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/UnreadableWalletException;
        }
    .end annotation

    .prologue
    .line 370
    :try_start_0
    invoke-static {p1}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->parseToProto(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v4

    .line 371
    .local v4, "walletProto":Lorg/bitcoinj/wallet/Protos$Wallet;
    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$Wallet;->getNetworkIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "paramsID":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/bitcoin/core/NetworkParameters;->fromID(Ljava/lang/String;)Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v1

    .line 373
    .local v1, "params":Lcom/google/bitcoin/core/NetworkParameters;
    if-nez v1, :cond_0

    .line 374
    new-instance v5, Lcom/google/bitcoin/store/UnreadableWalletException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown network parameters ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v1    # "params":Lcom/google/bitcoin/core/NetworkParameters;
    .end local v2    # "paramsID":Ljava/lang/String;
    .end local v4    # "walletProto":Lorg/bitcoinj/wallet/Protos$Wallet;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/google/bitcoin/store/UnreadableWalletException;

    const-string v6, "Could not parse input stream to protobuf"

    invoke-direct {v5, v6, v0}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 375
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "params":Lcom/google/bitcoin/core/NetworkParameters;
    .restart local v2    # "paramsID":Ljava/lang/String;
    .restart local v4    # "walletProto":Lorg/bitcoinj/wallet/Protos$Wallet;
    :cond_0
    :try_start_1
    new-instance v3, Lcom/google/bitcoin/core/Wallet;

    invoke-direct {v3, v1}, Lcom/google/bitcoin/core/Wallet;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 376
    .local v3, "wallet":Lcom/google/bitcoin/core/Wallet;
    invoke-virtual {p0, v4, v3}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->readWallet(Lorg/bitcoinj/wallet/Protos$Wallet;Lcom/google/bitcoin/core/Wallet;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    return-object v3
.end method

.method public readWallet(Lorg/bitcoinj/wallet/Protos$Wallet;Lcom/google/bitcoin/core/Wallet;)V
    .locals 23
    .param p1, "walletProto"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/UnreadableWalletException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasEncryptionParameters()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 397
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v7

    .line 398
    .local v7, "encryptionParameters":Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    new-instance v18, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;-><init>(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->setKeyCrypter(Lcom/google/bitcoin/crypto/KeyCrypter;)V

    .line 401
    .end local v7    # "encryptionParameters":Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasDescription()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 402
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDescription()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->setDescription(Ljava/lang/String;)V

    .line 406
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getKeyList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bitcoinj/wallet/Protos$Key;

    .line 407
    .local v10, "keyProto":Lorg/bitcoinj/wallet/Protos$Key;
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$Key;->getType()Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v18

    sget-object v19, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$Key;->getType()Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v18

    sget-object v19, Lorg/bitcoinj/wallet/Protos$Key$Type;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 408
    new-instance v18, Lcom/google/bitcoin/store/UnreadableWalletException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown key type in wallet, type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$Key;->getType()Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 411
    :cond_2
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$Key;->hasPrivateKey()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$Key;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v11

    .line 412
    .local v11, "privKey":[B
    :goto_1
    const/4 v5, 0x0

    .line 413
    .local v5, "encryptedPrivateKey":Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedPrivateKey()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 414
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedPrivateKey()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v6

    .line 415
    .local v6, "encryptedPrivateKeyProto":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    new-instance v5, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    .end local v5    # "encryptedPrivateKey":Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    invoke-virtual {v6}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getInitialisationVector()Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v18

    invoke-virtual {v6}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;-><init>([B[B)V

    .line 419
    .end local v6    # "encryptedPrivateKeyProto":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .restart local v5    # "encryptedPrivateKey":Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    :cond_3
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$Key;->hasPublicKey()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$Key;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v13

    .line 422
    .local v13, "pubKey":[B
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Wallet;->getKeyCrypter()Lcom/google/bitcoin/crypto/KeyCrypter;

    move-result-object v9

    .line 423
    .local v9, "keyCrypter":Lcom/google/bitcoin/crypto/KeyCrypter;
    if-eqz v9, :cond_6

    invoke-interface {v9}, Lcom/google/bitcoin/crypto/KeyCrypter;->getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v18

    sget-object v19, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 425
    new-instance v4, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v4, v5, v13, v9}, Lcom/google/bitcoin/core/ECKey;-><init>(Lcom/google/bitcoin/crypto/EncryptedPrivateKey;[BLcom/google/bitcoin/crypto/KeyCrypter;)V

    .line 430
    .local v4, "ecKey":Lcom/google/bitcoin/core/ECKey;
    :goto_3
    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$Key;->getCreationTimestamp()J

    move-result-wide v18

    const-wide/16 v20, 0x1f4

    add-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lcom/google/bitcoin/core/ECKey;->setCreationTimeSeconds(J)V

    .line 431
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/bitcoin/core/Wallet;->addKey(Lcom/google/bitcoin/core/ECKey;)Z

    goto/16 :goto_0

    .line 411
    .end local v4    # "ecKey":Lcom/google/bitcoin/core/ECKey;
    .end local v5    # "encryptedPrivateKey":Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    .end local v9    # "keyCrypter":Lcom/google/bitcoin/crypto/KeyCrypter;
    .end local v11    # "privKey":[B
    .end local v13    # "pubKey":[B
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 419
    .restart local v5    # "encryptedPrivateKey":Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    .restart local v11    # "privKey":[B
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 428
    .restart local v9    # "keyCrypter":Lcom/google/bitcoin/crypto/KeyCrypter;
    .restart local v13    # "pubKey":[B
    :cond_6
    new-instance v4, Lcom/google/bitcoin/core/ECKey;

    invoke-direct {v4, v11, v13}, Lcom/google/bitcoin/core/ECKey;-><init>([B[B)V

    .restart local v4    # "ecKey":Lcom/google/bitcoin/core/ECKey;
    goto :goto_3

    .line 434
    .end local v4    # "ecKey":Lcom/google/bitcoin/core/ECKey;
    .end local v5    # "encryptedPrivateKey":Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    .end local v9    # "keyCrypter":Lcom/google/bitcoin/crypto/KeyCrypter;
    .end local v10    # "keyProto":Lorg/bitcoinj/wallet/Protos$Key;
    .end local v11    # "privKey":[B
    .end local v13    # "pubKey":[B
    :cond_7
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 435
    .local v15, "scripts":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/script/Script;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getWatchedScriptList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bitcoinj/wallet/Protos$Script;

    .line 437
    .local v12, "protoScript":Lorg/bitcoinj/wallet/Protos$Script;
    :try_start_0
    new-instance v14, Lcom/google/bitcoin/script/Script;

    invoke-virtual {v12}, Lorg/bitcoinj/wallet/Protos$Script;->getProgram()Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v18

    invoke-virtual {v12}, Lorg/bitcoinj/wallet/Protos$Script;->getCreationTimestamp()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/google/bitcoin/script/Script;-><init>([BJ)V

    .line 440
    .local v14, "script":Lcom/google/bitcoin/script/Script;
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 441
    .end local v14    # "script":Lcom/google/bitcoin/script/Script;
    :catch_0
    move-exception v3

    .line 442
    .local v3, "e":Lcom/google/bitcoin/core/ScriptException;
    new-instance v18, Lcom/google/bitcoin/store/UnreadableWalletException;

    const-string v19, "Unparseable script in wallet"

    invoke-direct/range {v18 .. v19}, Lcom/google/bitcoin/store/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 446
    .end local v3    # "e":Lcom/google/bitcoin/core/ScriptException;
    .end local v12    # "protoScript":Lorg/bitcoinj/wallet/Protos$Script;
    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/bitcoin/core/Wallet;->addWatchedScripts(Ljava/util/List;)I

    .line 449
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTransactionList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/bitcoinj/wallet/Protos$Transaction;

    .line 450
    .local v16, "txProto":Lorg/bitcoinj/wallet/Protos$Transaction;
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Wallet;->getParams()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->readTransaction(Lorg/bitcoinj/wallet/Protos$Transaction;Lcom/google/bitcoin/core/NetworkParameters;)V

    goto :goto_5

    .line 454
    .end local v16    # "txProto":Lorg/bitcoinj/wallet/Protos$Transaction;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTransactionList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/bitcoinj/wallet/Protos$Transaction;

    .line 455
    .restart local v16    # "txProto":Lorg/bitcoinj/wallet/Protos$Transaction;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->connectTransactionOutputs(Lorg/bitcoinj/wallet/Protos$Transaction;)Lcom/google/bitcoin/wallet/WalletTransaction;

    move-result-object v17

    .line 456
    .local v17, "wtx":Lcom/google/bitcoin/wallet/WalletTransaction;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->addWalletTransaction(Lcom/google/bitcoin/wallet/WalletTransaction;)V

    goto :goto_6

    .line 460
    .end local v16    # "txProto":Lorg/bitcoinj/wallet/Protos$Transaction;
    .end local v17    # "wtx":Lcom/google/bitcoin/wallet/WalletTransaction;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasLastSeenBlockHash()Z

    move-result v18

    if-nez v18, :cond_d

    .line 461
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->setLastBlockSeenHash(Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 465
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasLastSeenBlockHeight()Z

    move-result v18

    if-nez v18, :cond_e

    .line 466
    const/16 v18, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->setLastBlockSeenHeight(I)V

    .line 471
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockTimeSecs()J

    move-result-wide v18

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet;->setLastBlockSeenTimeSecs(J)V

    .line 473
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasKeyRotationTime()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 474
    new-instance v18, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getKeyRotationTime()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    mul-long v19, v19, v21

    invoke-direct/range {v18 .. v20}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->setKeyRotationTime(Ljava/util/Date;)V

    .line 477
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->loadExtensions(Lcom/google/bitcoin/core/Wallet;Lorg/bitcoinj/wallet/Protos$Wallet;)V

    .line 479
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasVersion()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 480
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getVersion()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->setVersion(I)V

    .line 484
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->txMap:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 485
    return-void

    .line 463
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->byteStringToHash(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->setLastBlockSeenHash(Lcom/google/bitcoin/core/Sha256Hash;)V

    goto :goto_7

    .line 468
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockHeight()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->setLastBlockSeenHeight(I)V

    goto :goto_8
.end method

.method public setRequireMandatoryExtensions(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/bitcoin/store/WalletProtobufSerializer;->requireMandatoryExtensions:Z

    .line 90
    return-void
.end method

.method public walletToProto(Lcom/google/bitcoin/core/Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 22
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 119
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v15

    .line 120
    .local v15, "walletBuilder":Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getNetworkParameters()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setNetworkIdentifier(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getDescription()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getDescription()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setDescription(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 125
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getWalletTransactions()Ljava/lang/Iterable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/bitcoin/wallet/WalletTransaction;

    .line 126
    .local v16, "wtx":Lcom/google/bitcoin/wallet/WalletTransaction;
    invoke-static/range {v16 .. v16}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->makeTxProto(Lcom/google/bitcoin/wallet/WalletTransaction;)Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v14

    .line 127
    .local v14, "txProto":Lorg/bitcoinj/wallet/Protos$Transaction;
    invoke-virtual {v15, v14}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->addTransaction(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    goto :goto_0

    .line 130
    .end local v14    # "txProto":Lorg/bitcoinj/wallet/Protos$Transaction;
    .end local v16    # "wtx":Lcom/google/bitcoin/wallet/WalletTransaction;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getKeys()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/bitcoin/core/ECKey;

    .line 131
    .local v5, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v17

    sget-object v18, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual/range {v17 .. v18}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setType(Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v6

    .line 134
    .local v6, "keyBuilder":Lorg/bitcoinj/wallet/Protos$Key$Builder;
    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v17

    if-eqz v17, :cond_2

    .line 135
    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setPrivateKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 137
    :cond_2
    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->getEncryptedPrivateKey()Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    move-result-object v3

    .line 138
    .local v3, "encryptedPrivateKey":Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    if-eqz v3, :cond_4

    .line 140
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->newBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->getEncryptedBytes()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->setEncryptedPrivateKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->getInitialisationVector()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->setInitialisationVector(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v2

    .line 144
    .local v2, "encryptedKeyBuilder":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->getKeyCrypter()Lcom/google/bitcoin/crypto/KeyCrypter;

    move-result-object v17

    if-nez v17, :cond_3

    .line 145
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The encrypted key "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no KeyCrypter."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 148
    :cond_3
    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->getKeyCrypter()Lcom/google/bitcoin/crypto/KeyCrypter;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/google/bitcoin/crypto/KeyCrypter;->getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v17

    sget-object v18, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 149
    sget-object v17, Lorg/bitcoinj/wallet/Protos$Key$Type;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setType(Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 155
    invoke-virtual {v6, v2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setEncryptedPrivateKey(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 161
    .end local v2    # "encryptedKeyBuilder":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    :cond_4
    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setPublicKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 162
    invoke-virtual {v15, v6}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->addKey(Lorg/bitcoinj/wallet/Protos$Key$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    goto/16 :goto_1

    .line 151
    .restart local v2    # "encryptedKeyBuilder":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    :cond_5
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The key "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is encrypted with a KeyCrypter of type "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lcom/google/bitcoin/core/ECKey;->getKeyCrypter()Lcom/google/bitcoin/crypto/KeyCrypter;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/bitcoin/crypto/KeyCrypter;->getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". This WalletProtobufSerialiser does not understand that type of encryption."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 165
    .end local v2    # "encryptedKeyBuilder":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .end local v3    # "encryptedPrivateKey":Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    .end local v5    # "key":Lcom/google/bitcoin/core/ECKey;
    .end local v6    # "keyBuilder":Lorg/bitcoinj/wallet/Protos$Key$Builder;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getWatchedScripts()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/bitcoin/script/Script;

    .line 166
    .local v11, "script":Lcom/google/bitcoin/script/Script;
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v17

    invoke-virtual {v11}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->setProgram(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v17

    invoke-virtual {v11}, Lcom/google/bitcoin/script/Script;->getCreationTimeSeconds()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v10

    .line 172
    .local v10, "protoScript":Lorg/bitcoinj/wallet/Protos$Script;
    invoke-virtual {v15, v10}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->addWatchedScript(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    goto :goto_2

    .line 176
    .end local v10    # "protoScript":Lorg/bitcoinj/wallet/Protos$Script;
    .end local v11    # "script":Lcom/google/bitcoin/script/Script;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v9

    .line 177
    .local v9, "lastSeenBlockHash":Lcom/google/bitcoin/core/Sha256Hash;
    if-eqz v9, :cond_8

    .line 178
    invoke-static {v9}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->hashToByteString(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/protobuf/ByteString;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockHeight(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 181
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenTimeSecs()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_9

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenTimeSecs()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockTimeSecs(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 185
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getKeyCrypter()Lcom/google/bitcoin/crypto/KeyCrypter;

    move-result-object v7

    .line 186
    .local v7, "keyCrypter":Lcom/google/bitcoin/crypto/KeyCrypter;
    if-nez v7, :cond_b

    .line 188
    sget-object v17, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setEncryptionType(Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 201
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getKeyRotationTime()Ljava/util/Date;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getKeyRotationTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v12, v17, v19

    .line 203
    .local v12, "timeSecs":J
    invoke-virtual {v15, v12, v13}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setKeyRotationTime(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 206
    .end local v12    # "timeSecs":J
    :cond_a
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->populateExtensions(Lcom/google/bitcoin/core/Wallet;Lorg/bitcoinj/wallet/Protos$Wallet$Builder;)V

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getVersion()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setVersion(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 211
    invoke-virtual {v15}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->build()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v17

    return-object v17

    .line 191
    :cond_b
    invoke-interface {v7}, Lcom/google/bitcoin/crypto/KeyCrypter;->getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setEncryptionType(Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 192
    instance-of v0, v7, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object v8, v7

    .line 193
    check-cast v8, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;

    .line 194
    .local v8, "keyCrypterScrypt":Lcom/google/bitcoin/crypto/KeyCrypterScrypt;
    invoke-virtual {v8}, Lcom/google/bitcoin/crypto/KeyCrypterScrypt;->getScryptParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setEncryptionParameters(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    goto :goto_3

    .line 197
    .end local v8    # "keyCrypterScrypt":Lcom/google/bitcoin/crypto/KeyCrypterScrypt;
    :cond_c
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The wallet has encryption of type \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v7}, Lcom/google/bitcoin/crypto/KeyCrypter;->getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' but this WalletProtobufSerializer does not know how to persist this."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method public walletToText(Lcom/google/bitcoin/core/Wallet;)Ljava/lang/String;
    .locals 2
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->walletToProto(Lcom/google/bitcoin/core/Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    .line 111
    .local v0, "walletProto":Lorg/bitcoinj/wallet/Protos$Wallet;
    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->printToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeWallet(Lcom/google/bitcoin/core/Wallet;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/store/WalletProtobufSerializer;->walletToProto(Lcom/google/bitcoin/core/Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    .line 99
    .local v0, "walletProto":Lorg/bitcoinj/wallet/Protos$Wallet;
    invoke-virtual {v0, p2}, Lorg/bitcoinj/wallet/Protos$Wallet;->writeTo(Ljava/io/OutputStream;)V

    .line 100
    return-void
.end method

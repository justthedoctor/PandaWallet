.class public final Lorg/bitcoinj/wallet/Protos$Transaction;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Transaction$Builder;,
        Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;,
        Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    }
.end annotation


# static fields
.field public static final BLOCK_HASH_FIELD_NUMBER:I = 0x8

.field public static final BLOCK_RELATIVITY_OFFSETS_FIELD_NUMBER:I = 0xb

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x9

.field public static final HASH_FIELD_NUMBER:I = 0x2

.field public static final LOCK_TIME_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final POOL_FIELD_NUMBER:I = 0x3

.field public static final PURPOSE_FIELD_NUMBER:I = 0xa

.field public static final TRANSACTION_INPUT_FIELD_NUMBER:I = 0x6

.field public static final TRANSACTION_OUTPUT_FIELD_NUMBER:I = 0x7

.field public static final UPDATED_AT_FIELD_NUMBER:I = 0x5

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$Transaction;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private blockHash_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private blockRelativityOffsets_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

.field private hash_:Lcom/google/protobuf/ByteString;

.field private lockTime_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

.field private purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

.field private transactionInput_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field private transactionOutput_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private updatedAt_:J

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6714
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Transaction$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    .line 8972
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$Transaction;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Transaction;

    .line 8973
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Transaction;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->initFields()V

    .line 8974
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 13
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6558
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7342
    const/4 v10, -0x1

    iput-byte v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    .line 7416
    const/4 v10, -0x1

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedSerializedSize:I

    .line 6559
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->initFields()V

    .line 6560
    const/4 v4, 0x0

    .line 6561
    .local v4, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v8

    .line 6564
    .local v8, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 6565
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_f

    .line 6566
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v7

    .line 6567
    .local v7, "tag":I
    sparse-switch v7, :sswitch_data_0

    .line 6572
    invoke-virtual {p0, p1, v8, p2, v7}, Lorg/bitcoinj/wallet/Protos$Transaction;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 6574
    const/4 v0, 0x1

    goto :goto_0

    .line 6569
    :sswitch_0
    const/4 v0, 0x1

    .line 6570
    goto :goto_0

    .line 6579
    :sswitch_1
    iget v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 6580
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6680
    .end local v7    # "tag":I
    :catch_0
    move-exception v1

    .line 6681
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6686
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v10

    and-int/lit8 v11, v4, 0x20

    const/16 v12, 0x20

    if-ne v11, v12, :cond_1

    .line 6687
    iget-object v11, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    .line 6689
    :cond_1
    and-int/lit8 v11, v4, 0x40

    const/16 v12, 0x40

    if-ne v11, v12, :cond_2

    .line 6690
    iget-object v11, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    .line 6692
    :cond_2
    and-int/lit16 v11, v4, 0x80

    const/16 v12, 0x80

    if-ne v11, v12, :cond_3

    .line 6693
    iget-object v11, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    .line 6695
    :cond_3
    and-int/lit16 v11, v4, 0x100

    const/16 v12, 0x100

    if-ne v11, v12, :cond_4

    .line 6696
    iget-object v11, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    .line 6698
    :cond_4
    invoke-virtual {v8}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v11

    iput-object v11, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6699
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->makeExtensionsImmutable()V

    throw v10

    .line 6584
    .restart local v7    # "tag":I
    :sswitch_2
    :try_start_2
    iget v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 6585
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6682
    .end local v7    # "tag":I
    :catch_1
    move-exception v1

    .line 6683
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v10, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6589
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v7    # "tag":I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 6590
    .local v5, "rawValue":I
    invoke-static {v5}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->valueOf(I)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v9

    .line 6591
    .local v9, "value":Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    if-nez v9, :cond_5

    .line 6592
    const/4 v10, 0x3

    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 6594
    :cond_5
    iget v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 6595
    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    goto/16 :goto_0

    .line 6600
    .end local v5    # "rawValue":I
    .end local v9    # "value":Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    :sswitch_4
    iget v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 6601
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v10

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    goto/16 :goto_0

    .line 6605
    :sswitch_5
    iget v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 6606
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v10

    iput-wide v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    goto/16 :goto_0

    .line 6610
    :sswitch_6
    and-int/lit8 v10, v4, 0x20

    const/16 v11, 0x20

    if-eq v10, v11, :cond_6

    .line 6611
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    .line 6612
    or-int/lit8 v4, v4, 0x20

    .line 6614
    :cond_6
    iget-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    sget-object v11, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6618
    :sswitch_7
    and-int/lit8 v10, v4, 0x40

    const/16 v11, 0x40

    if-eq v10, v11, :cond_7

    .line 6619
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    .line 6620
    or-int/lit8 v4, v4, 0x40

    .line 6622
    :cond_7
    iget-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    sget-object v11, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6626
    :sswitch_8
    and-int/lit16 v10, v4, 0x80

    const/16 v11, 0x80

    if-eq v10, v11, :cond_8

    .line 6627
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    .line 6628
    or-int/lit16 v4, v4, 0x80

    .line 6630
    :cond_8
    iget-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6634
    :sswitch_9
    const/4 v6, 0x0

    .line 6635
    .local v6, "subBuilder":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    iget v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v10, v10, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_9

    .line 6636
    iget-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-virtual {v10}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v6

    .line 6638
    :cond_9
    sget-object v10, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 6639
    if-eqz v6, :cond_a

    .line 6640
    iget-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-virtual {v6, v10}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 6641
    invoke-virtual {v6}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v10

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 6643
    :cond_a
    iget v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/lit8 v10, v10, 0x20

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    goto/16 :goto_0

    .line 6647
    .end local v6    # "subBuilder":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 6648
    .restart local v5    # "rawValue":I
    invoke-static {v5}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->valueOf(I)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v9

    .line 6649
    .local v9, "value":Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    if-nez v9, :cond_b

    .line 6650
    const/16 v10, 0xa

    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 6652
    :cond_b
    iget v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    or-int/lit8 v10, v10, 0x40

    iput v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    .line 6653
    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    goto/16 :goto_0

    .line 6658
    .end local v5    # "rawValue":I
    .end local v9    # "value":Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    :sswitch_b
    and-int/lit16 v10, v4, 0x100

    const/16 v11, 0x100

    if-eq v10, v11, :cond_c

    .line 6659
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    .line 6660
    or-int/lit16 v4, v4, 0x100

    .line 6662
    :cond_c
    iget-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6666
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 6667
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 6668
    .local v3, "limit":I
    and-int/lit16 v10, v4, 0x100

    const/16 v11, 0x100

    if-eq v10, v11, :cond_d

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_d

    .line 6669
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    .line 6670
    or-int/lit16 v4, v4, 0x100

    .line 6672
    :cond_d
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_e

    .line 6673
    iget-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6675
    :cond_e
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 6686
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v7    # "tag":I
    :cond_f
    and-int/lit8 v10, v4, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_10

    .line 6687
    iget-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    .line 6689
    :cond_10
    and-int/lit8 v10, v4, 0x40

    const/16 v11, 0x40

    if-ne v10, v11, :cond_11

    .line 6690
    iget-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    .line 6692
    :cond_11
    and-int/lit16 v10, v4, 0x80

    const/16 v11, 0x80

    if-ne v10, v11, :cond_12

    .line 6693
    iget-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    .line 6695
    :cond_12
    and-int/lit16 v10, v4, 0x100

    const/16 v11, 0x100

    if-ne v10, v11, :cond_13

    .line 6696
    iget-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    .line 6698
    :cond_13
    invoke-virtual {v8}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v10

    iput-object v10, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6699
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->makeExtensionsImmutable()V

    .line 6701
    return-void

    .line 6567
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x5a -> :sswitch_c
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lorg/bitcoinj/wallet/Protos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6530
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Transaction;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessage$Builder;, "Lcom/google/protobuf/GeneratedMessage$Builder<*>;"
    const/4 v0, -0x1

    .line 6535
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 7342
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    .line 7416
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedSerializedSize:I

    .line 6536
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6537
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 6530
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 6538
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7342
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    .line 7416
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedSerializedSize:I

    .line 6538
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$10000(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;

    .prologue
    .line 6530
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10002(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 6530
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10102(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .prologue
    .line 6530
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object p1
.end method

.method static synthetic access$10202(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;)Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .prologue
    .line 6530
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object p1
.end method

.method static synthetic access$10302(Lorg/bitcoinj/wallet/Protos$Transaction;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # I

    .prologue
    .line 6530
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    return p1
.end method

.method static synthetic access$10400()Z
    .locals 1

    .prologue
    .line 6530
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Transaction;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10500()Z
    .locals 1

    .prologue
    .line 6530
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Transaction;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9000()Z
    .locals 1

    .prologue
    .line 6530
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Transaction;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9202(Lorg/bitcoinj/wallet/Protos$Transaction;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # I

    .prologue
    .line 6530
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I

    return p1
.end method

.method static synthetic access$9302(Lorg/bitcoinj/wallet/Protos$Transaction;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6530
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$9402(Lorg/bitcoinj/wallet/Protos$Transaction;Lorg/bitcoinj/wallet/Protos$Transaction$Pool;)Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .prologue
    .line 6530
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object p1
.end method

.method static synthetic access$9502(Lorg/bitcoinj/wallet/Protos$Transaction;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # I

    .prologue
    .line 6530
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    return p1
.end method

.method static synthetic access$9602(Lorg/bitcoinj/wallet/Protos$Transaction;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # J

    .prologue
    .line 6530
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    return-wide p1
.end method

.method static synthetic access$9700(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;

    .prologue
    .line 6530
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9702(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 6530
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9800(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;

    .prologue
    .line 6530
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9802(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 6530
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9900(Lorg/bitcoinj/wallet/Protos$Transaction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;

    .prologue
    .line 6530
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9902(Lorg/bitcoinj/wallet/Protos$Transaction;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Transaction;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 6530
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1

    .prologue
    .line 6542
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6704
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$8500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7330
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I

    .line 7331
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;

    .line 7332
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    .line 7333
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    .line 7334
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    .line 7335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    .line 7336
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    .line 7337
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    .line 7338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    .line 7339
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .line 7340
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    .line 7341
    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 7541
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->access$8800()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoinj/wallet/Protos$Transaction;

    .prologue
    .line 7544
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7521
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7527
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7491
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7497
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7532
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7538
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7511
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7517
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7501
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7507
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method


# virtual methods
.method public getBlockHash(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7253
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBlockHashCount()I
    .locals 1

    .prologue
    .line 7242
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlockHashList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7231
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    return-object v0
.end method

.method public getBlockRelativityOffsets(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7276
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBlockRelativityOffsetsCount()I
    .locals 1

    .prologue
    .line 7270
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlockRelativityOffsetsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7264
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    return-object v0
.end method

.method public getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1

    .prologue
    .line 7300
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public getConfidenceOrBuilder()Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;
    .locals 1

    .prologue
    .line 7310
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6530
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6530
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1

    .prologue
    .line 6546
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 7065
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLockTime()I
    .locals 1

    .prologue
    .line 7119
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6726
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPool()Lorg/bitcoinj/wallet/Protos$Transaction$Pool;
    .locals 1

    .prologue
    .line 7095
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    return-object v0
.end method

.method public getPurpose()Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;
    .locals 1

    .prologue
    .line 7326
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 7418
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedSerializedSize:I

    .line 7419
    .local v2, "size":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 7478
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    return v3

    .line 7421
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    const/4 v2, 0x0

    .line 7422
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 7423
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 7426
    :cond_1
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2

    .line 7427
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7430
    :cond_2
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3

    .line 7431
    const/4 v4, 0x3

    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 7434
    :cond_3
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 7435
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 7438
    :cond_4
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5

    .line 7439
    const/4 v4, 0x5

    iget-wide v5, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 7442
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 7443
    const/4 v5, 0x6

    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7442
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7446
    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 7447
    const/4 v5, 0x7

    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7446
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7451
    :cond_7
    const/4 v0, 0x0

    .line 7452
    .local v0, "dataSize":I
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 7453
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 7452
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7456
    :cond_8
    add-int/2addr v2, v0

    .line 7457
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockHashList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 7459
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_9

    .line 7460
    const/16 v4, 0x9

    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7463
    :cond_9
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_a

    .line 7464
    const/16 v4, 0xa

    iget-object v5, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 7468
    :cond_a
    const/4 v0, 0x0

    .line 7469
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 7470
    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 7469
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7473
    :cond_b
    add-int/2addr v2, v0

    .line 7474
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getBlockRelativityOffsetsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 7476
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 7477
    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedSerializedSize:I

    move v3, v2

    .line 7478
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto/16 :goto_0
.end method

.method public getTransactionInput(I)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7172
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public getTransactionInputCount()I
    .locals 1

    .prologue
    .line 7166
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransactionInputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7153
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionInputOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7179
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;

    return-object v0
.end method

.method public getTransactionInputOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7160
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7208
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public getTransactionOutputCount()I
    .locals 1

    .prologue
    .line 7202
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransactionOutputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7189
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionOutputOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7215
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;

    return-object v0
.end method

.method public getTransactionOutputOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7196
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 6553
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUpdatedAt()J
    .locals 2

    .prologue
    .line 7143
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 7049
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I

    return v0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 7290
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHash()Z
    .locals 2

    .prologue
    .line 7059
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLockTime()Z
    .locals 2

    .prologue
    .line 7109
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPool()Z
    .locals 2

    .prologue
    .line 7082
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPurpose()Z
    .locals 2

    .prologue
    .line 7320
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdatedAt()Z
    .locals 2

    .prologue
    .line 7133
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7039
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 6709
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$8600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Transaction;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7344
    iget-byte v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    .line 7345
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    :goto_0
    move v3, v2

    .line 7374
    :goto_1
    return v3

    :cond_0
    move v2, v3

    .line 7345
    goto :goto_0

    .line 7347
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasVersion()Z

    move-result v4

    if-nez v4, :cond_2

    .line 7348
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    goto :goto_1

    .line 7351
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasHash()Z

    move-result v4

    if-nez v4, :cond_3

    .line 7352
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    goto :goto_1

    .line 7355
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionInputCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 7356
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionInput(I)Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 7357
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    goto :goto_1

    .line 7355
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7361
    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionOutputCount()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 7362
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getTransactionOutput(I)Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_6

    .line 7363
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    goto :goto_1

    .line 7361
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7367
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->hasConfidence()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 7368
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getConfidence()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_8

    .line 7369
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    goto :goto_1

    .line 7373
    :cond_8
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->memoizedIsInitialized:B

    move v3, v2

    .line 7374
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6530
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 6530
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6530
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 7542
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 7551
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 7552
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6530
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->toBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6530
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->toBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1

    .prologue
    .line 7546
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->newBuilder(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 7485
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7379
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getSerializedSize()I

    .line 7380
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 7381
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->version_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7383
    :cond_0
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 7384
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->hash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7386
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 7387
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->pool_:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7389
    :cond_2
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 7390
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->lockTime_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 7392
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 7393
    const/4 v1, 0x5

    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->updatedAt_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7395
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 7396
    const/4 v2, 0x6

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionInput_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7398
    :cond_5
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 7399
    const/4 v2, 0x7

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->transactionOutput_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7401
    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 7402
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockHash_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7401
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7404
    :cond_7
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_8

    .line 7405
    const/16 v1, 0x9

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->confidence_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7407
    :cond_8
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_9

    .line 7408
    const/16 v1, 0xa

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->purpose_:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7410
    :cond_9
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 7411
    const/16 v2, 0xb

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Transaction;->blockRelativityOffsets_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7410
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7413
    :cond_a
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Transaction;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 7414
    return-void
.end method

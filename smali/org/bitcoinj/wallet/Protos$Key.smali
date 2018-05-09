.class public final Lorg/bitcoinj/wallet/Protos$Key;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Key$Builder;,
        Lorg/bitcoinj/wallet/Protos$Key$Type;
    }
.end annotation


# static fields
.field public static final CREATION_TIMESTAMP_FIELD_NUMBER:I = 0x5

.field public static final ENCRYPTED_PRIVATE_KEY_FIELD_NUMBER:I = 0x6

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x2

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$Key;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private creationTimestamp_:J

.field private encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private publicKey_:Lcom/google/protobuf/ByteString;

.field private type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1427
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Key$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    .line 2546
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$Key;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Key;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Key;

    .line 2547
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Key;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Key;->initFields()V

    .line 2548
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 1339
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1734
    iput-byte v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    .line 1777
    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedSerializedSize:I

    .line 1340
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key;->initFields()V

    .line 1341
    const/4 v2, 0x0

    .line 1342
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 1345
    .local v6, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 1346
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 1347
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 1348
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 1353
    invoke-virtual {p0, p1, v6, p2, v5}, Lorg/bitcoinj/wallet/Protos$Key;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1355
    const/4 v0, 0x1

    goto :goto_0

    .line 1350
    :sswitch_0
    const/4 v0, 0x1

    .line 1351
    goto :goto_0

    .line 1360
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 1361
    .local v3, "rawValue":I
    invoke-static {v3}, Lorg/bitcoinj/wallet/Protos$Key$Type;->valueOf(I)Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v7

    .line 1362
    .local v7, "value":Lorg/bitcoinj/wallet/Protos$Key$Type;
    if-nez v7, :cond_1

    .line 1363
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1405
    .end local v3    # "rawValue":I
    .end local v5    # "tag":I
    .end local v7    # "value":Lorg/bitcoinj/wallet/Protos$Key$Type;
    :catch_0
    move-exception v1

    .line 1406
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1411
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Key;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1412
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->makeExtensionsImmutable()V

    throw v8

    .line 1365
    .restart local v3    # "rawValue":I
    .restart local v5    # "tag":I
    .restart local v7    # "value":Lorg/bitcoinj/wallet/Protos$Key$Type;
    :cond_1
    :try_start_2
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    .line 1366
    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1407
    .end local v3    # "rawValue":I
    .end local v5    # "tag":I
    .end local v7    # "value":Lorg/bitcoinj/wallet/Protos$Key$Type;
    :catch_1
    move-exception v1

    .line 1408
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1371
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "tag":I
    :sswitch_2
    :try_start_4
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    .line 1372
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->privateKey_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1376
    :sswitch_3
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    .line 1377
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1381
    :sswitch_4
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    .line 1382
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 1386
    :sswitch_5
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    .line 1387
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    goto :goto_0

    .line 1391
    :sswitch_6
    const/4 v4, 0x0

    .line 1392
    .local v4, "subBuilder":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v8, v8, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 1393
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    invoke-virtual {v8}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->toBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v4

    .line 1395
    :cond_2
    sget-object v8, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 1396
    if-eqz v4, :cond_3

    .line 1397
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    invoke-virtual {v4, v8}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    .line 1398
    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 1400
    :cond_3
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1411
    .end local v4    # "subBuilder":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .end local v5    # "tag":I
    :cond_4
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Key;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1412
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->makeExtensionsImmutable()V

    .line 1414
    return-void

    .line 1348
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
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
    .line 1311
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Key;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1316
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1734
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    .line 1777
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedSerializedSize:I

    .line 1317
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1318
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 1311
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1319
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1734
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    .line 1777
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedSerializedSize:I

    .line 1319
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 1311
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Key;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2802(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Key;
    .param p1, "x1"    # Lorg/bitcoinj/wallet/Protos$Key$Type;

    .prologue
    .line 1311
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object p1
.end method

.method static synthetic access$2902(Lorg/bitcoinj/wallet/Protos$Key;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Key;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1311
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3002(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Key;
    .param p1, "x1"    # Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .prologue
    .line 1311
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object p1
.end method

.method static synthetic access$3102(Lorg/bitcoinj/wallet/Protos$Key;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Key;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1311
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/bitcoinj/wallet/Protos$Key;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Key;

    .prologue
    .line 1311
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/bitcoinj/wallet/Protos$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Key;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1311
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lorg/bitcoinj/wallet/Protos$Key;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Key;
    .param p1, "x1"    # J

    .prologue
    .line 1311
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$3402(Lorg/bitcoinj/wallet/Protos$Key;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Key;
    .param p1, "x1"    # I

    .prologue
    .line 1311
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1

    .prologue
    .line 1323
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1417
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 1727
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 1728
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->privateKey_:Lcom/google/protobuf/ByteString;

    .line 1729
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 1730
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 1731
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    .line 1732
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    .line 1733
    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .prologue
    .line 1872
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->access$2400()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoinj/wallet/Protos$Key;

    .prologue
    .line 1875
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1852
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1858
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1822
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1828
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1863
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1869
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1842
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1848
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1832
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1838
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method


# virtual methods
.method public getCreationTimestamp()J
    .locals 2

    .prologue
    .line 1723
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1311
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1311
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1

    .prologue
    .line 1327
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public getEncryptedPrivateKey()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public getEncryptedPrivateKeyOrBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKeyOrBuilder;
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1668
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    .line 1669
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1670
    check-cast v1, Ljava/lang/String;

    .line 1678
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1672
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1674
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1675
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1676
    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1678
    goto :goto_0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1690
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    .line 1691
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1692
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1695
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->label_:Ljava/lang/Object;

    .line 1698
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1439
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1779
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedSerializedSize:I

    .line 1780
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1809
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1782
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1783
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1784
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Key$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1787
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1788
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->privateKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1791
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 1792
    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1795
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 1796
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1799
    :cond_4
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 1800
    const/4 v2, 0x5

    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1803
    :cond_5
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_6

    .line 1804
    const/4 v2, 0x6

    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1807
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1808
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedSerializedSize:I

    move v1, v0

    .line 1809
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getType()Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCreationTimestamp()Z
    .locals 2

    .prologue
    .line 1713
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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

.method public hasEncryptedPrivateKey()Z
    .locals 2

    .prologue
    .line 1594
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 1658
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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

.method public hasPrivateKey()Z
    .locals 2

    .prologue
    .line 1568
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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

.method public hasPublicKey()Z
    .locals 2

    .prologue
    .line 1633
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1548
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

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
    .line 1422
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Key;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1736
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    .line 1737
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 1750
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1737
    goto :goto_0

    .line 1739
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1740
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    move v1, v2

    .line 1741
    goto :goto_0

    .line 1743
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedPrivateKey()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1744
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedPrivateKey()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1745
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    move v1, v2

    .line 1746
    goto :goto_0

    .line 1749
    :cond_3
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1311
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1311
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1311
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .prologue
    .line 1873
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1882
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 1883
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$Key$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1311
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->toBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1311
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->toBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .prologue
    .line 1877
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilder(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

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
    .line 1816
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1755
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getSerializedSize()I

    .line 1756
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1757
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1759
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1760
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->privateKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1762
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1763
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->publicKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1765
    :cond_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1766
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1768
    :cond_3
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 1769
    const/4 v0, 0x5

    iget-wide v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->creationTimestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1771
    :cond_4
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_5

    .line 1772
    const/4 v0, 0x6

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1774
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1775
    return-void
.end method

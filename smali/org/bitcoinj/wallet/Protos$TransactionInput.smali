.class public final Lorg/bitcoinj/wallet/Protos$TransactionInput;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCRIPT_BYTES_FIELD_NUMBER:I = 0x3

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x4

.field public static final TRANSACTION_OUT_POINT_HASH_FIELD_NUMBER:I = 0x1

.field public static final TRANSACTION_OUT_POINT_INDEX_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionInput;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private scriptBytes_:Lcom/google/protobuf/ByteString;

.field private sequence_:I

.field private transactionOutPointHash_:Lcom/google/protobuf/ByteString;

.field private transactionOutPointIndex_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3259
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionInput$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 3879
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionInput;

    .line 3880
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionInput;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->initFields()V

    .line 3881
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 3195
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3377
    iput-byte v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    .line 3416
    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedSerializedSize:I

    .line 3196
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->initFields()V

    .line 3197
    const/4 v2, 0x0

    .line 3198
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 3201
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 3202
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3203
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3204
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3209
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3211
    const/4 v0, 0x1

    goto :goto_0

    .line 3206
    :sswitch_0
    const/4 v0, 0x1

    .line 3207
    goto :goto_0

    .line 3216
    :sswitch_1
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    .line 3217
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3237
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 3238
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3243
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3244
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->makeExtensionsImmutable()V

    throw v5

    .line 3221
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    .line 3222
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3239
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 3240
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3226
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    .line 3227
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 3231
    :sswitch_4
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    .line 3232
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 3243
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3244
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->makeExtensionsImmutable()V

    .line 3246
    return-void

    .line 3204
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 3167
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3172
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3377
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    .line 3416
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedSerializedSize:I

    .line 3173
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3174
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 3167
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3175
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3377
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    .line 3416
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedSerializedSize:I

    .line 3175
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5000()Z
    .locals 1

    .prologue
    .line 3167
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5202(Lorg/bitcoinj/wallet/Protos$TransactionInput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3167
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5302(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .param p1, "x1"    # I

    .prologue
    .line 3167
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I

    return p1
.end method

.method static synthetic access$5402(Lorg/bitcoinj/wallet/Protos$TransactionInput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3167
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5502(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .param p1, "x1"    # I

    .prologue
    .line 3167
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I

    return p1
.end method

.method static synthetic access$5602(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .param p1, "x1"    # I

    .prologue
    .line 3167
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1

    .prologue
    .line 3179
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3249
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3372
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 3373
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I

    .line 3374
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 3375
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I

    .line 3376
    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .prologue
    .line 3503
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->access$4800()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoinj/wallet/Protos$TransactionInput;

    .prologue
    .line 3506
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3483
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3489
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3453
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3459
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3494
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3500
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3473
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3479
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3463
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3469
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3167
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3167
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1

    .prologue
    .line 3183
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3271
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScriptBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3344
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 3368
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3418
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedSerializedSize:I

    .line 3419
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3440
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 3421
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 3422
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3423
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3426
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 3427
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3430
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 3431
    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3434
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 3435
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3438
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 3439
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedSerializedSize:I

    move v1, v0

    .line 3440
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTransactionOutPointHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3296
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransactionOutPointIndex()I
    .locals 1

    .prologue
    .line 3320
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 3190
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasScriptBytes()Z
    .locals 2

    .prologue
    .line 3334
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

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

.method public hasSequence()Z
    .locals 2

    .prologue
    .line 3358
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

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

.method public hasTransactionOutPointHash()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3286
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransactionOutPointIndex()Z
    .locals 2

    .prologue
    .line 3310
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 3254
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3379
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    .line 3380
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 3395
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 3380
    goto :goto_0

    .line 3382
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasTransactionOutPointHash()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3383
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    goto :goto_1

    .line 3386
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasTransactionOutPointIndex()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3387
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    goto :goto_1

    .line 3390
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasScriptBytes()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3391
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    goto :goto_1

    .line 3394
    :cond_4
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    move v2, v1

    .line 3395
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3167
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3167
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3167
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .prologue
    .line 3504
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3513
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 3514
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3167
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3167
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .prologue
    .line 3508
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

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
    .line 3447
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

    .line 3400
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getSerializedSize()I

    .line 3401
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3402
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3404
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3405
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3407
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 3408
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3410
    :cond_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 3411
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3413
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3414
    return-void
.end method

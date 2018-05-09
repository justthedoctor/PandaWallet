.class public final Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerVersion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    }
.end annotation


# static fields
.field public static final MAJOR_FIELD_NUMBER:I = 0x1

.field public static final MINOR_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private major_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private minor_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3356
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    .line 3736
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 3737
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->initFields()V

    .line 3738
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

    .line 3302
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3408
    iput-byte v5, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    .line 3433
    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedSerializedSize:I

    .line 3303
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->initFields()V

    .line 3304
    const/4 v2, 0x0

    .line 3305
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 3308
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 3309
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3310
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3311
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3316
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3318
    const/4 v0, 0x1

    goto :goto_0

    .line 3313
    :sswitch_0
    const/4 v0, 0x1

    .line 3314
    goto :goto_0

    .line 3323
    :sswitch_1
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    .line 3324
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3334
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 3335
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3340
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3341
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->makeExtensionsImmutable()V

    throw v5

    .line 3328
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    .line 3329
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3336
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 3337
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

    .line 3340
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3341
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->makeExtensionsImmutable()V

    .line 3343
    return-void

    .line 3311
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lorg/bitcoin/paymentchannel/Protos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3274
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3279
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3408
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    .line 3433
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedSerializedSize:I

    .line 3280
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3281
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 3274
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3282
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3408
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    .line 3433
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedSerializedSize:I

    .line 3282
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$3400()Z
    .locals 1

    .prologue
    .line 3274
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3602(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .param p1, "x1"    # I

    .prologue
    .line 3274
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I

    return p1
.end method

.method static synthetic access$3702(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .param p1, "x1"    # I

    .prologue
    .line 3274
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I

    return p1
.end method

.method static synthetic access$3802(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .param p1, "x1"    # I

    .prologue
    .line 3274
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1

    .prologue
    .line 3286
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3346
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3405
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I

    .line 3406
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I

    .line 3407
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .prologue
    .line 3512
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->access$3200()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .prologue
    .line 3515
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3492
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3498
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3462
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3468
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3503
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3509
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3482
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3488
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3472
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3478
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3274
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3274
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1

    .prologue
    .line 3290
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 3385
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 3401
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3368
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3435
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedSerializedSize:I

    .line 3436
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3449
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 3438
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 3439
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3440
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3443
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 3444
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3447
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 3448
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedSerializedSize:I

    move v1, v0

    .line 3449
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 3297
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMajor()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3379
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinor()Z
    .locals 2

    .prologue
    .line 3395
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

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
    .line 3351
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$3000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3410
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    .line 3411
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 3418
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 3411
    goto :goto_0

    .line 3413
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->hasMajor()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3414
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    move v1, v2

    .line 3415
    goto :goto_0

    .line 3417
    :cond_2
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3274
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3274
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3274
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .prologue
    .line 3513
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3522
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 3523
    .local v0, "builder":Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3274
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3274
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .prologue
    .line 3517
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

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
    .line 3456
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3423
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getSerializedSize()I

    .line 3424
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3425
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3427
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3428
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3430
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3431
    return-void
.end method

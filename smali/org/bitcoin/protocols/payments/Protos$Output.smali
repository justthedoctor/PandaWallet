.class public final Lorg/bitcoin/protocols/payments/Protos$Output;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCRIPT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Output;

.field private static final serialVersionUID:J


# instance fields
.field private amount_:J

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private script_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Output$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$Output$1;-><init>()V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    .line 564
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$Output;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Output;

    .line 565
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Output;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$Output;->initFields()V

    .line 566
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

    .line 85
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 207
    iput-byte v5, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->memoizedIsInitialized:B

    .line 232
    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->memoizedSerializedSize:I

    .line 86
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->initFields()V

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 91
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 92
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 93
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 94
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 99
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/protocols/payments/Protos$Output;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :sswitch_0
    const/4 v0, 0x1

    .line 97
    goto :goto_0

    .line 106
    :sswitch_1
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->bitField0_:I

    .line 107
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->amount_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 124
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->makeExtensionsImmutable()V

    throw v5

    .line 111
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->bitField0_:I

    .line 112
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->script_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 119
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 120
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

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 124
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->makeExtensionsImmutable()V

    .line 126
    return-void

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lorg/bitcoin/protocols/payments/Protos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Output;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 62
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 207
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->memoizedIsInitialized:B

    .line 232
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->memoizedSerializedSize:I

    .line 63
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Output;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 207
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->memoizedIsInitialized:B

    .line 232
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->memoizedSerializedSize:I

    .line 65
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$Output;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lorg/bitcoin/protocols/payments/Protos$Output;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$Output;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->amount_:J

    return-wide p1
.end method

.method static synthetic access$802(Lorg/bitcoin/protocols/payments/Protos$Output;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$Output;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->script_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$902(Lorg/bitcoin/protocols/payments/Protos$Output;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$Output;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->amount_:J

    .line 205
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->script_:Lcom/google/protobuf/ByteString;

    .line 206
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->access$300()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/protocols/payments/Protos$Output;

    .prologue
    .line 314
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 261
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method


# virtual methods
.method public getAmount()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->amount_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScript()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->script_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 234
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->memoizedSerializedSize:I

    .line 235
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 248
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 237
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 238
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 239
    iget-wide v2, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->amount_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 242
    :cond_1
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 243
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->script_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 246
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 247
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->memoizedSerializedSize:I

    move v1, v0

    .line 248
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAmount()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 166
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScript()Z
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->bitField0_:I

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
    .line 134
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$Output;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 209
    iget-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->memoizedIsInitialized:B

    .line 210
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 217
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 210
    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->hasScript()Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->memoizedIsInitialized:B

    move v1, v2

    .line 214
    goto :goto_0

    .line 216
    :cond_2
    iput-byte v1, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Output;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 321
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 322
    .local v0, "builder":Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-static {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

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
    .line 255
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 222
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->getSerializedSize()I

    .line 223
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 224
    iget-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->amount_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 226
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 227
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Output;->script_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 230
    return-void
.end method

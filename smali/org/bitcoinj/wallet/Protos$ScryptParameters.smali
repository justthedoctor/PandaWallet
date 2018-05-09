.class public final Lorg/bitcoinj/wallet/Protos$ScryptParameters;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScryptParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    }
.end annotation


# static fields
.field public static final N_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final P_FIELD_NUMBER:I = 0x4

.field public static final R_FIELD_NUMBER:I = 0x3

.field public static final SALT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private n_:J

.field private p_:I

.field private r_:I

.field private salt_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9157
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 9766
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->defaultInstance:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 9767
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->defaultInstance:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->initFields()V

    .line 9768
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

    .line 9093
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 9275
    iput-byte v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    .line 9306
    iput v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedSerializedSize:I

    .line 9094
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->initFields()V

    .line 9095
    const/4 v2, 0x0

    .line 9096
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 9099
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 9100
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 9101
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 9102
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 9107
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 9109
    const/4 v0, 0x1

    goto :goto_0

    .line 9104
    :sswitch_0
    const/4 v0, 0x1

    .line 9105
    goto :goto_0

    .line 9114
    :sswitch_1
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    .line 9115
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9135
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 9136
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9141
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9142
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->makeExtensionsImmutable()V

    throw v5

    .line 9119
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    .line 9120
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 9137
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 9138
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

    .line 9124
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    .line 9125
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    goto :goto_0

    .line 9129
    :sswitch_4
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    .line 9130
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 9141
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9142
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->makeExtensionsImmutable()V

    .line 9144
    return-void

    .line 9102
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 9065
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 9070
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 9275
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    .line 9306
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedSerializedSize:I

    .line 9071
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9072
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 9065
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 9073
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 9275
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    .line 9306
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedSerializedSize:I

    .line 9073
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$11100()Z
    .locals 1

    .prologue
    .line 9065
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11302(Lorg/bitcoinj/wallet/Protos$ScryptParameters;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 9065
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$11402(Lorg/bitcoinj/wallet/Protos$ScryptParameters;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .param p1, "x1"    # J

    .prologue
    .line 9065
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J

    return-wide p1
.end method

.method static synthetic access$11502(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .param p1, "x1"    # I

    .prologue
    .line 9065
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    return p1
.end method

.method static synthetic access$11602(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .param p1, "x1"    # I

    .prologue
    .line 9065
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I

    return p1
.end method

.method static synthetic access$11702(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .param p1, "x1"    # I

    .prologue
    .line 9065
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .prologue
    .line 9077
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->defaultInstance:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9147
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$10600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 9270
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;

    .line 9271
    const-wide/16 v0, 0x4000

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J

    .line 9272
    const/16 v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    .line 9273
    const/4 v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I

    .line 9274
    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .prologue
    .line 9393
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->access$10900()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .prologue
    .line 9396
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9373
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9379
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9343
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9349
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9384
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9390
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9363
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9369
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9353
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9359
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9065
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9065
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .prologue
    .line 9081
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->defaultInstance:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 9218
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J

    return-wide v0
.end method

.method public getP()I
    .locals 1

    .prologue
    .line 9266
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9169
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 9242
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    return v0
.end method

.method public getSalt()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 9194
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9308
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedSerializedSize:I

    .line 9309
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 9330
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 9311
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 9312
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 9313
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9316
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 9317
    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9320
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 9321
    const/4 v2, 0x3

    iget v3, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9324
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 9325
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9328
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 9329
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedSerializedSize:I

    move v1, v0

    .line 9330
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 9088
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasN()Z
    .locals 2

    .prologue
    .line 9208
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

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

.method public hasP()Z
    .locals 2

    .prologue
    .line 9256
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

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

.method public hasR()Z
    .locals 2

    .prologue
    .line 9232
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

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

.method public hasSalt()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9184
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

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
    .line 9152
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$10700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const-class v2, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 9277
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    .line 9278
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 9285
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 9278
    goto :goto_0

    .line 9280
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->hasSalt()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9281
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    move v1, v2

    .line 9282
    goto :goto_0

    .line 9284
    :cond_2
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9065
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 9065
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9065
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .prologue
    .line 9394
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 9403
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 9404
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9065
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->toBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9065
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->toBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .prologue
    .line 9398
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

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
    .line 9337
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

    .line 9290
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSerializedSize()I

    .line 9291
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9292
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9294
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 9295
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9297
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 9298
    const/4 v0, 0x3

    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9300
    :cond_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 9301
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9303
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 9304
    return-void
.end method

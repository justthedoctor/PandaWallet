.class public final Lorg/bitcoinj/wallet/Protos$Extension;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extension"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MANDATORY_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$Extension;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private id_:Ljava/lang/Object;

.field private mandatory_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9929
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Extension$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Extension$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    .line 10530
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Extension;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$Extension;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Extension;

    .line 10531
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Extension;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Extension;->initFields()V

    .line 10532
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

    .line 9870
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 10049
    iput-byte v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    .line 10085
    iput v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedSerializedSize:I

    .line 9871
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->initFields()V

    .line 9872
    const/4 v2, 0x0

    .line 9873
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 9876
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 9877
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 9878
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 9879
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 9884
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoinj/wallet/Protos$Extension;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 9886
    const/4 v0, 0x1

    goto :goto_0

    .line 9881
    :sswitch_0
    const/4 v0, 0x1

    .line 9882
    goto :goto_0

    .line 9891
    :sswitch_1
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    .line 9892
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9907
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 9908
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9913
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoinj/wallet/Protos$Extension;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9914
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->makeExtensionsImmutable()V

    throw v5

    .line 9896
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    .line 9897
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 9909
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 9910
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

    .line 9901
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    .line 9902
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 9913
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$Extension;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9914
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->makeExtensionsImmutable()V

    .line 9916
    return-void

    .line 9879
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 9842
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Extension;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 9847
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 10049
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    .line 10085
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedSerializedSize:I

    .line 9848
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9849
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 9842
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 9850
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 10049
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    .line 10085
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedSerializedSize:I

    .line 9850
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$12300()Z
    .locals 1

    .prologue
    .line 9842
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Extension;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$12500(Lorg/bitcoinj/wallet/Protos$Extension;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Extension;

    .prologue
    .line 9842
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12502(Lorg/bitcoinj/wallet/Protos$Extension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Extension;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 9842
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12602(Lorg/bitcoinj/wallet/Protos$Extension;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Extension;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 9842
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$12702(Lorg/bitcoinj/wallet/Protos$Extension;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Extension;
    .param p1, "x1"    # Z

    .prologue
    .line 9842
    iput-boolean p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z

    return p1
.end method

.method static synthetic access$12802(Lorg/bitcoinj/wallet/Protos$Extension;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Extension;
    .param p1, "x1"    # I

    .prologue
    .line 9842
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1

    .prologue
    .line 9854
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9919
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$11800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 10045
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    .line 10046
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;

    .line 10047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z

    .line 10048
    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .prologue
    .line 10168
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->access$12100()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoinj/wallet/Protos$Extension;

    .prologue
    .line 10171
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10148
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10154
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10118
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10124
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10159
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10165
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10138
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10144
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10128
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10134
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 10013
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9842
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9842
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1

    .prologue
    .line 9858
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9966
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    .line 9967
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9968
    check-cast v1, Ljava/lang/String;

    .line 9976
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 9970
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9972
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9973
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9974
    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9976
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 9988
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    .line 9989
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9990
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9993
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    .line 9996
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

.method public getMandatory()Z
    .locals 1

    .prologue
    .line 10041
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9941
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10087
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedSerializedSize:I

    .line 10088
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 10105
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 10090
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 10091
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 10092
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10095
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 10096
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10099
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 10100
    const/4 v2, 0x3

    iget-boolean v3, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 10103
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 10104
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedSerializedSize:I

    move v1, v0

    .line 10105
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 9865
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    .line 10007
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9956
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMandatory()Z
    .locals 2

    .prologue
    .line 10029
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 9924
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$11900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Extension;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10051
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    .line 10052
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 10067
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 10052
    goto :goto_0

    .line 10054
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 10055
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    goto :goto_1

    .line 10058
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->hasData()Z

    move-result v3

    if-nez v3, :cond_3

    .line 10059
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    goto :goto_1

    .line 10062
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->hasMandatory()Z

    move-result v3

    if-nez v3, :cond_4

    .line 10063
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    goto :goto_1

    .line 10066
    :cond_4
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    move v2, v1

    .line 10067
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9842
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 9842
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9842
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .prologue
    .line 10169
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 10178
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 10179
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9842
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->toBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9842
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->toBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .prologue
    .line 10173
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilder(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

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
    .line 10112
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

    .line 10072
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getSerializedSize()I

    .line 10073
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10074
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10076
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 10077
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10079
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 10080
    const/4 v0, 0x3

    iget-boolean v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10082
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 10083
    return-void
.end method

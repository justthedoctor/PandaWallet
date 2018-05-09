.class public final Lorg/bitcoinj/wallet/Protos$Script;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Script"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Script$Builder;
    }
.end annotation


# static fields
.field public static final CREATION_TIMESTAMP_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROGRAM_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$Script;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private creationTimestamp_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private program_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2671
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Script$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Script$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    .line 3082
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Script;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$Script;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Script;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Script;

    .line 3083
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Script;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Script;->initFields()V

    .line 3084
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

    .line 2617
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2733
    iput-byte v5, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    .line 2762
    iput v5, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedSerializedSize:I

    .line 2618
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Script;->initFields()V

    .line 2619
    const/4 v2, 0x0

    .line 2620
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 2623
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 2624
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2625
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2626
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2631
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoinj/wallet/Protos$Script;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2633
    const/4 v0, 0x1

    goto :goto_0

    .line 2628
    :sswitch_0
    const/4 v0, 0x1

    .line 2629
    goto :goto_0

    .line 2638
    :sswitch_1
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    .line 2639
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2649
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 2650
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2655
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoinj/wallet/Protos$Script;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2656
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->makeExtensionsImmutable()V

    throw v5

    .line 2643
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    .line 2644
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2651
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 2652
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

    .line 2655
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$Script;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2656
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->makeExtensionsImmutable()V

    .line 2658
    return-void

    .line 2626
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 2589
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Script;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2594
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2733
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    .line 2762
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedSerializedSize:I

    .line 2595
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2596
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 2589
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 2597
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2733
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    .line 2762
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedSerializedSize:I

    .line 2597
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$4000()Z
    .locals 1

    .prologue
    .line 2589
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Script;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4202(Lorg/bitcoinj/wallet/Protos$Script;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Script;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2589
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4302(Lorg/bitcoinj/wallet/Protos$Script;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Script;
    .param p1, "x1"    # J

    .prologue
    .line 2589
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$4402(Lorg/bitcoinj/wallet/Protos$Script;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Script;
    .param p1, "x1"    # I

    .prologue
    .line 2589
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1

    .prologue
    .line 2601
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2661
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 2730
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;

    .line 2731
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J

    .line 2732
    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .prologue
    .line 2841
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->access$3800()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoinj/wallet/Protos$Script;

    .prologue
    .line 2844
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2821
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2827
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2791
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2797
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2832
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2838
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2811
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2817
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2801
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2807
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method


# virtual methods
.method public getCreationTimestamp()J
    .locals 2

    .prologue
    .line 2726
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2589
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2589
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1

    .prologue
    .line 2605
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2683
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProgram()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2700
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2764
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedSerializedSize:I

    .line 2765
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2778
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2767
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2768
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2769
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2772
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2773
    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2776
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2777
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedSerializedSize:I

    move v1, v0

    .line 2778
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCreationTimestamp()Z
    .locals 2

    .prologue
    .line 2715
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

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

.method public hasProgram()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2694
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

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
    .line 2666
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$3600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Script;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2735
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    .line 2736
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 2747
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2736
    goto :goto_0

    .line 2738
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->hasProgram()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2739
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    move v1, v2

    .line 2740
    goto :goto_0

    .line 2742
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->hasCreationTimestamp()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2743
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    move v1, v2

    .line 2744
    goto :goto_0

    .line 2746
    :cond_3
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2589
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2589
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2589
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .prologue
    .line 2842
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2851
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 2852
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$Script$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2589
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->toBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2589
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->toBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .prologue
    .line 2846
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilder(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

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
    .line 2785
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

    .line 2752
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->getSerializedSize()I

    .line 2753
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2754
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2756
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2757
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2759
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2760
    return-void
.end method

.class public final Lcom/google/protobuf/DescriptorProtos$MethodOptions;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21664
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 22335
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 22336
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->initFields()V

    .line 22337
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    .line 21609
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 21738
    iput-byte v5, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 21770
    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 21610
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->initFields()V

    .line 21611
    const/4 v2, 0x0

    .line 21612
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 21615
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 21616
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 21617
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 21618
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 21623
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 21625
    const/4 v0, 0x1

    goto :goto_0

    .line 21620
    :sswitch_0
    const/4 v0, 0x1

    .line 21621
    goto :goto_0

    .line 21630
    :sswitch_1
    and-int/lit8 v5, v2, 0x1

    if-eq v5, v7, :cond_1

    .line 21631
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 21632
    or-int/lit8 v2, v2, 0x1

    .line 21634
    :cond_1
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v6, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 21639
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 21640
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21645
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v7, :cond_2

    .line 21646
    iget-object v6, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 21648
    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21649
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->makeExtensionsImmutable()V

    .line 21645
    throw v5

    .line 21641
    :catch_1
    move-exception v1

    .line 21642
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21645
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    and-int/lit8 v5, v2, 0x1

    if-ne v5, v7, :cond_4

    .line 21646
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 21648
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21649
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->makeExtensionsImmutable()V

    .line 21651
    return-void

    .line 21618
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/DescriptorProtos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21581
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;, "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<Lcom/google/protobuf/DescriptorProtos$MethodOptions;*>;"
    const/4 v0, -0x1

    .line 21586
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    .line 21738
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 21770
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 21587
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21588
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .param p2, "x1"    # Lcom/google/protobuf/DescriptorProtos$1;

    .prologue
    .line 21581
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 21589
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 21738
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 21770
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 21589
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$17400(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .prologue
    .line 21581
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17402(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 21581
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 21593
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 21654
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$16800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 21736
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 21737
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 21846
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->access$17100()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .prologue
    .line 21849
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21826
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21832
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21796
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21802
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21837
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21843
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21816
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21822
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21806
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21812
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 21597
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 21581
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21581
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21676
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 21772
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 21773
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 21783
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 21775
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 21776
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 21777
    const/16 v4, 0x3e7

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 21776
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21780
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->extensionsSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 21781
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 21782
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    move v2, v1

    .line 21783
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 21721
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 21711
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21690
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 21732
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21701
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 21604
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 21659
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$16900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 21740
    iget-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 21741
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 21754
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 21741
    goto :goto_0

    .line 21743
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOptionCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 21744
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 21745
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 21746
    goto :goto_0

    .line 21743
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21749
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 21750
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 21751
    goto :goto_0

    .line 21753
    :cond_4
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 21847
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 21856
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 21857
    .local v0, "builder":Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 21581
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 21581
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21581
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 21851
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 21581
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21581
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

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
    .line 21790
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->writeReplace()Ljava/lang/Object;

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
    .line 21759
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getSerializedSize()I

    .line 21761
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 21763
    .local v0, "extensionWriter":Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;, "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<Lcom/google/protobuf/DescriptorProtos$MethodOptions;>.ExtensionWriter;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 21764
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21763
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21766
    :cond_0
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 21767
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 21768
    return-void
.end method

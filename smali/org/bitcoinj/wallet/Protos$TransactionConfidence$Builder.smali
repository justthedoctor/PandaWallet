.class public final Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;"
    }
.end annotation


# instance fields
.field private appearedAtHeight_:I

.field private bitField0_:I

.field private broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;",
            "Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private broadcastBy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation
.end field

.field private depth_:I

.field private overridingTransaction_:Lcom/google/protobuf/ByteString;

.field private source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

.field private type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

.field private workDone_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5561
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5754
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 5855
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 6021
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 6261
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 5562
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->maybeForceBuilderInitialization()V

    .line 5563
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5567
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5754
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 5855
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 6021
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 6261
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 5568
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->maybeForceBuilderInitialization()V

    .line 5569
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 5545
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$7200()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 5545
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 5576
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;-><init>()V

    return-object v0
.end method

.method private ensureBroadcastByIsMutable()V
    .locals 2

    .prologue
    .line 6024
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 6025
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 6026
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 6028
    :cond_0
    return-void
.end method

.method private getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;",
            "Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6248
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6249
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 6255
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 6257
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 6249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5550
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$6900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 5571
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$7400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5572
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 5574
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllBroadcastBy(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;"
        }
    .end annotation

    .prologue
    .line 6160
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/bitcoinj/wallet/Protos$PeerAddress;>;"
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6161
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 6162
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6163
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6167
    :goto_0
    return-object p0

    .line 6165
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addBroadcastBy(ILorg/bitcoinj/wallet/Protos$PeerAddress$Builder;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .prologue
    .line 6146
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6147
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 6148
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6149
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6153
    :goto_0
    return-object p0

    .line 6151
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addBroadcastBy(ILorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$PeerAddress;

    .prologue
    .line 6115
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6116
    if-nez p2, :cond_0

    .line 6117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6119
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 6120
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6121
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6125
    :goto_0
    return-object p0

    .line 6123
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addBroadcastBy(Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .prologue
    .line 6132
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6133
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 6134
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6135
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6139
    :goto_0
    return-object p0

    .line 6137
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addBroadcastBy(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$PeerAddress;

    .prologue
    .line 6098
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6099
    if-nez p1, :cond_0

    .line 6100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6102
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 6103
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6104
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6108
    :goto_0
    return-object p0

    .line 6106
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addBroadcastByBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2

    .prologue
    .line 6227
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    return-object v0
.end method

.method public addBroadcastByBuilder(I)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 6235
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 2

    .prologue
    .line 5616
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    .line 5617
    .local v0, "result":Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5618
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5620
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 5

    .prologue
    .line 5624
    new-instance v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 5625
    .local v1, "result":Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5626
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 5627
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5628
    or-int/lit8 v2, v2, 0x1

    .line 5630
    :cond_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$7602(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 5631
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5632
    or-int/lit8 v2, v2, 0x2

    .line 5634
    :cond_1
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->appearedAtHeight_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$7702(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I

    .line 5635
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5636
    or-int/lit8 v2, v2, 0x4

    .line 5638
    :cond_2
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$7802(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 5639
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5640
    or-int/lit8 v2, v2, 0x8

    .line 5642
    :cond_3
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->depth_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$7902(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I

    .line 5643
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 5644
    or-int/lit8 v2, v2, 0x10

    .line 5646
    :cond_4
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->workDone_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8002(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;J)J

    .line 5647
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_7

    .line 5648
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 5649
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 5650
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5652
    :cond_5
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8102(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Ljava/util/List;)Ljava/util/List;

    .line 5656
    :goto_0
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 5657
    or-int/lit8 v2, v2, 0x20

    .line 5659
    :cond_6
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8202(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 5660
    invoke-static {v1, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8302(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;I)I

    .line 5661
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onBuilt()V

    .line 5662
    return-object v1

    .line 5654
    :cond_7
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8102(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5580
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5581
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 5582
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5583
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->appearedAtHeight_:I

    .line 5584
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5585
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 5586
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5587
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->depth_:I

    .line 5588
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5589
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->workDone_:J

    .line 5590
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5591
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5592
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 5593
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5597
    :goto_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 5598
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5599
    return-object p0

    .line 5595
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearAppearedAtHeight()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 5848
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5849
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->appearedAtHeight_:I

    .line 5850
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 5851
    return-object p0
.end method

.method public clearBroadcastBy()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 6173
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 6175
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 6176
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6180
    :goto_0
    return-object p0

    .line 6178
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearDepth()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 5961
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5962
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->depth_:I

    .line 5963
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 5964
    return-object p0
.end method

.method public clearOverridingTransaction()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 5908
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5909
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getOverridingTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 5910
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 5911
    return-object p0
.end method

.method public clearSource()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 6290
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 6291
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 6292
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6293
    return-object p0
.end method

.method public clearType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1

    .prologue
    .line 5799
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5800
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 5801
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 5802
    return-object p0
.end method

.method public clearWorkDone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2

    .prologue
    .line 6014
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 6015
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->workDone_:J

    .line 6016
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6017
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2

    .prologue
    .line 5603
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppearedAtHeight()I
    .locals 1

    .prologue
    .line 5825
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->appearedAtHeight_:I

    return v0
.end method

.method public getBroadcastBy(I)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6057
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6058
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    .line 6060
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    goto :goto_0
.end method

.method public getBroadcastByBuilder(I)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6200
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    return-object v0
.end method

.method public getBroadcastByBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6243
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastByCount()I
    .locals 1

    .prologue
    .line 6047
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6048
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6050
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getBroadcastByList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6037
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6038
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6040
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getBroadcastByOrBuilder(I)Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6207
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6208
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;

    .line 6209
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;

    goto :goto_0
.end method

.method public getBroadcastByOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6217
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 6218
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 6220
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5545
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    .locals 1

    .prologue
    .line 5612
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 5936
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->depth_:I

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5608
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$6900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOverridingTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 5878
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSource()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;
    .locals 1

    .prologue
    .line 6272
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    return-object v0
.end method

.method public getType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;
    .locals 1

    .prologue
    .line 5773
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    return-object v0
.end method

.method public getWorkDone()J
    .locals 2

    .prologue
    .line 5989
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->workDone_:J

    return-wide v0
.end method

.method public hasAppearedAtHeight()Z
    .locals 2

    .prologue
    .line 5815
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

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

.method public hasDepth()Z
    .locals 2

    .prologue
    .line 5925
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

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

.method public hasOverridingTransaction()Z
    .locals 2

    .prologue
    .line 5866
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    .line 6266
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5763
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWorkDone()Z
    .locals 2

    .prologue
    .line 5978
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 5555
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$7000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 5725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5726
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastBy(I)Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5728
    const/4 v1, 0x0

    .line 5731
    :goto_1
    return v1

    .line 5725
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5731
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5545
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5545
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5545
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5545
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5545
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5545
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5738
    const/4 v2, 0x0

    .line 5740
    .local v2, "parsedMessage":Lorg/bitcoinj/wallet/Protos$TransactionConfidence;
    :try_start_0
    sget-object v3, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5745
    if-eqz v2, :cond_0

    .line 5746
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 5749
    :cond_0
    return-object p0

    .line 5741
    :catch_0
    move-exception v1

    .line 5742
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-object v2, v0

    .line 5743
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5745
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 5746
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 5666
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    if-eqz v0, :cond_0

    .line 5667
    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    move-result-object p0

    .line 5670
    .end local p0    # "this":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    :goto_0
    return-object p0

    .line 5669
    .restart local p0    # "this":Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 3
    .param p1, "other"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    .prologue
    const/4 v0, 0x0

    .line 5675
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionConfidence;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 5721
    :goto_0
    return-object p0

    .line 5676
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5677
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getType()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setType(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 5679
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasAppearedAtHeight()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5680
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getAppearedAtHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setAppearedAtHeight(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 5682
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasOverridingTransaction()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5683
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getOverridingTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setOverridingTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 5685
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasDepth()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5686
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getDepth()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setDepth(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 5688
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasWorkDone()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5689
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getWorkDone()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setWorkDone(J)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 5691
    :cond_5
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_9

    .line 5692
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8100(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5693
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5694
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8100(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 5695
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5700
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 5717
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5718
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getSource()Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->setSource(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;

    .line 5720
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 5697
    :cond_8
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 5698
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8100(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5703
    :cond_9
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8100(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 5704
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5705
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 5706
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 5707
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8100(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    .line 5708
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5709
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8400()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->getBroadcastByFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 5713
    :cond_b
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence;->access$8100(Lorg/bitcoinj/wallet/Protos$TransactionConfidence;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeBroadcastBy(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6186
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6187
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 6188
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6189
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6193
    :goto_0
    return-object p0

    .line 6191
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAppearedAtHeight(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5835
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5836
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->appearedAtHeight_:I

    .line 5837
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 5838
    return-object p0
.end method

.method public setBroadcastBy(ILorg/bitcoinj/wallet/Protos$PeerAddress$Builder;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .prologue
    .line 6085
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6086
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 6087
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6088
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6092
    :goto_0
    return-object p0

    .line 6090
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->build()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setBroadcastBy(ILorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$PeerAddress;

    .prologue
    .line 6068
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6069
    if-nez p2, :cond_0

    .line 6070
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6072
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->ensureBroadcastByIsMutable()V

    .line 6073
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastBy_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6074
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6078
    :goto_0
    return-object p0

    .line 6076
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->broadcastByBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setDepth(I)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5947
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5948
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->depth_:I

    .line 5949
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 5950
    return-object p0
.end method

.method public setOverridingTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5890
    if-nez p1, :cond_0

    .line 5891
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5893
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5894
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->overridingTransaction_:Lcom/google/protobuf/ByteString;

    .line 5895
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 5896
    return-object p0
.end method

.method public setSource(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .prologue
    .line 6278
    if-nez p1, :cond_0

    .line 6279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6281
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 6282
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->source_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    .line 6283
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6284
    return-object p0
.end method

.method public setType(Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .prologue
    .line 5783
    if-nez p1, :cond_0

    .line 5784
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5786
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 5787
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->type_:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    .line 5788
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 5789
    return-object p0
.end method

.method public setWorkDone(J)Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 6000
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->bitField0_:I

    .line 6001
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->workDone_:J

    .line 6002
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Builder;->onChanged()V

    .line 6003
    return-object p0
.end method

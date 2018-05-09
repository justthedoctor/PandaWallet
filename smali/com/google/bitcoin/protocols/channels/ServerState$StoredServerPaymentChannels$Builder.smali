.class public final Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ServerState.java"

# interfaces
.implements Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;",
        ">;",
        "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private channels_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 455
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 319
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->maybeForceBuilderInitialization()V

    .line 320
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 455
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 325
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->maybeForceBuilderInitialization()V

    .line 326
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/bitcoin/protocols/channels/ServerState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/google/bitcoin/protocols/channels/ServerState$1;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->create()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    invoke-direct {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;-><init>()V

    return-object v0
.end method

.method private ensureChannelsIsMutable()V
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 460
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    .line 462
    :cond_0
    return-void
.end method

.method private getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 682
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 683
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    iget v3, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 683
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 331
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllChannels(Ljava/lang/Iterable;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;",
            ">;)",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;>;"
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 595
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 596
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 597
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    .line 601
    :goto_0
    return-object p0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addChannels(ILcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 582
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 583
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    .line 587
    :goto_0
    return-object p0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addChannels(ILcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 550
    if-nez p2, :cond_0

    .line 551
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 554
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 555
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    .line 559
    :goto_0
    return-object p0

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addChannels(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 568
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    .line 573
    :goto_0
    return-object p0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addChannels(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 533
    if-nez p1, :cond_0

    .line 534
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 537
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    .line 542
    :goto_0
    return-object p0

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addChannelsBuilder()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    return-object v0
.end method

.method public addChannelsBuilder(I)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    return-object v0
.end method

.method public build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    .line 362
    .local v0, "result":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;
    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 365
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;
    .locals 4

    .prologue
    .line 369
    new-instance v1, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/bitcoin/protocols/channels/ServerState$1;)V

    .line 370
    .local v1, "result":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    .line 371
    .local v0, "from_bitField0_":I
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 372
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 373
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 374
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->access$702(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;Ljava/util/List;)Ljava/util/List;

    .line 380
    :goto_0
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onBuilt()V

    .line 381
    return-object v1

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->access$702(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .prologue
    .line 337
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 338
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 340
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    .line 344
    :goto_0
    return-object p0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearChannels()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 609
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    .line 610
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    .line 614
    :goto_0
    return-object p0

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->create()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

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
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChannels(I)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    .line 494
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    goto :goto_0
.end method

.method public getChannelsBuilder(I)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    return-object v0
.end method

.method public getChannelsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChannelsCount()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 484
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getChannelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 474
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getChannelsOrBuilder(I)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;

    .line 643
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;

    goto :goto_0
.end method

.method public getChannelsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 654
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 312
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    const-class v2, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 427
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannels(I)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    const/4 v1, 0x0

    .line 432
    :goto_1
    return v1

    .line 426
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 422
    :goto_0
    return-object p0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 396
    invoke-static {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    invoke-static {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 399
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    .line 404
    :goto_1
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    .line 421
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 401
    :cond_2
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 402
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 407
    :cond_3
    invoke-static {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 409
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 410
    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 411
    invoke-static {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    .line 412
    iget v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->bitField0_:I

    .line 413
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->access$800()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->getChannelsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 417
    :cond_5
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->access$700(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    const/4 v2, 0x0

    .line 441
    .local v2, "parsedMessage":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;
    :try_start_0
    sget-object v3, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    if-eqz v2, :cond_0

    .line 447
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    .line 450
    :cond_0
    return-object p0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-object v2, v0

    .line 444
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 447
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 385
    instance-of v0, p1, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    if-eqz v0, :cond_0

    .line 386
    check-cast p1, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object p0

    .line 389
    .end local p0    # "this":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    :goto_0
    return-object p0

    .line 388
    .restart local p0    # "this":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
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
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

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
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

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
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

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
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeChannels(I)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 622
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 623
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    .line 627
    :goto_0
    return-object p0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setChannels(ILcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 521
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    .line 526
    :goto_0
    return-object p0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setChannels(ILcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 503
    if-nez p2, :cond_0

    .line 504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->ensureChannelsIsMutable()V

    .line 507
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channels_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->onChanged()V

    .line 512
    :goto_0
    return-object p0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->channelsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

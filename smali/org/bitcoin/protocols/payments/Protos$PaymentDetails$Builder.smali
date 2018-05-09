.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;",
        ">;",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentDetailsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private expires_:J

.field private memo_:Ljava/lang/Object;

.field private merchantData_:Lcom/google/protobuf/ByteString;

.field private network_:Ljava/lang/Object;

.field private outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            "Lorg/bitcoin/protocols/payments/Protos$Output$Builder;",
            "Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private outputs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation
.end field

.field private paymentUrl_:Ljava/lang/Object;

.field private time_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1365
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1568
    const-string v0, "main"

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1666
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 2076
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2174
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2272
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 1366
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->maybeForceBuilderInitialization()V

    .line 1367
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1371
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1568
    const-string v0, "main"

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1666
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 2076
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2174
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2272
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 1372
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->maybeForceBuilderInitialization()V

    .line 1373
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 1349
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1300()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .prologue
    .line 1349
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .prologue
    .line 1380
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;-><init>()V

    return-object v0
.end method

.method private ensureOutputsIsMutable()V
    .locals 2

    .prologue
    .line 1669
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1670
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1671
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1673
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1354
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            "Lorg/bitcoin/protocols/payments/Protos$Output$Builder;",
            "Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1965
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1966
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1972
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1974
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1966
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1375
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1378
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllOutputs(Ljava/lang/Iterable;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;)",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;"
        }
    .end annotation

    .prologue
    .line 1845
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/bitcoin/protocols/payments/Protos$Output;>;"
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1846
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1847
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1848
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1852
    :goto_0
    return-object p0

    .line 1850
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addOutputs(ILorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .prologue
    .line 1827
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1828
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1829
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1830
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1834
    :goto_0
    return-object p0

    .line 1832
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addOutputs(ILorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoin/protocols/payments/Protos$Output;

    .prologue
    .line 1788
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1789
    if-nez p2, :cond_0

    .line 1790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1792
    :cond_0
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1793
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1794
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1798
    :goto_0
    return-object p0

    .line 1796
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addOutputs(Lorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .prologue
    .line 1809
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1810
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1811
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1812
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1816
    :goto_0
    return-object p0

    .line 1814
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addOutputs(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/protocols/payments/Protos$Output;

    .prologue
    .line 1767
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1768
    if-nez p1, :cond_0

    .line 1769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1771
    :cond_0
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1772
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1773
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1777
    :goto_0
    return-object p0

    .line 1775
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addOutputsBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2

    .prologue
    .line 1936
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object v0
.end method

.method public addOutputsBuilder(I)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1948
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 2

    .prologue
    .line 1420
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    .line 1421
    .local v0, "result":Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1422
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1424
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 5

    .prologue
    .line 1428
    new-instance v1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 1429
    .local v1, "result":Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1430
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1431
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1432
    or-int/lit8 v2, v2, 0x1

    .line 1434
    :cond_0
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1702(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_7

    .line 1436
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1437
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1438
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1440
    :cond_1
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1802(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/util/List;)Ljava/util/List;

    .line 1444
    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1445
    or-int/lit8 v2, v2, 0x2

    .line 1447
    :cond_2
    iget-wide v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->time_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1902(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;J)J

    .line 1448
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1449
    or-int/lit8 v2, v2, 0x4

    .line 1451
    :cond_3
    iget-wide v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->expires_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2002(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;J)J

    .line 1452
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1453
    or-int/lit8 v2, v2, 0x8

    .line 1455
    :cond_4
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2102(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1457
    or-int/lit8 v2, v2, 0x10

    .line 1459
    :cond_5
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2202(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1461
    or-int/lit8 v2, v2, 0x20

    .line 1463
    :cond_6
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2302(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1464
    invoke-static {v1, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2402(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;I)I

    .line 1465
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onBuilt()V

    .line 1466
    return-object v1

    .line 1442
    :cond_7
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1802(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1384
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1385
    const-string v0, "main"

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1386
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1387
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1388
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1389
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1393
    :goto_0
    iput-wide v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->time_:J

    .line 1394
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1395
    iput-wide v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->expires_:J

    .line 1396
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1397
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 1398
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1399
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 1400
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1401
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 1402
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1403
    return-object p0

    .line 1391
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearExpires()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2

    .prologue
    .line 2069
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2070
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->expires_:J

    .line 2071
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2072
    return-object p0
.end method

.method public clearMemo()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .prologue
    .line 2150
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2151
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2152
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2153
    return-object p0
.end method

.method public clearMerchantData()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .prologue
    .line 2317
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2318
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMerchantData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 2319
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2320
    return-object p0
.end method

.method public clearNetwork()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .prologue
    .line 1642
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1643
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetwork()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1644
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1645
    return-object p0
.end method

.method public clearOutputs()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1863
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1864
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1865
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1869
    :goto_0
    return-object p0

    .line 1867
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPaymentUrl()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .prologue
    .line 2248
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2249
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getPaymentUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2250
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2251
    return-object p0
.end method

.method public clearTime()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2

    .prologue
    .line 2020
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2021
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->time_:J

    .line 2022
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2023
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

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
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2

    .prologue
    .line 1407
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1

    .prologue
    .line 1416
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1412
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .prologue
    .line 2046
    iget-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->expires_:J

    return-wide v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2095
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2096
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2097
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2099
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2102
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2114
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2115
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2116
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2119
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2122
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

.method public getMerchantData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2291
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1587
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1588
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1589
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1591
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1594
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1606
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1607
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1608
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1611
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1614
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

.method public getOutputs(I)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1714
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1715
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    .line 1717
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    goto :goto_0
.end method

.method public getOutputsBuilder(I)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1897
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object v0
.end method

.method public getOutputsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1960
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOutputsCount()I
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1701
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1703
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getOutputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1686
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1687
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1689
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputsOrBuilder(I)Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1908
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1909
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    .line 1910
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    goto :goto_0
.end method

.method public getOutputsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1922
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1925
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPaymentUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2193
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2194
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2195
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2197
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2200
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPaymentUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2212
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2213
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2214
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2217
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2220
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

.method public getTime()J
    .locals 2

    .prologue
    .line 1997
    iget-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->time_:J

    return-wide v0
.end method

.method public hasExpires()Z
    .locals 2

    .prologue
    .line 2036
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

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

.method public hasMemo()Z
    .locals 2

    .prologue
    .line 2085
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

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

.method public hasMerchantData()Z
    .locals 2

    .prologue
    .line 2281
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

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

.method public hasNetwork()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1577
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPaymentUrl()Z
    .locals 2

    .prologue
    .line 2183
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

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

.method public hasTime()Z
    .locals 2

    .prologue
    .line 1987
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

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
    .line 1359
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1535
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->hasTime()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1545
    :cond_0
    :goto_0
    return v1

    .line 1539
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1540
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputs(I)Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Output;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1539
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1545
    :cond_2
    const/4 v1, 0x1

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
    .line 1349
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1349
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

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
    .line 1349
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

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
    .line 1349
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1349
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

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
    .line 1349
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1552
    const/4 v2, 0x0

    .line 1554
    .local v2, "parsedMessage":Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    :try_start_0
    sget-object v3, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    if-eqz v2, :cond_0

    .line 1560
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 1563
    :cond_0
    return-object p0

    .line 1555
    :catch_0
    move-exception v1

    .line 1556
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-object v2, v0

    .line 1557
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1559
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1560
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1470
    instance-of v0, p1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    if-eqz v0, :cond_0

    .line 1471
    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object p0

    .line 1474
    .end local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    :goto_0
    return-object p0

    .line 1473
    .restart local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2
    .param p1, "other"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    .prologue
    const/4 v0, 0x0

    .line 1479
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1531
    :goto_0
    return-object p0

    .line 1480
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasNetwork()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1481
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1482
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1700(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1483
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1485
    :cond_1
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_9

    .line 1486
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1487
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1488
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1489
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1494
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1511
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1512
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setTime(J)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 1514
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasExpires()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1515
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getExpires()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setExpires(J)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 1517
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1518
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1519
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2100(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 1520
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1522
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasPaymentUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1523
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1524
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2200(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 1525
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1527
    :cond_6
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasMerchantData()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1528
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMerchantData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 1530
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1491
    :cond_8
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1492
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1497
    :cond_9
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1498
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1499
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1500
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1501
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    .line 1502
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1503
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$2500()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->getOutputsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1507
    :cond_b
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2
.end method

.method public removeOutputs(I)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1879
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1880
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1881
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1882
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1886
    :goto_0
    return-object p0

    .line 1884
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setExpires(J)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2056
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2057
    iput-wide p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->expires_:J

    .line 2058
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2059
    return-object p0
.end method

.method public setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2134
    if-nez p1, :cond_0

    .line 2135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2137
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2138
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2139
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2140
    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2164
    if-nez p1, :cond_0

    .line 2165
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2167
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2168
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->memo_:Ljava/lang/Object;

    .line 2169
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2170
    return-object p0
.end method

.method public setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2301
    if-nez p1, :cond_0

    .line 2302
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2304
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2305
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 2306
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2307
    return-object p0
.end method

.method public setNetwork(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1626
    if-nez p1, :cond_0

    .line 1627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1629
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1630
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1631
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1632
    return-object p0
.end method

.method public setNetworkBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1656
    if-nez p1, :cond_0

    .line 1657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1659
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 1660
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->network_:Ljava/lang/Object;

    .line 1661
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1662
    return-object p0
.end method

.method public setOutputs(ILorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .prologue
    .line 1750
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1751
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1752
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1753
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1757
    :goto_0
    return-object p0

    .line 1755
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setOutputs(ILorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoin/protocols/payments/Protos$Output;

    .prologue
    .line 1729
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1730
    if-nez p2, :cond_0

    .line 1731
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1733
    :cond_0
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->ensureOutputsIsMutable()V

    .line 1734
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1735
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 1739
    :goto_0
    return-object p0

    .line 1737
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->outputsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPaymentUrl(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2232
    if-nez p1, :cond_0

    .line 2233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2235
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2236
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2237
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2238
    return-object p0
.end method

.method public setPaymentUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2262
    if-nez p1, :cond_0

    .line 2263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2265
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2266
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->paymentUrl_:Ljava/lang/Object;

    .line 2267
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2268
    return-object p0
.end method

.method public setTime(J)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2007
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->bitField0_:I

    .line 2008
    iput-wide p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->time_:J

    .line 2009
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->onChanged()V

    .line 2010
    return-object p0
.end method

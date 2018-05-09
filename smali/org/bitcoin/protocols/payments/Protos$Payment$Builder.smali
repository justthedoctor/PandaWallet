.class public final Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos$Payment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;",
        ">;",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private memo_:Ljava/lang/Object;

.field private merchantData_:Lcom/google/protobuf/ByteString;

.field private refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
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

.field private refundTo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation
.end field

.field private transactions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4379
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4555
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4607
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4707
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 5019
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 4380
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->maybeForceBuilderInitialization()V

    .line 4381
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4385
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4555
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4607
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4707
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 5019
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 4386
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->maybeForceBuilderInitialization()V

    .line 4387
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 4363
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5000()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .prologue
    .line 4363
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .prologue
    .line 4394
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRefundToIsMutable()V
    .locals 2

    .prologue
    .line 4710
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4711
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4712
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4714
    :cond_0
    return-void
.end method

.method private ensureTransactionsIsMutable()V
    .locals 2

    .prologue
    .line 4609
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 4610
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4611
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4613
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4368
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
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
    .line 5006
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5007
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 5013
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 5015
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 5007
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 4389
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4390
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4392
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllRefundTo(Ljava/lang/Iterable;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;)",
            "Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;"
        }
    .end annotation

    .prologue
    .line 4886
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/bitcoin/protocols/payments/Protos$Output;>;"
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4887
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4888
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4889
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4893
    :goto_0
    return-object p0

    .line 4891
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllTransactions(Ljava/lang/Iterable;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;"
        }
    .end annotation

    .prologue
    .line 4687
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/ByteString;>;"
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureTransactionsIsMutable()V

    .line 4688
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4689
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4690
    return-object p0
.end method

.method public addRefundTo(ILorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .prologue
    .line 4868
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4869
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4870
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4871
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4875
    :goto_0
    return-object p0

    .line 4873
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRefundTo(ILorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoin/protocols/payments/Protos$Output;

    .prologue
    .line 4829
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4830
    if-nez p2, :cond_0

    .line 4831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4833
    :cond_0
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4834
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4839
    :goto_0
    return-object p0

    .line 4837
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRefundTo(Lorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .prologue
    .line 4850
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4851
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4852
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4853
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4857
    :goto_0
    return-object p0

    .line 4855
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRefundTo(Lorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/protocols/payments/Protos$Output;

    .prologue
    .line 4808
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4809
    if-nez p1, :cond_0

    .line 4810
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4812
    :cond_0
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4813
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4814
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4818
    :goto_0
    return-object p0

    .line 4816
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRefundToBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2

    .prologue
    .line 4977
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object v0
.end method

.method public addRefundToBuilder(I)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 4989
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object v0
.end method

.method public addTransactions(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4670
    if-nez p1, :cond_0

    .line 4671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4673
    :cond_0
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureTransactionsIsMutable()V

    .line 4674
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4675
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4676
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 2

    .prologue
    .line 4428
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    .line 4429
    .local v0, "result":Lorg/bitcoin/protocols/payments/Protos$Payment;
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4430
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4432
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 5

    .prologue
    .line 4436
    new-instance v1, Lorg/bitcoin/protocols/payments/Protos$Payment;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/protocols/payments/Protos$Payment;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 4437
    .local v1, "result":Lorg/bitcoin/protocols/payments/Protos$Payment;
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4438
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 4439
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4440
    or-int/lit8 v2, v2, 0x1

    .line 4442
    :cond_0
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5402(Lorg/bitcoin/protocols/payments/Protos$Payment;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4443
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4444
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4445
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4447
    :cond_1
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5502(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/util/List;)Ljava/util/List;

    .line 4448
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_4

    .line 4449
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4450
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4451
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4453
    :cond_2
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5602(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/util/List;)Ljava/util/List;

    .line 4457
    :goto_0
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4458
    or-int/lit8 v2, v2, 0x2

    .line 4460
    :cond_3
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5702(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4461
    invoke-static {v1, v2}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5802(Lorg/bitcoin/protocols/payments/Protos$Payment;I)I

    .line 4462
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onBuilt()V

    .line 4463
    return-object v1

    .line 4455
    :cond_4
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5602(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .prologue
    .line 4398
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4399
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4400
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4401
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4402
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4403
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4405
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4409
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 4410
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4411
    return-object p0

    .line 4407
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearMemo()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .prologue
    .line 5093
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 5094
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5095
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 5096
    return-object p0
.end method

.method public clearMerchantData()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .prologue
    .line 4600
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4601
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getMerchantData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4602
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4603
    return-object p0
.end method

.method public clearRefundTo()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .prologue
    .line 4903
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4904
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4905
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4906
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4910
    :goto_0
    return-object p0

    .line 4908
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearTransactions()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .prologue
    .line 4700
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4701
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4702
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4703
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

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
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 2

    .prologue
    .line 4415
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4363
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1

    .prologue
    .line 4424
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4420
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5038
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5039
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5040
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5042
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5045
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
    .line 5057
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5058
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5059
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5062
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5065
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
    .line 4574
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRefundTo(I)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4755
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4756
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    .line 4758
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    goto :goto_0
.end method

.method public getRefundToBuilder(I)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4938
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    return-object v0
.end method

.method public getRefundToBuilderList()Ljava/util/List;
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
    .line 5001
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRefundToCount()I
    .locals 1

    .prologue
    .line 4741
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4742
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4744
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getRefundToList()Ljava/util/List;
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
    .line 4727
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4728
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4730
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRefundToOrBuilder(I)Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4949
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4950
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    .line 4951
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    goto :goto_0
.end method

.method public getRefundToOrBuilderList()Ljava/util/List;
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
    .line 4963
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 4964
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 4966
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTransactions(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4643
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransactionsCount()I
    .locals 1

    .prologue
    .line 4633
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransactionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4623
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMemo()Z
    .locals 2

    .prologue
    .line 5028
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

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

.method public hasMerchantData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4564
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

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
    .line 4373
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$Payment;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 4526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4527
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundTo(I)Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$Output;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4529
    const/4 v1, 0x0

    .line 4532
    :goto_1
    return v1

    .line 4526
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4532
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
    .line 4363
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4363
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

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
    .line 4363
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

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
    .line 4363
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4363
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

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
    .line 4363
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4539
    const/4 v2, 0x0

    .line 4541
    .local v2, "parsedMessage":Lorg/bitcoin/protocols/payments/Protos$Payment;
    :try_start_0
    sget-object v3, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4546
    if-eqz v2, :cond_0

    .line 4547
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 4550
    :cond_0
    return-object p0

    .line 4542
    :catch_0
    move-exception v1

    .line 4543
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-object v2, v0

    .line 4544
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4546
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 4547
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 4467
    instance-of v0, p1, Lorg/bitcoin/protocols/payments/Protos$Payment;

    if-eqz v0, :cond_0

    .line 4468
    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Payment;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object p0

    .line 4471
    .end local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    :goto_0
    return-object p0

    .line 4470
    .restart local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 3
    .param p1, "other"    # Lorg/bitcoin/protocols/payments/Protos$Payment;

    .prologue
    const/4 v0, 0x0

    .line 4476
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 4522
    :goto_0
    return-object p0

    .line 4477
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->hasMerchantData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4478
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getMerchantData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 4480
    :cond_1
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5500(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4481
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4482
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5500(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    .line 4483
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4488
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4490
    :cond_2
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_7

    .line 4491
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4492
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4493
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4494
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4499
    :goto_2
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4516
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4517
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4518
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5700(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 4519
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4521
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 4485
    :cond_5
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureTransactionsIsMutable()V

    .line 4486
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5500(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4496
    :cond_6
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4497
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 4502
    :cond_7
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4503
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4504
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 4505
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4506
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    .line 4507
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4508
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5900()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->getRefundToFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_8
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_3

    .line 4512
    :cond_9
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_3
.end method

.method public removeRefundTo(I)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4920
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4921
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4922
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4923
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4927
    :goto_0
    return-object p0

    .line 4925
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5077
    if-nez p1, :cond_0

    .line 5078
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5080
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 5081
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5082
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 5083
    return-object p0
.end method

.method public setMemoBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 5107
    if-nez p1, :cond_0

    .line 5108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5110
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 5111
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->memo_:Ljava/lang/Object;

    .line 5112
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 5113
    return-object p0
.end method

.method public setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4584
    if-nez p1, :cond_0

    .line 4585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4587
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->bitField0_:I

    .line 4588
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4589
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4590
    return-object p0
.end method

.method public setRefundTo(ILorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .prologue
    .line 4791
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4792
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4793
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4794
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4798
    :goto_0
    return-object p0

    .line 4796
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setRefundTo(ILorg/bitcoin/protocols/payments/Protos$Output;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoin/protocols/payments/Protos$Output;

    .prologue
    .line 4770
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4771
    if-nez p2, :cond_0

    .line 4772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4774
    :cond_0
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureRefundToIsMutable()V

    .line 4775
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4776
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4780
    :goto_0
    return-object p0

    .line 4778
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->refundToBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTransactions(ILcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4654
    if-nez p2, :cond_0

    .line 4655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4657
    :cond_0
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->ensureTransactionsIsMutable()V

    .line 4658
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4659
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->onChanged()V

    .line 4660
    return-object p0
.end method

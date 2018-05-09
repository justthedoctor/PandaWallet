.class public final Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

.field private tx_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6147
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 6277
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 6349
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6148
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->maybeForceBuilderInitialization()V

    .line 6149
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 6153
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 6277
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 6349
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6154
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->maybeForceBuilderInitialization()V

    .line 6155
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 6131
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$7300()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .prologue
    .line 6131
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .prologue
    .line 6162
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6136
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$7000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getInitialPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6517
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6518
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 6523
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6525
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 6157
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->access$7500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6158
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getInitialPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 6160
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 2

    .prologue
    .line 6192
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    .line 6193
    .local v0, "result":Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6194
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6196
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 5

    .prologue
    .line 6200
    new-instance v1, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 6201
    .local v1, "result":Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6202
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 6203
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6204
    or-int/lit8 v2, v2, 0x1

    .line 6206
    :cond_0
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->access$7702(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 6207
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6208
    or-int/lit8 v2, v2, 0x2

    .line 6210
    :cond_1
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_2

    .line 6211
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->access$7802(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6215
    :goto_0
    invoke-static {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->access$7902(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;I)I

    .line 6216
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onBuilt()V

    .line 6217
    return-object v1

    .line 6213
    :cond_2
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->access$7802(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .prologue
    .line 6166
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6167
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 6168
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6169
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6170
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6174
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6175
    return-object p0

    .line 6172
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearInitialPayment()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .prologue
    .line 6463
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6464
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6465
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    .line 6469
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6470
    return-object p0

    .line 6467
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearTx()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .prologue
    .line 6342
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6343
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 6344
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    .line 6345
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

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
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 2

    .prologue
    .line 6179
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6131
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1

    .prologue
    .line 6188
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6184
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$7000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .prologue
    .line 6376
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6377
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6379
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_0
.end method

.method public getInitialPaymentBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .prologue
    .line 6483
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6484
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    .line 6485
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getInitialPaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    return-object v0
.end method

.method public getInitialPaymentOrBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;
    .locals 1

    .prologue
    .line 6498
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 6499
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;

    .line 6501
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_0
.end method

.method public getTx()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 6306
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasInitialPayment()Z
    .locals 2

    .prologue
    .line 6363
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

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

.method public hasTx()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6291
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

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
    .line 6141
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$7100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6242
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->hasTx()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6254
    :cond_0
    :goto_0
    return v0

    .line 6246
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->hasInitialPayment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6250
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6254
    const/4 v0, 0x1

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
    .line 6131
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 6131
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

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
    .line 6131
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

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
    .line 6131
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 6131
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

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
    .line 6131
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6261
    const/4 v2, 0x0

    .line 6263
    .local v2, "parsedMessage":Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    :try_start_0
    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6268
    if-eqz v2, :cond_0

    .line 6269
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    .line 6272
    :cond_0
    return-object p0

    .line 6264
    :catch_0
    move-exception v1

    .line 6265
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-object v2, v0

    .line 6266
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6268
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 6269
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 6221
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    if-eqz v0, :cond_0

    .line 6222
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p0

    .line 6225
    .end local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    :goto_0
    return-object p0

    .line 6224
    .restart local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .prologue
    .line 6230
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6238
    :goto_0
    return-object p0

    .line 6231
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->hasTx()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6232
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    .line 6234
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->hasInitialPayment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6235
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeInitialPayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    .line 6237
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeInitialPayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .prologue
    .line 6437
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 6438
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6440
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6445
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    .line 6449
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6450
    return-object p0

    .line 6443
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_0

    .line 6447
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setInitialPayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .prologue
    .line 6417
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 6418
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6419
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    .line 6423
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6424
    return-object p0

    .line 6421
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setInitialPayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .prologue
    .line 6393
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 6394
    if-nez p1, :cond_0

    .line 6395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6397
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6398
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    .line 6402
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6403
    return-object p0

    .line 6400
    :cond_1
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->initialPaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 6321
    if-nez p1, :cond_0

    .line 6322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6324
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->bitField0_:I

    .line 6325
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->tx_:Lcom/google/protobuf/ByteString;

    .line 6326
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->onChanged()V

    .line 6327
    return-object p0
.end method

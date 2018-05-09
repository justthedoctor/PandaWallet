.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;",
        ">;",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private paymentDetailsVersion_:I

.field private pkiData_:Lcom/google/protobuf/ByteString;

.field private pkiType_:Ljava/lang/Object;

.field private serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2851
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2993
    const/4 v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    .line 3026
    const-string v0, "none"

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3124
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 3176
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 3228
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2852
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->maybeForceBuilderInitialization()V

    .line 2853
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2857
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2993
    const/4 v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    .line 3026
    const-string v0, "none"

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3124
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 3176
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 3228
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2858
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->maybeForceBuilderInitialization()V

    .line 2859
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 2835
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2900()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .prologue
    .line 2865
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2840
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2861
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2863
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 2

    .prologue
    .line 2897
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    .line 2898
    .local v0, "result":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2899
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2901
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 5

    .prologue
    .line 2905
    new-instance v1, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 2906
    .local v1, "result":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2907
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2908
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2909
    or-int/lit8 v2, v2, 0x1

    .line 2911
    :cond_0
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3302(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;I)I

    .line 2912
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2913
    or-int/lit8 v2, v2, 0x2

    .line 2915
    :cond_1
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3402(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2916
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2917
    or-int/lit8 v2, v2, 0x4

    .line 2919
    :cond_2
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3502(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2920
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2921
    or-int/lit8 v2, v2, 0x8

    .line 2923
    :cond_3
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3602(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2924
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2925
    or-int/lit8 v2, v2, 0x10

    .line 2927
    :cond_4
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3702(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2928
    invoke-static {v1, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3802(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;I)I

    .line 2929
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onBuilt()V

    .line 2930
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .prologue
    .line 2869
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2870
    const/4 v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    .line 2871
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2872
    const-string v0, "none"

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 2873
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2874
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 2875
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2876
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 2877
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2878
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2879
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2880
    return-object p0
.end method

.method public clearPaymentDetailsVersion()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .prologue
    .line 3019
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3020
    const/4 v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    .line 3021
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 3022
    return-object p0
.end method

.method public clearPkiData()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .prologue
    .line 3169
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3170
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 3171
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 3172
    return-object p0
.end method

.method public clearPkiType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .prologue
    .line 3100
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3101
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3102
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 3103
    return-object p0
.end method

.method public clearSerializedPaymentDetails()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .prologue
    .line 3221
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3222
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 3223
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 3224
    return-object p0
.end method

.method public clearSignature()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .prologue
    .line 3273
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3274
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 3275
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 3276
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

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
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 2

    .prologue
    .line 2884
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2835
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1

    .prologue
    .line 2893
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2889
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentDetailsVersion()I
    .locals 1

    .prologue
    .line 3004
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    return v0
.end method

.method public getPkiData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3143
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPkiType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3045
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3046
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3047
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3049
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3052
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

.method public getPkiTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3064
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3065
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3066
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3069
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3072
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

.method public getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3195
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3247
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasPaymentDetailsVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2998
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPkiData()Z
    .locals 2

    .prologue
    .line 3133
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

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

.method public hasPkiType()Z
    .locals 2

    .prologue
    .line 3035
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

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

.method public hasSerializedPaymentDetails()Z
    .locals 2

    .prologue
    .line 3185
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

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

.method public hasSignature()Z
    .locals 2

    .prologue
    .line 3237
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

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
    .line 2845
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2966
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->hasSerializedPaymentDetails()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2968
    const/4 v0, 0x0

    .line 2970
    :goto_0
    return v0

    :cond_0
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
    .line 2835
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2835
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

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
    .line 2835
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

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
    .line 2835
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2835
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

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
    .line 2835
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2977
    const/4 v2, 0x0

    .line 2979
    .local v2, "parsedMessage":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    :try_start_0
    sget-object v3, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2984
    if-eqz v2, :cond_0

    .line 2985
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 2988
    :cond_0
    return-object p0

    .line 2980
    :catch_0
    move-exception v1

    .line 2981
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-object v2, v0

    .line 2982
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2984
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2985
    invoke-virtual {p0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2934
    instance-of v0, p1, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    if-eqz v0, :cond_0

    .line 2935
    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p0

    .line 2938
    .end local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    :goto_0
    return-object p0

    .line 2937
    .restart local p0    # "this":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    .prologue
    .line 2943
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2962
    :goto_0
    return-object p0

    .line 2944
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasPaymentDetailsVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2945
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPaymentDetailsVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setPaymentDetailsVersion(I)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 2947
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasPkiType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2948
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2949
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3400(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 2950
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 2952
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasPkiData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2953
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setPkiData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 2955
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasSerializedPaymentDetails()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2956
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSerializedPaymentDetails(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 2958
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2959
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 2961
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setPaymentDetailsVersion(I)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3010
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3011
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    .line 3012
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 3013
    return-object p0
.end method

.method public setPkiData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3153
    if-nez p1, :cond_0

    .line 3154
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3156
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3157
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 3158
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 3159
    return-object p0
.end method

.method public setPkiType(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3084
    if-nez p1, :cond_0

    .line 3085
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3087
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3088
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3089
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 3090
    return-object p0
.end method

.method public setPkiTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3114
    if-nez p1, :cond_0

    .line 3115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3117
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3118
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3119
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 3120
    return-object p0
.end method

.method public setSerializedPaymentDetails(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3205
    if-nez p1, :cond_0

    .line 3206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3208
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3209
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 3210
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 3211
    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3257
    if-nez p1, :cond_0

    .line 3258
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3260
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3261
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 3262
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 3263
    return-object p0
.end method

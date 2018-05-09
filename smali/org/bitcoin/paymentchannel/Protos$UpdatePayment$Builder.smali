.class public final Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientChangeValue_:J

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6919
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 7089
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 6920
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->maybeForceBuilderInitialization()V

    .line 6921
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 6925
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 7089
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 6926
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->maybeForceBuilderInitialization()V

    .line 6927
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 6903
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$8300()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .prologue
    .line 6903
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .prologue
    .line 6933
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6908
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$8000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 6929
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->access$8500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6931
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 2

    .prologue
    .line 6959
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    .line 6960
    .local v0, "result":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6961
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6963
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 5

    .prologue
    .line 6967
    new-instance v1, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 6968
    .local v1, "result":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 6969
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 6970
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6971
    or-int/lit8 v2, v2, 0x1

    .line 6973
    :cond_0
    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clientChangeValue_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->access$8702(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;J)J

    .line 6974
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6975
    or-int/lit8 v2, v2, 0x2

    .line 6977
    :cond_1
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->access$8802(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 6978
    invoke-static {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->access$8902(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;I)I

    .line 6979
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onBuilt()V

    .line 6980
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 2

    .prologue
    .line 6937
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6938
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clientChangeValue_:J

    .line 6939
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 6940
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 6941
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 6942
    return-object p0
.end method

.method public clearClientChangeValue()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 2

    .prologue
    .line 7082
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 7083
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clientChangeValue_:J

    .line 7084
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onChanged()V

    .line 7085
    return-object p0
.end method

.method public clearSignature()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .prologue
    .line 7146
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 7147
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 7148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onChanged()V

    .line 7149
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

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
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 2

    .prologue
    .line 6946
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientChangeValue()J
    .locals 2

    .prologue
    .line 7057
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clientChangeValue_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6903
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .prologue
    .line 6955
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6951
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$8000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 7114
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasClientChangeValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7046
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignature()Z
    .locals 2

    .prologue
    .line 7101
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 6913
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$8100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7005
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->hasClientChangeValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7013
    :cond_0
    :goto_0
    return v0

    .line 7009
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7013
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
    .line 6903
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 6903
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

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
    .line 6903
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

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
    .line 6903
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 6903
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

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
    .line 6903
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7020
    const/4 v2, 0x0

    .line 7022
    .local v2, "parsedMessage":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    :try_start_0
    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7027
    if-eqz v2, :cond_0

    .line 7028
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 7031
    :cond_0
    return-object p0

    .line 7023
    :catch_0
    move-exception v1

    .line 7024
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-object v2, v0

    .line 7025
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7027
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 7028
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 6984
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    if-eqz v0, :cond_0

    .line 6985
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p0

    .line 6988
    .end local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    :goto_0
    return-object p0

    .line 6987
    .restart local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 2
    .param p1, "other"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .prologue
    .line 6993
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7001
    :goto_0
    return-object p0

    .line 6994
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->hasClientChangeValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6995
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getClientChangeValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setClientChangeValue(J)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 6997
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6998
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 7000
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setClientChangeValue(J)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 7068
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 7069
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clientChangeValue_:J

    .line 7070
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onChanged()V

    .line 7071
    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 7127
    if-nez p1, :cond_0

    .line 7128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7130
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 7131
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 7132
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onChanged()V

    .line 7133
    return-object p0
.end method

.class public final Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private major_:I

.field private minor_:I

.field private previousChannelContractHash_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2976
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3164
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    .line 2977
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->maybeForceBuilderInitialization()V

    .line 2978
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2982
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3164
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    .line 2983
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->maybeForceBuilderInitialization()V

    .line 2984
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 2960
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2100()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .prologue
    .line 2960
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .prologue
    .line 2990
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2965
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$1800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2986
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->access$2300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2988
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 2

    .prologue
    .line 3018
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    .line 3019
    .local v0, "result":Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3020
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3022
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 5

    .prologue
    .line 3026
    new-instance v1, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 3027
    .local v1, "result":Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3028
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3029
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3030
    or-int/lit8 v2, v2, 0x1

    .line 3032
    :cond_0
    iget v3, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->major_:I

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->access$2502(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I

    .line 3033
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3034
    or-int/lit8 v2, v2, 0x2

    .line 3036
    :cond_1
    iget v3, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->minor_:I

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->access$2602(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I

    .line 3037
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3038
    or-int/lit8 v2, v2, 0x4

    .line 3040
    :cond_2
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->access$2702(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 3041
    invoke-static {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->access$2802(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I

    .line 3042
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onBuilt()V

    .line 3043
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2994
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2995
    iput v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->major_:I

    .line 2996
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 2997
    iput v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->minor_:I

    .line 2998
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 2999
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    .line 3000
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3001
    return-object p0
.end method

.method public clearMajor()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .prologue
    .line 3124
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3125
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->major_:I

    .line 3126
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    .line 3127
    return-object p0
.end method

.method public clearMinor()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .prologue
    .line 3157
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3158
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->minor_:I

    .line 3159
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    .line 3160
    return-object p0
.end method

.method public clearPreviousChannelContractHash()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .prologue
    .line 3221
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3222
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getPreviousChannelContractHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    .line 3223
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    .line 3224
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

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
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 2

    .prologue
    .line 3005
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2960
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1

    .prologue
    .line 3014
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3010
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$1800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 3109
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->major_:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 3142
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->minor_:I

    return v0
.end method

.method public getPreviousChannelContractHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3189
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasMajor()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3103
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinor()Z
    .locals 2

    .prologue
    .line 3136
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

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

.method public hasPreviousChannelContractHash()Z
    .locals 2

    .prologue
    .line 3176
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

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
    .line 2970
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$1900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3071
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->hasMajor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3073
    const/4 v0, 0x0

    .line 3075
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
    .line 2960
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2960
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

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
    .line 2960
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

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
    .line 2960
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2960
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

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
    .line 2960
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3082
    const/4 v2, 0x0

    .line 3084
    .local v2, "parsedMessage":Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    :try_start_0
    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3089
    if-eqz v2, :cond_0

    .line 3090
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 3093
    :cond_0
    return-object p0

    .line 3085
    :catch_0
    move-exception v1

    .line 3086
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-object v2, v0

    .line 3087
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3089
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3090
    invoke-virtual {p0, v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3047
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    if-eqz v0, :cond_0

    .line 3048
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object p0

    .line 3051
    .end local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    :goto_0
    return-object p0

    .line 3050
    .restart local p0    # "this":Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .prologue
    .line 3056
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3067
    :goto_0
    return-object p0

    .line 3057
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->hasMajor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3058
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getMajor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 3060
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->hasMinor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3061
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getMinor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 3063
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->hasPreviousChannelContractHash()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3064
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getPreviousChannelContractHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setPreviousChannelContractHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 3066
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3115
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3116
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->major_:I

    .line 3117
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    .line 3118
    return-object p0
.end method

.method public setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3148
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3149
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->minor_:I

    .line 3150
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    .line 3151
    return-object p0
.end method

.method public setPreviousChannelContractHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3202
    if-nez p1, :cond_0

    .line 3203
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3205
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3206
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    .line 3207
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    .line 3208
    return-object p0
.end method

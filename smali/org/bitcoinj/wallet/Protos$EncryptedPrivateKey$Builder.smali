.class public final Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKeyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

.field private initialisationVector_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1055
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 1107
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 939
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->maybeForceBuilderInitialization()V

    .line 940
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 944
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1055
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 1107
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 945
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->maybeForceBuilderInitialization()V

    .line 946
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1400()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1

    .prologue
    .line 922
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->create()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1

    .prologue
    .line 952
    new-instance v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 927
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 948
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->build()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->build()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 2

    .prologue
    .line 978
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    .line 979
    .local v0, "result":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 982
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 5

    .prologue
    .line 986
    new-instance v1, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 987
    .local v1, "result":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    .line 988
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 989
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 990
    or-int/lit8 v2, v2, 0x1

    .line 992
    :cond_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->access$1802(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 993
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 994
    or-int/lit8 v2, v2, 0x2

    .line 996
    :cond_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->access$1902(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 997
    invoke-static {v1, v2}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->access$2002(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;I)I

    .line 998
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->onBuilt()V

    .line 999
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->clear()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->clear()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->clear()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->clear()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1

    .prologue
    .line 956
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 957
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 958
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    .line 959
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 960
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    .line 961
    return-object p0
.end method

.method public clearEncryptedPrivateKey()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1

    .prologue
    .line 1152
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    .line 1153
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 1154
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->onChanged()V

    .line 1155
    return-object p0
.end method

.method public clearInitialisationVector()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    .line 1101
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getInitialisationVector()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 1102
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->onChanged()V

    .line 1103
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

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
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 2

    .prologue
    .line 965
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->create()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1

    .prologue
    .line 974
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 970
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getInitialisationVector()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasEncryptedPrivateKey()Z
    .locals 2

    .prologue
    .line 1116
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

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

.method public hasInitialisationVector()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1064
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

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
    .line 932
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    const-class v2, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1024
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->hasInitialisationVector()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return v0

    .line 1028
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->hasEncryptedPrivateKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
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
    .line 922
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 922
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

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
    .line 922
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

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
    .line 922
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 922
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

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
    .line 922
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1039
    const/4 v2, 0x0

    .line 1041
    .local v2, "parsedMessage":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    :try_start_0
    sget-object v3, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    if-eqz v2, :cond_0

    .line 1047
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    .line 1050
    :cond_0
    return-object p0

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-object v2, v0

    .line 1044
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1047
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1003
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    if-eqz v0, :cond_0

    .line 1004
    check-cast p1, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object p0

    .line 1007
    .end local p0    # "this":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    :goto_0
    return-object p0

    .line 1006
    .restart local p0    # "this":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1
    .param p1, "other"    # Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .prologue
    .line 1012
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1020
    :goto_0
    return-object p0

    .line 1013
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->hasInitialisationVector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getInitialisationVector()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->setInitialisationVector(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    .line 1016
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->hasEncryptedPrivateKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1017
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->setEncryptedPrivateKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    .line 1019
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setEncryptedPrivateKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1136
    if-nez p1, :cond_0

    .line 1137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1139
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    .line 1140
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 1141
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->onChanged()V

    .line 1142
    return-object p0
.end method

.method public setInitialisationVector(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1084
    if-nez p1, :cond_0

    .line 1085
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1087
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->bitField0_:I

    .line 1088
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 1089
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->onChanged()V

    .line 1090
    return-object p0
.end method

.class public final Lorg/bitcoinj/wallet/Protos$Key$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoinj/wallet/Protos$Key$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private creationTimestamp_:J

.field private encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKeyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

.field private label_:Ljava/lang/Object;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private publicKey_:Lcom/google/protobuf/ByteString;

.field private type_:Lorg/bitcoinj/wallet/Protos$Key$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1915
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2081
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 2117
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->privateKey_:Lcom/google/protobuf/ByteString;

    .line 2169
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 2340
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 2396
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 1916
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->maybeForceBuilderInitialization()V

    .line 1917
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1921
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2081
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 2117
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->privateKey_:Lcom/google/protobuf/ByteString;

    .line 2169
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 2340
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 2396
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 1922
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->maybeForceBuilderInitialization()V

    .line 1923
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 1899
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2400()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .prologue
    .line 1899
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->create()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .prologue
    .line 1930
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1904
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptedPrivateKeyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;",
            "Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKeyOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2328
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2329
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2334
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 2336
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1925
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1926
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedPrivateKeyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1928
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$Key;
    .locals 2

    .prologue
    .line 1968
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    .line 1969
    .local v0, "result":Lorg/bitcoinj/wallet/Protos$Key;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1970
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1972
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$Key;
    .locals 5

    .prologue
    .line 1976
    new-instance v1, Lorg/bitcoinj/wallet/Protos$Key;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoinj/wallet/Protos$Key;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 1977
    .local v1, "result":Lorg/bitcoinj/wallet/Protos$Key;
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 1978
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1979
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1980
    or-int/lit8 v2, v2, 0x1

    .line 1982
    :cond_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Key;->access$2802(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 1983
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1984
    or-int/lit8 v2, v2, 0x2

    .line 1986
    :cond_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->privateKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Key;->access$2902(Lorg/bitcoinj/wallet/Protos$Key;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1987
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1988
    or-int/lit8 v2, v2, 0x4

    .line 1990
    :cond_2
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_6

    .line 1991
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Key;->access$3002(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 1995
    :goto_0
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1996
    or-int/lit8 v2, v2, 0x8

    .line 1998
    :cond_3
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Key;->access$3102(Lorg/bitcoinj/wallet/Protos$Key;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1999
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2000
    or-int/lit8 v2, v2, 0x10

    .line 2002
    :cond_4
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Key;->access$3202(Lorg/bitcoinj/wallet/Protos$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 2004
    or-int/lit8 v2, v2, 0x20

    .line 2006
    :cond_5
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->creationTimestamp_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoinj/wallet/Protos$Key;->access$3302(Lorg/bitcoinj/wallet/Protos$Key;J)J

    .line 2007
    invoke-static {v1, v2}, Lorg/bitcoinj/wallet/Protos$Key;->access$3402(Lorg/bitcoinj/wallet/Protos$Key;I)I

    .line 2008
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onBuilt()V

    .line 2009
    return-object v1

    .line 1993
    :cond_6
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Key;->access$3002(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2

    .prologue
    .line 1934
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1935
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 1936
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 1937
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->privateKey_:Lcom/google/protobuf/ByteString;

    .line 1938
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 1939
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1940
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 1944
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 1945
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 1946
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 1947
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 1948
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 1949
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->creationTimestamp_:J

    .line 1950
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 1951
    return-object p0

    .line 1942
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearCreationTimestamp()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2

    .prologue
    .line 2536
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2537
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->creationTimestamp_:J

    .line 2538
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2539
    return-object p0
.end method

.method public clearEncryptedPrivateKey()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .prologue
    .line 2277
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2278
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 2279
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2283
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2284
    return-object p0

    .line 2281
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearLabel()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .prologue
    .line 2470
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2471
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 2472
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2473
    return-object p0
.end method

.method public clearPrivateKey()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .prologue
    .line 2162
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2163
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->privateKey_:Lcom/google/protobuf/ByteString;

    .line 2164
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2165
    return-object p0
.end method

.method public clearPublicKey()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .prologue
    .line 2389
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2390
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 2391
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2392
    return-object p0
.end method

.method public clearType()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1

    .prologue
    .line 2110
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2111
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 2112
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2113
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

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
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2

    .prologue
    .line 1955
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->create()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTimestamp()J
    .locals 2

    .prologue
    .line 2513
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->creationTimestamp_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1

    .prologue
    .line 1964
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1960
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedPrivateKey()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2195
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 2197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    goto :goto_0
.end method

.method public getEncryptedPrivateKeyBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1

    .prologue
    .line 2296
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2297
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2298
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedPrivateKeyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    return-object v0
.end method

.method public getEncryptedPrivateKeyOrBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKeyOrBuilder;
    .locals 1

    .prologue
    .line 2310
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKeyOrBuilder;

    .line 2313
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2415
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 2416
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2417
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2419
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 2422
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

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2434
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 2435
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2436
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2439
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 2442
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

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2136
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2361
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getType()Lorg/bitcoinj/wallet/Protos$Key$Type;
    .locals 1

    .prologue
    .line 2092
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    return-object v0
.end method

.method public hasCreationTimestamp()Z
    .locals 2

    .prologue
    .line 2503
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

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

.method public hasEncryptedPrivateKey()Z
    .locals 2

    .prologue
    .line 2182
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 2405
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

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

.method public hasPrivateKey()Z
    .locals 2

    .prologue
    .line 2126
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

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

.method public hasPublicKey()Z
    .locals 2

    .prologue
    .line 2350
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2086
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

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
    .line 1909
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Key;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2048
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->hasType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2058
    :cond_0
    :goto_0
    return v0

    .line 2052
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->hasEncryptedPrivateKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2053
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedPrivateKey()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2058
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeEncryptedPrivateKey(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .prologue
    .line 2252
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2253
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2255
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->newBuilder(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 2260
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2264
    :goto_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2265
    return-object p0

    .line 2258
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    goto :goto_0

    .line 2262
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

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
    .line 1899
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1899
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

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
    .line 1899
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

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
    .line 1899
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1899
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

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
    .line 1899
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2065
    const/4 v2, 0x0

    .line 2067
    .local v2, "parsedMessage":Lorg/bitcoinj/wallet/Protos$Key;
    :try_start_0
    sget-object v3, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2072
    if-eqz v2, :cond_0

    .line 2073
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 2076
    :cond_0
    return-object p0

    .line 2068
    :catch_0
    move-exception v1

    .line 2069
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    move-object v2, v0

    .line 2070
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2072
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2073
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2013
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$Key;

    if-eqz v0, :cond_0

    .line 2014
    check-cast p1, Lorg/bitcoinj/wallet/Protos$Key;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object p0

    .line 2017
    .end local p0    # "this":Lorg/bitcoinj/wallet/Protos$Key$Builder;
    :goto_0
    return-object p0

    .line 2016
    .restart local p0    # "this":Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2
    .param p1, "other"    # Lorg/bitcoinj/wallet/Protos$Key;

    .prologue
    .line 2022
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2044
    :goto_0
    return-object p0

    .line 2023
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2024
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getType()Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setType(Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 2026
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasPrivateKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2027
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setPrivateKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 2029
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedPrivateKey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2030
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedPrivateKey()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeEncryptedPrivateKey(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 2032
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasPublicKey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2033
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setPublicKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 2035
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2036
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2037
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Key;->access$3200(Lorg/bitcoinj/wallet/Protos$Key;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 2038
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2040
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->hasCreationTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2041
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getCreationTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 2043
    :cond_6
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2523
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2524
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->creationTimestamp_:J

    .line 2525
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2526
    return-object p0
.end method

.method public setEncryptedPrivateKey(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    .prologue
    .line 2233
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2234
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->build()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 2235
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2239
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2240
    return-object p0

    .line 2237
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->build()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setEncryptedPrivateKey(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .prologue
    .line 2210
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2211
    if-nez p1, :cond_0

    .line 2212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2214
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKey_:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 2215
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2219
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2220
    return-object p0

    .line 2217
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->encryptedPrivateKeyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2454
    if-nez p1, :cond_0

    .line 2455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2457
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2458
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 2459
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2460
    return-object p0
.end method

.method public setLabelBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2484
    if-nez p1, :cond_0

    .line 2485
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2487
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2488
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->label_:Ljava/lang/Object;

    .line 2489
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2490
    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2146
    if-nez p1, :cond_0

    .line 2147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2149
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2150
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->privateKey_:Lcom/google/protobuf/ByteString;

    .line 2151
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2152
    return-object p0
.end method

.method public setPublicKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2372
    if-nez p1, :cond_0

    .line 2373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2375
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2376
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->publicKey_:Lcom/google/protobuf/ByteString;

    .line 2377
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2378
    return-object p0
.end method

.method public setType(Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$Key$Type;

    .prologue
    .line 2098
    if-nez p1, :cond_0

    .line 2099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2101
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->bitField0_:I

    .line 2102
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Key$Builder;->type_:Lorg/bitcoinj/wallet/Protos$Key$Type;

    .line 2103
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->onChanged()V

    .line 2104
    return-object p0
.end method

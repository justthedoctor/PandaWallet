.class public Lcom/google/bitcoin/core/Address;
.super Lcom/google/bitcoin/core/VersionedChecksummedBytes;
.source "Address.java"


# static fields
.field public static final LENGTH:I = 0x14


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;I[B)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "version"    # I
    .param p3, "hash160"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/WrongNetworkException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p2, p3}, Lcom/google/bitcoin/core/VersionedChecksummedBytes;-><init>(I[B)V

    .line 52
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    array-length v0, p3

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Addresses are 160-bit hashes, so you must provide 20 bytes"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    invoke-static {p1, p2}, Lcom/google/bitcoin/core/Address;->isAcceptableVersion(Lcom/google/bitcoin/core/NetworkParameters;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Lcom/google/bitcoin/core/WrongNetworkException;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getAcceptableAddressCodes()[I

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/bitcoin/core/WrongNetworkException;-><init>(I[I)V

    throw v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/AddressFormatException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p2}, Lcom/google/bitcoin/core/VersionedChecksummedBytes;-><init>(Ljava/lang/String;)V

    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget v0, p0, Lcom/google/bitcoin/core/Address;->version:I

    invoke-static {p1, v0}, Lcom/google/bitcoin/core/Address;->isAcceptableVersion(Lcom/google/bitcoin/core/NetworkParameters;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/google/bitcoin/core/WrongNetworkException;

    iget v1, p0, Lcom/google/bitcoin/core/Address;->version:I

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getAcceptableAddressCodes()[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/WrongNetworkException;-><init>(I[I)V

    throw v0

    .line 100
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 2
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "hash160"    # [B

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getAddressHeader()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/bitcoin/core/VersionedChecksummedBytes;-><init>(I[B)V

    .line 80
    array-length v0, p2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Addresses are 160-bit hashes, so you must provide 20 bytes"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromP2SHHash(Lcom/google/bitcoin/core/NetworkParameters;[B)Lcom/google/bitcoin/core/Address;
    .locals 3
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "hash160"    # [B

    .prologue
    .line 61
    :try_start_0
    new-instance v1, Lcom/google/bitcoin/core/Address;

    invoke-virtual {p0}, Lcom/google/bitcoin/core/NetworkParameters;->getP2SHHeader()I

    move-result v2

    invoke-direct {v1, p0, v2, p1}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;I[B)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/WrongNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/google/bitcoin/core/WrongNetworkException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromP2SHScript(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/script/Script;)Lcom/google/bitcoin/core/Address;
    .locals 2
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "scriptPubKey"    # Lcom/google/bitcoin/script/Script;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/google/bitcoin/script/Script;->isPayToScriptHash()Z

    move-result v0

    const-string v1, "Not a P2SH script"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 70
    invoke-virtual {p1}, Lcom/google/bitcoin/script/Script;->getPubKeyHash()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/bitcoin/core/Address;->fromP2SHHash(Lcom/google/bitcoin/core/NetworkParameters;[B)Lcom/google/bitcoin/core/Address;

    move-result-object v0

    return-object v0
.end method

.method public static getParametersFromAddress(Ljava/lang/String;)Lcom/google/bitcoin/core/NetworkParameters;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/AddressFormatException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 145
    :try_start_0
    new-instance v1, Lcom/google/bitcoin/core/Address;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Address;->getParameters()Lcom/google/bitcoin/core/NetworkParameters;
    :try_end_0
    .catch Lcom/google/bitcoin/core/WrongNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lcom/google/bitcoin/core/WrongNetworkException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isAcceptableVersion(Lcom/google/bitcoin/core/NetworkParameters;I)Z
    .locals 5
    .param p0, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p1, "version"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/bitcoin/core/NetworkParameters;->getAcceptableAddressCodes()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 156
    .local v3, "v":I
    if-ne p1, v3, :cond_0

    .line 157
    const/4 v4, 0x1

    .line 160
    .end local v3    # "v":I
    :goto_1
    return v4

    .line 155
    .restart local v3    # "v":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "v":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getHash160()[B
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/bitcoin/core/Address;->bytes:[B

    return-object v0
.end method

.method public getParameters()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    const/4 v5, 0x2

    new-array v3, v5, [Lcom/google/bitcoin/core/NetworkParameters;

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/bitcoin/params/TestNet3Params;->get()Lcom/google/bitcoin/params/TestNet3Params;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/google/bitcoin/params/MainNetParams;->get()Lcom/google/bitcoin/params/MainNetParams;

    move-result-object v6

    aput-object v6, v3, v5

    .line 128
    .local v3, "networks":[Lcom/google/bitcoin/core/NetworkParameters;
    move-object v0, v3

    .local v0, "arr$":[Lcom/google/bitcoin/core/NetworkParameters;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 129
    .local v4, "params":Lcom/google/bitcoin/core/NetworkParameters;
    iget v5, p0, Lcom/google/bitcoin/core/Address;->version:I

    invoke-static {v4, v5}, Lcom/google/bitcoin/core/Address;->isAcceptableVersion(Lcom/google/bitcoin/core/NetworkParameters;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    .end local v4    # "params":Lcom/google/bitcoin/core/NetworkParameters;
    :goto_1
    return-object v4

    .line 128
    .restart local v4    # "params":Lcom/google/bitcoin/core/NetworkParameters;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v4    # "params":Lcom/google/bitcoin/core/NetworkParameters;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isP2SHAddress()Z
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Address;->getParameters()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v0

    .line 113
    .local v0, "parameters":Lcom/google/bitcoin/core/NetworkParameters;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/bitcoin/core/Address;->version:I

    iget v2, v0, Lcom/google/bitcoin/core/NetworkParameters;->p2shHeader:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

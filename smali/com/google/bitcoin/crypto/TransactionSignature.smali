.class public Lcom/google/bitcoin/crypto/TransactionSignature;
.super Lcom/google/bitcoin/core/ECKey$ECDSASignature;
.source "TransactionSignature.java"


# instance fields
.field public final sighashFlags:I


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/ECKey$ECDSASignature;Lcom/google/bitcoin/core/Transaction$SigHash;Z)V
    .locals 2
    .param p1, "signature"    # Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    .param p2, "mode"    # Lcom/google/bitcoin/core/Transaction$SigHash;
    .param p3, "anyoneCanPay"    # Z

    .prologue
    .line 53
    iget-object v0, p1, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v1}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 54
    invoke-static {p2, p3}, Lcom/google/bitcoin/crypto/TransactionSignature;->calcSigHashValue(Lcom/google/bitcoin/core/Transaction$SigHash;Z)I

    move-result v0

    iput v0, p0, Lcom/google/bitcoin/crypto/TransactionSignature;->sighashFlags:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "r"    # Ljava/math/BigInteger;
    .param p2, "s"    # Ljava/math/BigInteger;

    .prologue
    .line 42
    sget-object v0, Lcom/google/bitcoin/core/Transaction$SigHash;->ALL:Lcom/google/bitcoin/core/Transaction$SigHash;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction$SigHash;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/crypto/TransactionSignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0
    .param p1, "r"    # Ljava/math/BigInteger;
    .param p2, "s"    # Ljava/math/BigInteger;
    .param p3, "sighashFlags"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 48
    iput p3, p0, Lcom/google/bitcoin/crypto/TransactionSignature;->sighashFlags:I

    .line 49
    return-void
.end method

.method public static calcSigHashValue(Lcom/google/bitcoin/core/Transaction$SigHash;Z)I
    .locals 2
    .param p0, "mode"    # Lcom/google/bitcoin/core/Transaction$SigHash;
    .param p1, "anyoneCanPay"    # Z

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction$SigHash;->ordinal()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 71
    .local v0, "sighashFlags":I
    if-eqz p1, :cond_0

    .line 72
    or-int/lit8 v0, v0, -0x80

    .line 73
    :cond_0
    return v0
.end method

.method public static decodeFromBitcoin([BZ)Lcom/google/bitcoin/crypto/TransactionSignature;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "requireCanonical"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/VerificationException;
        }
    .end annotation

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/bitcoin/crypto/TransactionSignature;->isEncodingCanonical([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    new-instance v2, Lcom/google/bitcoin/core/VerificationException;

    const-string v3, "Signature encoding is not canonical."

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->decodeFromDER([B)Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    .local v1, "sig":Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    new-instance v2, Lcom/google/bitcoin/crypto/TransactionSignature;

    iget-object v3, v1, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    iget-object v4, v1, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p0, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/bitcoin/crypto/TransactionSignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-object v2

    .line 168
    .end local v1    # "sig":Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/google/bitcoin/core/VerificationException;

    const-string v3, "Could not decode DER"

    invoke-direct {v2, v3, v0}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static dummy()Lcom/google/bitcoin/crypto/TransactionSignature;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/google/bitcoin/core/ECKey;->HALF_CURVE_ORDER:Ljava/math/BigInteger;

    .line 65
    .local v0, "val":Ljava/math/BigInteger;
    new-instance v1, Lcom/google/bitcoin/crypto/TransactionSignature;

    invoke-direct {v1, v0, v0}, Lcom/google/bitcoin/crypto/TransactionSignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static isEncodingCanonical([B)Z
    .locals 10
    .param p0, "signature"    # [B

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/16 v7, 0x80

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    array-length v5, p0

    const/16 v6, 0x9

    if-lt v5, v6, :cond_0

    array-length v5, p0

    const/16 v6, 0x49

    if-le v5, v6, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v3

    .line 93
    :cond_1
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p0, v5

    and-int/lit8 v0, v5, 0x7f

    .line 94
    .local v0, "hashType":I
    sget-object v5, Lcom/google/bitcoin/core/Transaction$SigHash;->ALL:Lcom/google/bitcoin/core/Transaction$SigHash;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction$SigHash;->ordinal()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-lt v0, v5, :cond_0

    sget-object v5, Lcom/google/bitcoin/core/Transaction$SigHash;->SINGLE:Lcom/google/bitcoin/core/Transaction$SigHash;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction$SigHash;->ordinal()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-gt v0, v5, :cond_0

    .line 98
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    array-length v6, p0

    add-int/lit8 v6, v6, -0x3

    if-ne v5, v6, :cond_0

    .line 101
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 102
    .local v1, "lenR":I
    add-int/lit8 v5, v1, 0x5

    array-length v6, p0

    if-ge v5, v6, :cond_0

    if-eqz v1, :cond_0

    .line 104
    add-int/lit8 v5, v1, 0x5

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    .line 105
    .local v2, "lenS":I
    add-int v5, v1, v2

    add-int/lit8 v5, v5, 0x7

    array-length v6, p0

    if-ne v5, v6, :cond_0

    if-eqz v2, :cond_0

    .line 109
    aget-byte v5, p0, v8

    if-ne v5, v8, :cond_0

    aget-byte v5, p0, v9

    and-int/lit16 v5, v5, 0x80

    if-eq v5, v7, :cond_0

    .line 111
    if-le v1, v4, :cond_2

    aget-byte v5, p0, v9

    if-nez v5, :cond_2

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0x80

    if-ne v5, v7, :cond_0

    .line 115
    :cond_2
    add-int/lit8 v5, v1, 0x6

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, p0, v5

    if-ne v5, v8, :cond_0

    add-int/lit8 v5, v1, 0x6

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0x80

    if-eq v5, v7, :cond_0

    .line 117
    if-le v2, v4, :cond_3

    add-int/lit8 v5, v1, 0x6

    aget-byte v5, p0, v5

    if-nez v5, :cond_3

    add-int/lit8 v5, v1, 0x6

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0x80

    if-ne v5, v7, :cond_0

    :cond_3
    move v3, v4

    .line 120
    goto/16 :goto_0
.end method


# virtual methods
.method public anyoneCanPay()Z
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/google/bitcoin/crypto/TransactionSignature;->sighashFlags:I

    and-int/lit8 v0, v0, -0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodeToBitcoin()[B
    .locals 3

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/TransactionSignature;->derByteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 145
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    iget v2, p0, Lcom/google/bitcoin/crypto/TransactionSignature;->sighashFlags:I

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 146
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 147
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sigHashMode()Lcom/google/bitcoin/core/Transaction$SigHash;
    .locals 2

    .prologue
    .line 128
    iget v1, p0, Lcom/google/bitcoin/crypto/TransactionSignature;->sighashFlags:I

    and-int/lit8 v0, v1, 0x1f

    .line 129
    .local v0, "mode":I
    sget-object v1, Lcom/google/bitcoin/core/Transaction$SigHash;->NONE:Lcom/google/bitcoin/core/Transaction$SigHash;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction$SigHash;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    .line 130
    sget-object v1, Lcom/google/bitcoin/core/Transaction$SigHash;->NONE:Lcom/google/bitcoin/core/Transaction$SigHash;

    .line 134
    :goto_0
    return-object v1

    .line 131
    :cond_0
    sget-object v1, Lcom/google/bitcoin/core/Transaction$SigHash;->SINGLE:Lcom/google/bitcoin/core/Transaction$SigHash;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction$SigHash;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 132
    sget-object v1, Lcom/google/bitcoin/core/Transaction$SigHash;->SINGLE:Lcom/google/bitcoin/core/Transaction$SigHash;

    goto :goto_0

    .line 134
    :cond_1
    sget-object v1, Lcom/google/bitcoin/core/Transaction$SigHash;->ALL:Lcom/google/bitcoin/core/Transaction$SigHash;

    goto :goto_0
.end method

.method public toCanonicalised()Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lcom/google/bitcoin/crypto/TransactionSignature;

    invoke-super {p0}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->toCanonicalised()Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/TransactionSignature;->sigHashMode()Lcom/google/bitcoin/core/Transaction$SigHash;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/TransactionSignature;->anyoneCanPay()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/bitcoin/crypto/TransactionSignature;-><init>(Lcom/google/bitcoin/core/ECKey$ECDSASignature;Lcom/google/bitcoin/core/Transaction$SigHash;Z)V

    return-object v0
.end method

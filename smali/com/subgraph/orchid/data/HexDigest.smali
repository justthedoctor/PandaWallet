.class public Lcom/subgraph/orchid/data/HexDigest;
.super Ljava/lang/Object;
.source "HexDigest.java"


# instance fields
.field private final digestBytes:[B

.field private final isDigest256:Z


# direct methods
.method private constructor <init>([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/16 v4, 0x14

    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    array-length v0, p1

    if-eq v0, v4, :cond_0

    array-length v0, p1

    if-eq v0, v3, :cond_0

    .line 64
    new-instance v0, Lcom/subgraph/orchid/TorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest data is not the correct length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    .line 67
    iget-object v0, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    array-length v0, v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/subgraph/orchid/data/HexDigest;->isDigest256:Z

    .line 68
    iget-object v0, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    return-void

    :cond_1
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public static createDigestForData([B)Lcom/subgraph/orchid/data/HexDigest;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 54
    new-instance v0, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    .line 55
    .local v0, "digest":Lcom/subgraph/orchid/crypto/TorMessageDigest;
    invoke-virtual {v0, p0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 56
    new-instance v1, Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/data/HexDigest;-><init>([B)V

    return-object v1
.end method

.method public static createFromBase32String(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;
    .locals 2
    .param p0, "b32"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Lcom/subgraph/orchid/data/HexDigest;

    invoke-static {p0}, Lcom/subgraph/orchid/data/Base32;->base32Decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/data/HexDigest;-><init>([B)V

    return-object v0
.end method

.method public static createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 50
    new-instance v0, Lcom/subgraph/orchid/data/HexDigest;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/data/HexDigest;-><init>([B)V

    return-object v0
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;
    .locals 4
    .param p0, "fingerprint"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 44
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/subgraph/orchid/data/HexDigest;->createFromStringList(Ljava/util/List;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    .line 46
    :goto_0
    return-object v2

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/subgraph/orchid/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 46
    .local v0, "digestData":[B
    new-instance v2, Lcom/subgraph/orchid/data/HexDigest;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/data/HexDigest;-><init>([B)V

    goto :goto_0
.end method

.method public static createFromStringList(Ljava/util/List;)Lcom/subgraph/orchid/data/HexDigest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/subgraph/orchid/data/HexDigest;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "chunk":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 34
    .end local v1    # "chunk":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    return-object v3
.end method

.method private stripTrailingEquals(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 118
    .local v0, "idx":I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    .line 119
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 121
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 125
    instance-of v1, p1, Lcom/subgraph/orchid/data/HexDigest;

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 128
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 127
    check-cast v0, Lcom/subgraph/orchid/data/HexDigest;

    .line 128
    .local v0, "other":Lcom/subgraph/orchid/data/HexDigest;
    iget-object v1, v0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    iget-object v2, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getRawBytes()[B
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    iget-object v1, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 134
    shl-int/lit8 v0, v0, 0x8

    .line 135
    iget-object v2, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return v0
.end method

.method public isDigest256()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/subgraph/orchid/data/HexDigest;->isDigest256:Z

    return v0
.end method

.method public toBase32()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    invoke-static {v0}, Lcom/subgraph/orchid/data/Base32;->base32Encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toBase64(Z)Ljava/lang/String;
    .locals 3
    .param p1, "stripTrailingEquals"    # Z

    .prologue
    .line 108
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    invoke-static {v1}, Lcom/subgraph/orchid/encoders/Base64;->encode([B)[B

    move-result-object v1

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 109
    .local v0, "b64":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 110
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/data/HexDigest;->stripTrailingEquals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .end local v0    # "b64":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public toSpacedString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "original":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 96
    if-lez v1, :cond_0

    rem-int/lit8 v3, v1, 0x4

    if-nez v3, :cond_0

    .line 97
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    invoke-static {v1}, Lcom/subgraph/orchid/encoders/Hex;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

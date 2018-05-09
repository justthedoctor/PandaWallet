.class public Lcom/lambdaworks/crypto/SCryptUtil;
.super Ljava/lang/Object;
.source "SCryptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p0, "passwd"    # Ljava/lang/String;
    .param p1, "hashed"    # Ljava/lang/String;

    .prologue
    .line 74
    :try_start_0
    const-string v2, "\\$"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 76
    .local v14, "parts":[Ljava/lang/String;
    array-length v2, v14

    const/4 v7, 0x5

    if-ne v2, v7, :cond_0

    const/4 v2, 0x1

    aget-object v2, v14, v2

    const-string v7, "s0"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid hashed value"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .end local v14    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 98
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v7, "JVM doesn\'t support UTF-8?"

    invoke-direct {v2, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v14    # "parts":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    :try_start_1
    aget-object v2, v14, v2

    const/16 v7, 0x10

    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    .line 81
    .local v12, "params":J
    const/4 v2, 0x3

    aget-object v2, v14, v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lcom/lambdaworks/codec/Base64;->decode([C)[B

    move-result-object v3

    .line 82
    .local v3, "salt":[B
    const/4 v2, 0x4

    aget-object v2, v14, v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lcom/lambdaworks/codec/Base64;->decode([C)[B

    move-result-object v8

    .line 84
    .local v8, "derived0":[B
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const/16 v2, 0x10

    shr-long v18, v12, v2

    const-wide/32 v20, 0xffff

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v4, v0

    .line 85
    .local v4, "N":I
    long-to-int v2, v12

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v5, v2, 0xff

    .line 86
    .local v5, "r":I
    long-to-int v2, v12

    and-int/lit16 v6, v2, 0xff

    .line 88
    .local v6, "p":I
    const-string v2, "UTF-8"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v7, 0x20

    invoke-static/range {v2 .. v7}, Lcom/lambdaworks/crypto/SCrypt;->scrypt([B[BIIII)[B

    move-result-object v9

    .line 90
    .local v9, "derived1":[B
    array-length v2, v8

    array-length v7, v9

    if-eq v2, v7, :cond_2

    const/4 v2, 0x0

    .line 96
    :goto_0
    return v2

    .line 92
    :cond_2
    const/4 v15, 0x0

    .line 93
    .local v15, "result":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v2, v8

    if-ge v11, v2, :cond_3

    .line 94
    aget-byte v2, v8, v11

    aget-byte v7, v9, v11
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr v2, v7

    or-int/2addr v15, v2

    .line 93
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 96
    :cond_3
    if-nez v15, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 99
    .end local v3    # "salt":[B
    .end local v4    # "N":I
    .end local v5    # "r":I
    .end local v6    # "p":I
    .end local v8    # "derived0":[B
    .end local v9    # "derived1":[B
    .end local v11    # "i":I
    .end local v12    # "params":J
    .end local v14    # "parts":[Ljava/lang/String;
    .end local v15    # "result":I
    :catch_1
    move-exception v10

    .line 100
    .local v10, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v7, "JVM doesn\'t support SHA1PRNG or HMAC_SHA256?"

    invoke-direct {v2, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static log2(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "log":I
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    ushr-int/lit8 p0, p0, 0x10

    const/16 v0, 0x10

    .line 107
    :cond_0
    const/16 v1, 0x100

    if-lt p0, v1, :cond_1

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x8

    .line 108
    :cond_1
    const/16 v1, 0x10

    if-lt p0, v1, :cond_2

    ushr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x4

    .line 109
    :cond_2
    const/4 v1, 0x4

    if-lt p0, v1, :cond_3

    ushr-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 110
    :cond_3
    ushr-int/lit8 v1, p0, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public static scrypt(Ljava/lang/String;III)Ljava/lang/String;
    .locals 10
    .param p0, "passwd"    # Ljava/lang/String;
    .param p1, "N"    # I
    .param p2, "r"    # I
    .param p3, "p"    # I

    .prologue
    .line 44
    const/16 v0, 0x10

    :try_start_0
    new-array v1, v0, [B

    .line 45
    .local v1, "salt":[B
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 47
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v5, 0x20

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/lambdaworks/crypto/SCrypt;->scrypt([B[BIIII)[B

    move-result-object v6

    .line 49
    .local v6, "derived":[B
    invoke-static {p1}, Lcom/lambdaworks/crypto/SCryptUtil;->log2(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v2, p2, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, p3

    int-to-long v2, v0

    const/16 v0, 0x10

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, "params":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    array-length v0, v1

    array-length v2, v6

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v0, "$s0$"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {v1}, Lcom/lambdaworks/codec/Base64;->encode([B)[C

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {v6}, Lcom/lambdaworks/codec/Base64;->encode([B)[C

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 57
    .end local v1    # "salt":[B
    .end local v6    # "derived":[B
    .end local v8    # "params":Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 58
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "JVM doesn\'t support UTF-8?"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    .line 60
    .local v7, "e":Ljava/security/GeneralSecurityException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "JVM doesn\'t support SHA1PRNG or HMAC_SHA256?"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

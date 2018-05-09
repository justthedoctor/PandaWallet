.class public Lcom/google/bitcoin/crypto/PBKDF2SHA512;
.super Ljava/lang/Object;
.source "PBKDF2SHA512.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static F(Ljava/lang/String;Ljava/lang/String;II)[B
    .locals 12
    .param p0, "P"    # Ljava/lang/String;
    .param p1, "S"    # Ljava/lang/String;
    .param p2, "c"    # I
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "U_LAST":[B
    const/4 v1, 0x0

    .line 74
    .local v1, "U_XOR":[B
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    const-string v10, "HmacSHA512"

    invoke-direct {v7, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 75
    .local v7, "key":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v8

    .line 76
    .local v8, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v8, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 78
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, p2, :cond_2

    .line 79
    if-nez v5, :cond_0

    .line 80
    const-string v9, "UTF-8"

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 81
    .local v3, "baS":[B
    invoke-static {p3}, Lcom/google/bitcoin/crypto/PBKDF2SHA512;->INT(I)[B

    move-result-object v2

    .line 82
    .local v2, "baI":[B
    array-length v9, v3

    array-length v10, v2

    add-int/2addr v9, v10

    new-array v4, v9, [B

    .line 84
    .local v4, "baU":[B
    array-length v9, v3

    invoke-static {v3, v11, v4, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length v9, v3

    array-length v10, v2

    invoke-static {v2, v11, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-virtual {v8, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 88
    move-object v0, v1

    .line 89
    invoke-virtual {v8}, Ljavax/crypto/Mac;->reset()V

    .line 78
    .end local v2    # "baI":[B
    .end local v3    # "baS":[B
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "baU":[B
    :cond_0
    invoke-virtual {v8, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    .line 92
    .restart local v4    # "baU":[B
    invoke-virtual {v8}, Ljavax/crypto/Mac;->reset()V

    .line 94
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    array-length v9, v1

    if-ge v6, v9, :cond_1

    .line 95
    aget-byte v9, v1, v6

    aget-byte v10, v4, v6

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    .line 94
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 98
    :cond_1
    move-object v0, v4

    goto :goto_1

    .line 102
    .end local v4    # "baU":[B
    .end local v6    # "k":I
    :cond_2
    return-object v1
.end method

.method private static INT(I)[B
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 106
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static derive(Ljava/lang/String;Ljava/lang/String;II)[B
    .locals 14
    .param p0, "P"    # Ljava/lang/String;
    .param p1, "S"    # Ljava/lang/String;
    .param p2, "c"    # I
    .param p3, "dkLen"    # I

    .prologue
    .line 44
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x14

    .line 49
    .local v5, "hLen":I
    move/from16 v0, p3

    int-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x4040000000000000L    # 32.0

    :try_start_0
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    int-to-double v12, v5

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 50
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "derived key too long"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    move-exception v4

    .line 61
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 52
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    move/from16 v0, p3

    int-to-double v8, v0

    int-to-double v10, v5

    div-double/2addr v8, v10

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 55
    .local v7, "l":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-gt v6, v7, :cond_1

    .line 56
    move/from16 v0, p2

    invoke-static {p0, p1, v0, v6}, Lcom/google/bitcoin/crypto/PBKDF2SHA512;->F(Ljava/lang/String;Ljava/lang/String;II)[B

    move-result-object v1

    .line 57
    .local v1, "T":[B
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "T":[B
    :cond_1
    move/from16 v0, p3

    new-array v2, v0, [B

    .line 65
    .local v2, "baDerived":[B
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v8, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    return-object v2
.end method

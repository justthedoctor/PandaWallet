.class public Lcom/lambdaworks/crypto/PBKDF;
.super Ljava/lang/Object;
.source "PBKDF.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pbkdf2(Ljavax/crypto/Mac;[BI[BI)V
    .locals 16
    .param p0, "mac"    # Ljavax/crypto/Mac;
    .param p1, "S"    # [B
    .param p2, "c"    # I
    .param p3, "DK"    # [B
    .param p4, "dkLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual/range {p0 .. p0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v4

    .line 52
    .local v4, "hLen":I
    move/from16 v0, p4

    int-to-double v10, v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/high16 v14, 0x4040000000000000L    # 32.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    int-to-double v14, v4

    mul-double/2addr v12, v14

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    .line 53
    new-instance v10, Ljava/security/GeneralSecurityException;

    const-string v11, "Requested key length too long"

    invoke-direct {v10, v11}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 56
    :cond_0
    new-array v2, v4, [B

    .line 57
    .local v2, "U":[B
    new-array v1, v4, [B

    .line 58
    .local v1, "T":[B
    move-object/from16 v0, p1

    array-length v10, v0

    add-int/lit8 v10, v10, 0x4

    new-array v3, v10, [B

    .line 60
    .local v3, "block1":[B
    move/from16 v0, p4

    int-to-double v10, v0

    int-to-double v12, v4

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 61
    .local v8, "l":I
    add-int/lit8 v10, v8, -0x1

    mul-int/2addr v10, v4

    sub-int v9, p4, v10

    .line 63
    .local v9, "r":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    array-length v12, v0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-gt v5, v8, :cond_4

    .line 66
    move-object/from16 v0, p1

    array-length v10, v0

    add-int/lit8 v10, v10, 0x0

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 67
    move-object/from16 v0, p1

    array-length v10, v0

    add-int/lit8 v10, v10, 0x1

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 68
    move-object/from16 v0, p1

    array-length v10, v0

    add-int/lit8 v10, v10, 0x2

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 69
    move-object/from16 v0, p1

    array-length v10, v0

    add-int/lit8 v10, v10, 0x3

    shr-int/lit8 v11, v5, 0x0

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 71
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljavax/crypto/Mac;->update([B)V

    .line 72
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 73
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v2, v10, v1, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_1
    move/from16 v0, p2

    if-ge v6, v0, :cond_2

    .line 76
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->update([B)V

    .line 77
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 79
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    if-ge v7, v4, :cond_1

    .line 80
    aget-byte v10, v1, v7

    aget-byte v11, v2, v7

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v7

    .line 79
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 75
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 84
    .end local v7    # "k":I
    :cond_2
    const/4 v11, 0x0

    add-int/lit8 v10, v5, -0x1

    mul-int v12, v10, v4

    if-ne v5, v8, :cond_3

    move v10, v9

    :goto_3
    move-object/from16 v0, p3

    invoke-static {v1, v11, v0, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v10, v4

    .line 84
    goto :goto_3

    .line 86
    .end local v6    # "j":I
    :cond_4
    return-void
.end method

.method public static pbkdf2(Ljava/lang/String;[B[BII)[B
    .locals 3
    .param p0, "alg"    # Ljava/lang/String;
    .param p1, "P"    # [B
    .param p2, "S"    # [B
    .param p3, "c"    # I
    .param p4, "dkLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 32
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 33
    new-array v0, p4, [B

    .line 34
    .local v0, "DK":[B
    invoke-static {v1, p2, p3, v0, p4}, Lcom/lambdaworks/crypto/PBKDF;->pbkdf2(Ljavax/crypto/Mac;[BI[BI)V

    .line 35
    return-object v0
.end method

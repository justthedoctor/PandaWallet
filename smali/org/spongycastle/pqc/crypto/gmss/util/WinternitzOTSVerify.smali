.class public Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
.super Ljava/lang/Object;
.source "WinternitzOTSVerify.java"


# instance fields
.field private messDigestOTS:Lorg/spongycastle/crypto/Digest;

.field private w:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;I)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "w"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    .line 33
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    .line 34
    return-void
.end method


# virtual methods
.method public Verify([B[B)[B
    .locals 32
    .param p1, "message"    # [B
    .param p2, "signature"    # [B

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v19

    .line 62
    .local v19, "mdsize":I
    move/from16 v0, v19

    new-array v11, v0, [B

    .line 65
    .local v11, "hash":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v29

    move/from16 v0, v29

    new-array v11, v0, [B

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 69
    shl-int/lit8 v29, v19, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    add-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v30, v0

    div-int v23, v29, v30

    .line 70
    .local v23, "size":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    shl-int v29, v23, v29

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v18

    .line 71
    .local v18, "logs":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    add-int v29, v29, v18

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v30, v0

    div-int v29, v29, v30

    add-int v17, v23, v29

    .line 73
    .local v17, "keysize":I
    mul-int v28, v19, v17

    .line 75
    .local v28, "testKeySize":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 77
    const/4 v4, 0x0

    .line 321
    :goto_0
    return-object v4

    .line 80
    :cond_0
    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 82
    .local v27, "testKey":[B
    const/4 v7, 0x0

    .line 83
    .local v7, "c":I
    const/4 v8, 0x0

    .line 86
    .local v8, "counter":I
    const/16 v29, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v30, v0

    rem-int v29, v29, v30

    if-nez v29, :cond_5

    .line 88
    const/16 v29, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v30, v0

    div-int v9, v29, v30

    .line 89
    .local v9, "d":I
    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v30, v0

    shl-int v29, v29, v30

    add-int/lit8 v16, v29, -0x1

    .line 90
    .local v16, "k":I
    move/from16 v0, v19

    new-array v12, v0, [B

    .line 93
    .local v12, "hlp":[B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v0, v11

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v13, v0, :cond_3

    .line 95
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    if-ge v15, v9, :cond_2

    .line 97
    aget-byte v29, v11, v13

    and-int v24, v29, v16

    .line 98
    .local v24, "test":I
    add-int v7, v7, v24

    .line 100
    mul-int v29, v8, v19

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    array-length v0, v12

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v12, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v29

    move/from16 v0, v29

    new-array v12, v0, [B

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v12, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 107
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 110
    :cond_1
    const/16 v29, 0x0

    mul-int v30, v8, v19

    move/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    aget-byte v29, v11, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v30, v0

    ushr-int v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v11, v13

    .line 112
    add-int/lit8 v8, v8, 0x1

    .line 95
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 93
    .end local v24    # "test":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 116
    .end local v15    # "j":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    shl-int v29, v23, v29

    sub-int v7, v29, v7

    .line 117
    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v13, v0, :cond_16

    .line 119
    and-int v24, v7, v16

    .line 121
    .restart local v24    # "test":I
    mul-int v29, v8, v19

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    array-length v0, v12

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v12, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v29

    move/from16 v0, v29

    new-array v12, v0, [B

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v12, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 128
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 130
    :cond_4
    const/16 v29, 0x0

    mul-int v30, v8, v19

    move/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    ushr-int v7, v7, v29

    .line 132
    add-int/lit8 v8, v8, 0x1

    .line 117
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    add-int v13, v13, v29

    goto :goto_4

    .line 135
    .end local v9    # "d":I
    .end local v12    # "hlp":[B
    .end local v13    # "i":I
    .end local v16    # "k":I
    .end local v24    # "test":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    div-int v9, v19, v29

    .line 138
    .restart local v9    # "d":I
    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v30, v0

    shl-int v29, v29, v30

    add-int/lit8 v16, v29, -0x1

    .line 139
    .restart local v16    # "k":I
    move/from16 v0, v19

    new-array v12, v0, [B

    .line 141
    .restart local v12    # "hlp":[B
    const/4 v14, 0x0

    .line 144
    .local v14, "ii":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    if-ge v13, v9, :cond_9

    .line 146
    const-wide/16 v5, 0x0

    .line 147
    .local v5, "big8":J
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v15, v0, :cond_6

    .line 149
    aget-byte v29, v11, v14

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    shl-int/lit8 v30, v15, 0x3

    shl-int v29, v29, v30

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    xor-long v5, v5, v29

    .line 150
    add-int/lit8 v14, v14, 0x1

    .line 147
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 152
    :cond_6
    const/4 v15, 0x0

    :goto_8
    const/16 v29, 0x8

    move/from16 v0, v29

    if-ge v15, v0, :cond_8

    .line 154
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v29, v0

    and-long v29, v29, v5

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v24, v0

    .line 155
    .restart local v24    # "test":I
    add-int v7, v7, v24

    .line 157
    mul-int v29, v8, v19

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    :goto_9
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    array-length v0, v12

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v12, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v29

    move/from16 v0, v29

    new-array v12, v0, [B

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v12, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 164
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 167
    :cond_7
    const/16 v29, 0x0

    mul-int v30, v8, v19

    move/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    ushr-long v5, v5, v29

    .line 169
    add-int/lit8 v8, v8, 0x1

    .line 152
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 144
    .end local v24    # "test":I
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 173
    .end local v5    # "big8":J
    .end local v15    # "j":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    rem-int v9, v19, v29

    .line 174
    const-wide/16 v5, 0x0

    .line 175
    .restart local v5    # "big8":J
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_a
    if-ge v15, v9, :cond_a

    .line 177
    aget-byte v29, v11, v14

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    shl-int/lit8 v30, v15, 0x3

    shl-int v29, v29, v30

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    xor-long v5, v5, v29

    .line 178
    add-int/lit8 v14, v14, 0x1

    .line 175
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 180
    :cond_a
    shl-int/lit8 v9, v9, 0x3

    .line 181
    const/4 v15, 0x0

    :goto_b
    if-ge v15, v9, :cond_c

    .line 183
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v29, v0

    and-long v29, v29, v5

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v24, v0

    .line 184
    .restart local v24    # "test":I
    add-int v7, v7, v24

    .line 186
    mul-int v29, v8, v19

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    :goto_c
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    array-length v0, v12

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v12, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v29

    move/from16 v0, v29

    new-array v12, v0, [B

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v12, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 193
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 196
    :cond_b
    const/16 v29, 0x0

    mul-int v30, v8, v19

    move/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    ushr-long v5, v5, v29

    .line 198
    add-int/lit8 v8, v8, 0x1

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    add-int v15, v15, v29

    goto :goto_b

    .line 202
    .end local v24    # "test":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    shl-int v29, v23, v29

    sub-int v7, v29, v7

    .line 203
    const/4 v13, 0x0

    :goto_d
    move/from16 v0, v18

    if-ge v13, v0, :cond_16

    .line 205
    and-int v24, v7, v16

    .line 207
    .restart local v24    # "test":I
    mul-int v29, v8, v19

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    :goto_e
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_d

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    array-length v0, v12

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v12, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v29

    move/from16 v0, v29

    new-array v12, v0, [B

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v12, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 214
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 217
    :cond_d
    const/16 v29, 0x0

    mul-int v30, v8, v19

    move/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    ushr-int v7, v7, v29

    .line 219
    add-int/lit8 v8, v8, 0x1

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    add-int v13, v13, v29

    goto :goto_d

    .line 222
    .end local v5    # "big8":J
    .end local v9    # "d":I
    .end local v12    # "hlp":[B
    .end local v13    # "i":I
    .end local v14    # "ii":I
    .end local v15    # "j":I
    .end local v16    # "k":I
    .end local v24    # "test":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    const/16 v30, 0x39

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_16

    .line 224
    shl-int/lit8 v29, v19, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 225
    .restart local v9    # "d":I
    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v30, v0

    shl-int v29, v29, v30

    add-int/lit8 v16, v29, -0x1

    .line 226
    .restart local v16    # "k":I
    move/from16 v0, v19

    new-array v12, v0, [B

    .line 228
    .restart local v12    # "hlp":[B
    const/16 v20, 0x0

    .line 232
    .local v20, "r":I
    :goto_f
    move/from16 v0, v20

    if-gt v0, v9, :cond_11

    .line 234
    ushr-int/lit8 v22, v20, 0x3

    .line 235
    .local v22, "s":I
    rem-int/lit8 v21, v20, 0x8

    .line 236
    .local v21, "rest":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    add-int v20, v20, v29

    .line 237
    add-int/lit8 v29, v20, 0x7

    ushr-int/lit8 v10, v29, 0x3

    .line 238
    .local v10, "f":I
    const-wide/16 v5, 0x0

    .line 239
    .restart local v5    # "big8":J
    const/4 v14, 0x0

    .line 240
    .restart local v14    # "ii":I
    move/from16 v15, v22

    .restart local v15    # "j":I
    :goto_10
    if-ge v15, v10, :cond_f

    .line 242
    aget-byte v29, v11, v15

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    shl-int/lit8 v30, v14, 0x3

    shl-int v29, v29, v30

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    xor-long v5, v5, v29

    .line 243
    add-int/lit8 v14, v14, 0x1

    .line 240
    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    .line 246
    :cond_f
    ushr-long v5, v5, v21

    .line 247
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v29, v0

    and-long v25, v5, v29

    .line 248
    .local v25, "test8":J
    int-to-long v0, v7

    move-wide/from16 v29, v0

    add-long v29, v29, v25

    move-wide/from16 v0, v29

    long-to-int v7, v0

    .line 250
    mul-int v29, v8, v19

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    :goto_11
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v29, v0

    cmp-long v29, v25, v29

    if-gez v29, :cond_10

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    array-length v0, v12

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v12, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v29

    move/from16 v0, v29

    new-array v12, v0, [B

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v12, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 257
    const-wide/16 v29, 0x1

    add-long v25, v25, v29

    goto :goto_11

    .line 260
    :cond_10
    const/16 v29, 0x0

    mul-int v30, v8, v19

    move/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_f

    .line 265
    .end local v5    # "big8":J
    .end local v10    # "f":I
    .end local v14    # "ii":I
    .end local v15    # "j":I
    .end local v21    # "rest":I
    .end local v22    # "s":I
    .end local v25    # "test8":J
    :cond_11
    ushr-int/lit8 v22, v20, 0x3

    .line 266
    .restart local v22    # "s":I
    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 268
    rem-int/lit8 v21, v20, 0x8

    .line 269
    .restart local v21    # "rest":I
    const-wide/16 v5, 0x0

    .line 270
    .restart local v5    # "big8":J
    const/4 v14, 0x0

    .line 271
    .restart local v14    # "ii":I
    move/from16 v15, v22

    .restart local v15    # "j":I
    :goto_12
    move/from16 v0, v19

    if-ge v15, v0, :cond_12

    .line 273
    aget-byte v29, v11, v15

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    shl-int/lit8 v30, v14, 0x3

    shl-int v29, v29, v30

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    xor-long v5, v5, v29

    .line 274
    add-int/lit8 v14, v14, 0x1

    .line 271
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    .line 277
    :cond_12
    ushr-long v5, v5, v21

    .line 278
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v29, v0

    and-long v25, v5, v29

    .line 279
    .restart local v25    # "test8":J
    int-to-long v0, v7

    move-wide/from16 v29, v0

    add-long v29, v29, v25

    move-wide/from16 v0, v29

    long-to-int v7, v0

    .line 281
    mul-int v29, v8, v19

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    :goto_13
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v29, v0

    cmp-long v29, v25, v29

    if-gez v29, :cond_13

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    array-length v0, v12

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v12, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v29

    move/from16 v0, v29

    new-array v12, v0, [B

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v12, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 288
    const-wide/16 v29, 0x1

    add-long v25, v25, v29

    goto :goto_13

    .line 291
    :cond_13
    const/16 v29, 0x0

    mul-int v30, v8, v19

    move/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    add-int/lit8 v8, v8, 0x1

    .line 295
    .end local v5    # "big8":J
    .end local v14    # "ii":I
    .end local v15    # "j":I
    .end local v21    # "rest":I
    .end local v25    # "test8":J
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    shl-int v29, v23, v29

    sub-int v7, v29, v7

    .line 296
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_14
    move/from16 v0, v18

    if-ge v13, v0, :cond_16

    .line 298
    and-int v29, v7, v16

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v25, v0

    .line 300
    .restart local v25    # "test8":J
    mul-int v29, v8, v19

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    :goto_15
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v29, v0

    cmp-long v29, v25, v29

    if-gez v29, :cond_15

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    array-length v0, v12

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v12, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v29

    move/from16 v0, v29

    new-array v12, v0, [B

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v12, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 307
    const-wide/16 v29, 0x1

    add-long v25, v25, v29

    goto :goto_15

    .line 310
    :cond_15
    const/16 v29, 0x0

    mul-int v30, v8, v19

    move/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v19

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    ushr-int v7, v7, v29

    .line 312
    add-int/lit8 v8, v8, 0x1

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    move/from16 v29, v0

    add-int v13, v13, v29

    goto :goto_14

    .line 316
    .end local v9    # "d":I
    .end local v12    # "hlp":[B
    .end local v13    # "i":I
    .end local v16    # "k":I
    .end local v20    # "r":I
    .end local v22    # "s":I
    .end local v25    # "test8":J
    :cond_16
    move/from16 v0, v19

    new-array v4, v0, [B

    .line 317
    .local v4, "TKey":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v29

    move/from16 v0, v29

    new-array v4, v0, [B

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    goto/16 :goto_0
.end method

.method public getLog(I)I
    .locals 2
    .param p1, "intValue"    # I

    .prologue
    .line 335
    const/4 v1, 0x1

    .line 336
    .local v1, "log":I
    const/4 v0, 0x2

    .line 337
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 339
    shl-int/lit8 v0, v0, 0x1

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return v1
.end method

.method public getSignatureLength()I
    .locals 5

    .prologue
    .line 41
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    .line 42
    .local v1, "mdsize":I
    shl-int/lit8 v3, v1, 0x3

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v2, v3, v4

    .line 43
    .local v2, "size":I
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v0

    .line 44
    .local v0, "logs":I
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 46
    mul-int v3, v1, v2

    return v3
.end method

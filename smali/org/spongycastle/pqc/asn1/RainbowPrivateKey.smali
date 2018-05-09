.class public Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RainbowPrivateKey.java"


# instance fields
.field private b1:[B

.field private b2:[B

.field private invA1:[[B

.field private invA2:[[B

.field private layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

.field private oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;

.field private vi:[B


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 33
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 61
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_0

    .line 63
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 71
    :goto_0
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 72
    .local v12, "asnA1":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [[B

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    .line 73
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_1

    .line 75
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    aput-object v3, v4, v25

    .line 73
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 67
    .end local v12    # "asnA1":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v25    # "i":I
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 79
    .restart local v12    # "asnA1":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v25    # "i":I
    :cond_1
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 80
    .local v16, "asnb1":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    .line 83
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 84
    .local v13, "asnA2":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [[B

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    .line 85
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_2
    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_2

    .line 87
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    aput-object v3, v4, v26

    .line 85
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 91
    :cond_2
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 92
    .local v17, "asnb2":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    .line 95
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v18

    check-cast v18, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 96
    .local v18, "asnvi":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    .line 99
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 101
    .local v15, "asnLayers":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v15}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v9, v3, [[[[B

    .line 102
    .local v9, "alphas":[[[[B
    invoke-virtual {v15}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v0, v3, [[[[B

    move-object/from16 v19, v0

    .line 103
    .local v19, "betas":[[[[B
    invoke-virtual {v15}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v0, v3, [[[B

    move-object/from16 v23, v0

    .line 104
    .local v23, "gammas":[[[B
    invoke-virtual {v15}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v0, v3, [[B

    move-object/from16 v22, v0

    .line 106
    .local v22, "etas":[[B
    const/4 v2, 0x0

    .local v2, "l":I
    :goto_3
    invoke-virtual {v15}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 108
    invoke-virtual {v15, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 111
    .local v14, "asnLayer":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 112
    .local v11, "alphas3d":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v11}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [[[B

    aput-object v3, v9, v2

    .line 113
    const/16 v27, 0x0

    .local v27, "m":I
    :goto_4
    invoke-virtual {v11}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_4

    .line 115
    move/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 116
    .local v10, "alphas2d":Lorg/spongycastle/asn1/ASN1Sequence;
    aget-object v3, v9, v2

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [[B

    aput-object v4, v3, v27

    .line 117
    const/16 v30, 0x0

    .local v30, "n":I
    :goto_5
    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_3

    .line 119
    aget-object v3, v9, v2

    aget-object v4, v3, v27

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    aput-object v3, v4, v30

    .line 117
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .line 113
    :cond_3
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 124
    .end local v10    # "alphas2d":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v30    # "n":I
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 125
    .local v21, "betas3d":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [[[B

    aput-object v3, v19, v2

    .line 126
    const/16 v28, 0x0

    .local v28, "mb":I
    :goto_6
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_6

    .line 128
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v20

    check-cast v20, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 129
    .local v20, "betas2d":Lorg/spongycastle/asn1/ASN1Sequence;
    aget-object v3, v19, v2

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [[B

    aput-object v4, v3, v28

    .line 130
    const/16 v31, 0x0

    .local v31, "nb":I
    :goto_7
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_5

    .line 132
    aget-object v3, v19, v2

    aget-object v4, v3, v28

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    aput-object v3, v4, v31

    .line 130
    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    .line 126
    :cond_5
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 137
    .end local v20    # "betas2d":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v31    # "nb":I
    :cond_6
    const/4 v3, 0x2

    invoke-virtual {v14, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v24

    check-cast v24, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 138
    .local v24, "gammas2d":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [[B

    aput-object v3, v23, v2

    .line 139
    const/16 v29, 0x0

    .local v29, "mg":I
    :goto_8
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_7

    .line 141
    aget-object v4, v23, v2

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    aput-object v3, v4, v29

    .line 139
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 145
    :cond_7
    const/4 v3, 0x3

    invoke-virtual {v14, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    aput-object v3, v22, v2

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 148
    .end local v11    # "alphas3d":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v14    # "asnLayer":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v21    # "betas3d":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v24    # "gammas2d":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v27    # "m":I
    .end local v28    # "mb":I
    .end local v29    # "mg":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    array-length v3, v3

    add-int/lit8 v32, v3, -0x1

    .line 149
    .local v32, "numOfLayers":I
    move/from16 v0, v32

    new-array v3, v0, [Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .line 150
    const/16 v25, 0x0

    .end local v2    # "l":I
    :goto_9
    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    .line 152
    new-instance v2, Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    aget-byte v3, v3, v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    add-int/lit8 v5, v25, 0x1

    aget-byte v4, v4, v5

    aget-object v5, v9, v25

    invoke-static {v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[[B)[[[S

    move-result-object v5

    aget-object v6, v19, v25

    invoke-static {v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[[B)[[[S

    move-result-object v6

    aget-object v7, v23, v25

    invoke-static {v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v7

    aget-object v8, v22, v25

    invoke-static {v8}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;-><init>(BB[[[S[[[S[[S[S)V

    .line 154
    .local v2, "l":Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aput-object v2, v3, v25

    .line 150
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    .line 157
    .end local v2    # "l":Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    :cond_9
    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V
    .locals 3
    .param p1, "invA1"    # [[S
    .param p2, "b1"    # [S
    .param p3, "invA2"    # [[S
    .param p4, "b2"    # [S
    .param p5, "vi"    # [I
    .param p6, "layers"    # [Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .prologue
    .line 161
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 162
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 163
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    .line 164
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    .line 165
    invoke-static {p3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    .line 166
    invoke-static {p4}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    .line 167
    invoke-static {p5}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertIntArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    .line 168
    iput-object p6, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .line 169
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 173
    instance-of v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;

    if-eqz v0, :cond_0

    .line 175
    check-cast p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;

    .line 182
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 177
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 179
    new-instance v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 182
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getB1()[S
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v0

    return-object v0
.end method

.method public getB2()[S
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v0

    return-object v0
.end method

.method public getInvA1()[[S
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getInvA2()[[S
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getLayers()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getVi()[I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArraytoInt([B)[I

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 23

    .prologue
    .line 252
    new-instance v20, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 255
    .local v20, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/spongycastle/asn1/ASN1Integer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/spongycastle/asn1/ASN1Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 265
    :goto_0
    new-instance v6, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 266
    .local v6, "asnA1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 268
    new-instance v21, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    move-object/from16 v22, v0

    aget-object v22, v22, v17

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 266
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 261
    .end local v6    # "asnA1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v17    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 270
    .restart local v6    # "asnA1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .restart local v17    # "i":I
    :cond_1
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual/range {v20 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 273
    new-instance v10, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 274
    .local v10, "asnb1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v21, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 275
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual/range {v20 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 278
    new-instance v7, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 279
    .local v7, "asnA2":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 281
    new-instance v21, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    move-object/from16 v22, v0

    aget-object v22, v22, v17

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 279
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 283
    :cond_2
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual/range {v20 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 286
    new-instance v11, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 287
    .local v11, "asnb2":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v21, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 288
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual/range {v20 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 291
    new-instance v12, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 292
    .local v12, "asnvi":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v21, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 293
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual/range {v20 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 296
    new-instance v9, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 298
    .local v9, "asnLayers":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/16 v19, 0x0

    .local v19, "l":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 300
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 303
    .local v2, "aLayer":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffAlpha()[[[S

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[[S)[[[B

    move-result-object v3

    .line 304
    .local v3, "alphas":[[[B
    new-instance v5, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 305
    .local v5, "alphas3d":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/16 v17, 0x0

    :goto_4
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 307
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 308
    .local v4, "alphas2d":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_5
    aget-object v21, v3, v17

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 310
    new-instance v21, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v22, v3, v17

    aget-object v22, v22, v18

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 308
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 312
    :cond_3
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 305
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 314
    .end local v4    # "alphas2d":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v18    # "j":I
    :cond_4
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffBeta()[[[S

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[[S)[[[B

    move-result-object v13

    .line 318
    .local v13, "betas":[[[B
    new-instance v15, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v15}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 319
    .local v15, "betas3d":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/16 v17, 0x0

    :goto_6
    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 321
    new-instance v14, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 322
    .local v14, "betas2d":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_7
    aget-object v21, v13, v17

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 324
    new-instance v21, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v22, v13, v17

    aget-object v22, v22, v18

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 322
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 326
    :cond_5
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 319
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 328
    .end local v14    # "betas2d":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v18    # "j":I
    :cond_6
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffGamma()[[S

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object v16

    .line 332
    .local v16, "gammas":[[B
    new-instance v8, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 333
    .local v8, "asnG":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/16 v17, 0x0

    :goto_8
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 335
    new-instance v21, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v22, v16, v17

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 333
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 337
    :cond_7
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 340
    new-instance v21, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffEta()[S

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 343
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 298
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 346
    .end local v2    # "aLayer":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v3    # "alphas":[[[B
    .end local v5    # "alphas3d":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v8    # "asnG":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v13    # "betas":[[[B
    .end local v15    # "betas3d":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v16    # "gammas":[[B
    :cond_8
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v9}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual/range {v20 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 348
    new-instance v21, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v21
.end method

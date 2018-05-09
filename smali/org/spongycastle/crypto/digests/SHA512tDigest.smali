.class public Lorg/spongycastle/crypto/digests/SHA512tDigest;
.super Lorg/spongycastle/crypto/digests/LongDigest;
.source "SHA512tDigest.java"


# instance fields
.field private H1t:J

.field private H2t:J

.field private H3t:J

.field private H4t:J

.field private H5t:J

.field private H6t:J

.field private H7t:J

.field private H8t:J

.field private final digestLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "bitLength"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/LongDigest;-><init>()V

    .line 21
    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength cannot be >= 512"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    rem-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength needs to be a multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    const/16 v0, 0x180

    if-ne p1, v0, :cond_2

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength cannot be 384 use SHA384 instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_2
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    .line 38
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->tIvGenerate(I)V

    .line 40
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->reset()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA512tDigest;)V
    .locals 1
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/SHA512tDigest;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/LongDigest;-><init>(Lorg/spongycastle/crypto/digests/LongDigest;)V

    .line 51
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    .line 53
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->reset(Lorg/spongycastle/util/Memoable;)V

    .line 54
    return-void
.end method

.method private static intToBigEndian(I[BII)V
    .locals 4
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "max"    # I

    .prologue
    .line 172
    const/4 v2, 0x4

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 173
    .local v0, "num":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 175
    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v1, v2, 0x8

    .line 176
    .local v1, "shift":I
    add-int v2, p2, v0

    ushr-int v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    goto :goto_0

    .line 178
    .end local v1    # "shift":I
    :cond_0
    return-void
.end method

.method private static longToBigEndian(J[BII)V
    .locals 3
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I
    .param p4, "max"    # I

    .prologue
    .line 159
    if-lez p4, :cond_0

    .line 161
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->intToBigEndian(I[BII)V

    .line 163
    const/4 v0, 0x4

    if-le p4, v0, :cond_0

    .line 165
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    add-int/lit8 v2, p4, -0x4

    invoke-static {v0, p2, v1, v2}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->intToBigEndian(I[BII)V

    .line 168
    :cond_0
    return-void
.end method

.method private tIvGenerate(I)V
    .locals 2
    .param p1, "bitLength"    # I

    .prologue
    .line 108
    const-wide v0, -0x3053bc3da9e69353L    # -6.392239886847908E75

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H1:J

    .line 109
    const-wide v0, 0x1ec20b20216f029eL    # 1.604250256667292E-160

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H2:J

    .line 110
    const-wide v0, -0x6634a928a4cea272L

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H3:J

    .line 111
    const-wide v0, 0xea509ffab89354L

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H4:J

    .line 112
    const-wide v0, -0xb540825f7bcd88cL

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H5:J

    .line 113
    const-wide v0, 0x3ea0cd298e9bc9baL    # 5.007211971427005E-7

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H6:J

    .line 114
    const-wide v0, -0x45d983f1a11be732L    # -1.418977391716189E-28

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H7:J

    .line 115
    const-wide v0, -0x1ba974349247b24L

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H8:J

    .line 117
    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 118
    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 119
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 120
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 121
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 122
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 123
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 124
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 126
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 128
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 129
    rem-int/lit8 p1, p1, 0x64

    .line 130
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 131
    rem-int/lit8 p1, p1, 0xa

    .line 132
    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 145
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->finish()V

    .line 147
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H1:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H1t:J

    .line 148
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H2:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H2t:J

    .line 149
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H3:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H3t:J

    .line 150
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H4:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H4t:J

    .line 151
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H5:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H5t:J

    .line 152
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H6:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H6t:J

    .line 153
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H7:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H7t:J

    .line 154
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H8:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H8t:J

    .line 155
    return-void

    .line 134
    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 136
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 137
    rem-int/lit8 p1, p1, 0xa

    .line 138
    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    goto :goto_0

    .line 142
    :cond_1
    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    goto :goto_0
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;-><init>(Lorg/spongycastle/crypto/digests/SHA512tDigest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->finish()V

    .line 72
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H1:J

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    invoke-static {v0, v1, p1, p2, v2}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 73
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H2:J

    add-int/lit8 v2, p2, 0x8

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x8

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 74
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H3:J

    add-int/lit8 v2, p2, 0x10

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x10

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 75
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H4:J

    add-int/lit8 v2, p2, 0x18

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x18

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 76
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H5:J

    add-int/lit8 v2, p2, 0x20

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x20

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 77
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H6:J

    add-int/lit8 v2, p2, 0x28

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 78
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H7:J

    add-int/lit8 v2, p2, 0x30

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x30

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 79
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H8:J

    add-int/lit8 v2, p2, 0x38

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x38

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 81
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->reset()V

    .line 83
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHA-512/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->reset()V

    .line 96
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H1t:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H1:J

    .line 97
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H2t:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H2:J

    .line 98
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H3t:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H3:J

    .line 99
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H4t:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H4:J

    .line 100
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H5t:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H5:J

    .line 101
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H6t:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H6:J

    .line 102
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H7t:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H7:J

    .line 103
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H8t:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H8:J

    .line 104
    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 3
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 187
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    .line 189
    .local v0, "t":Lorg/spongycastle/crypto/digests/SHA512tDigest;
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    iget v2, v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->digestLength:I

    if-eq v1, v2, :cond_0

    .line 191
    new-instance v1, Lorg/spongycastle/util/MemoableResetException;

    const-string v2, "digestLength inappropriate in other"

    invoke-direct {v1, v2}, Lorg/spongycastle/util/MemoableResetException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_0
    invoke-super {p0, v0}, Lorg/spongycastle/crypto/digests/LongDigest;->copyIn(Lorg/spongycastle/crypto/digests/LongDigest;)V

    .line 196
    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H1t:J

    iput-wide v1, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H1t:J

    .line 197
    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H2t:J

    iput-wide v1, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H2t:J

    .line 198
    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H3t:J

    iput-wide v1, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H3t:J

    .line 199
    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H4t:J

    iput-wide v1, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H4t:J

    .line 200
    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H5t:J

    iput-wide v1, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H5t:J

    .line 201
    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H6t:J

    iput-wide v1, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H6t:J

    .line 202
    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H7t:J

    iput-wide v1, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H7t:J

    .line 203
    iget-wide v1, v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H8t:J

    iput-wide v1, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->H8t:J

    .line 204
    return-void
.end method

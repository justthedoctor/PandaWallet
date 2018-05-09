.class public Lcom/subgraph/orchid/crypto/ASN1Parser;
.super Ljava/lang/Object;
.source "ASN1Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Blob;,
        Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;,
        Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;,
        Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;,
        Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;
    }
.end annotation


# static fields
.field private static final ASN1_TAG_BITSTRING:I = 0x3

.field private static final ASN1_TAG_INTEGER:I = 0x2

.field private static final ASN1_TAG_SEQUENCE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private getRemainingBytes(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 143
    .local v0, "bs":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 144
    return-object v0
.end method


# virtual methods
.method createBlob(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Blob;
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 138
    new-instance v0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Blob;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->getRemainingBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Blob;-><init>([B)V

    return-object v0
.end method

.method getObjectBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1Length(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 87
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 88
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 91
    .local v1, "objectBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 92
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    return-object v1
.end method

.method parseASN1(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;
    .locals 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 64
    .local v2, "typeOctet":I
    and-int/lit8 v1, v2, 0x1f

    .line 65
    .local v1, "tag":I
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->getObjectBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    .local v0, "objectBuffer":Ljava/nio/ByteBuffer;
    sparse-switch v1, :sswitch_data_0

    .line 75
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/crypto/ASN1Parser;->createBlob(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Blob;

    move-result-object v3

    :goto_0
    return-object v3

    .line 69
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1Sequence(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;

    move-result-object v3

    goto :goto_0

    .line 71
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1Integer(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;

    move-result-object v3

    goto :goto_0

    .line 73
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1BitString(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;

    move-result-object v3

    goto :goto_0

    .line 67
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method parseASN1BitString(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 130
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 131
    .local v0, "unusedBits":I
    if-eqz v0, :cond_0

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 134
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->getRemainingBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;-><init>([B)V

    return-object v1
.end method

.method parseASN1Integer(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 126
    new-instance v0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->getRemainingBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method parseASN1Length(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 98
    .local v0, "firstOctet":I
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 101
    .end local v0    # "firstOctet":I
    :goto_0
    return v0

    .restart local v0    # "firstOctet":I
    :cond_0
    and-int/lit8 v1, v0, 0x7f

    invoke-virtual {p0, v1, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1LengthLong(ILjava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method parseASN1LengthLong(ILjava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "lengthOctets"    # I
    .param p2, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    .line 107
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 109
    :cond_1
    const/4 v1, 0x0

    .line 110
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 111
    shl-int/lit8 v1, v1, 0x8

    .line 112
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    return v1
.end method

.method parseASN1Sequence(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "obs":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;-><init>(Ljava/util/List;)V

    return-object v1
.end method

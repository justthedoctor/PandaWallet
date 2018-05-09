.class public Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DSTU4145ECBinary.java"


# instance fields
.field a:Lorg/spongycastle/asn1/ASN1Integer;

.field b:Lorg/spongycastle/asn1/ASN1OctetString;

.field bp:Lorg/spongycastle/asn1/ASN1OctetString;

.field f:Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

.field n:Lorg/spongycastle/asn1/ASN1Integer;

.field version:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 24
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 56
    .local v1, "taggedVersion":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 66
    .end local v1    # "taggedVersion":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_0
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->a:Lorg/spongycastle/asn1/ASN1Integer;

    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->b:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->n:Lorg/spongycastle/asn1/ASN1Integer;

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->bp:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 75
    return-void

    .line 63
    .restart local v1    # "taggedVersion":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "object parse error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/params/ECDomainParameters;)V
    .locals 7
    .param p1, "params"    # Lorg/spongycastle/crypto/params/ECDomainParameters;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 24
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/math/ec/ECCurve$F2m;

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "only binary domain is possible"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 41
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve$F2m;
    new-instance v2, Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v3

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v4

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK2()I

    move-result v5

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK3()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;-><init>(IIII)V

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

    .line 42
    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->a:Lorg/spongycastle/asn1/ASN1Integer;

    .line 43
    new-instance v0, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    .line 44
    .local v0, "converter":Lorg/spongycastle/asn1/x9/X9IntegerConverter;
    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->b:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 45
    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->n:Lorg/spongycastle/asn1/ASN1Integer;

    .line 46
    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->encodePoint(Lorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->bp:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 47
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 79
    instance-of v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    if-eqz v0, :cond_0

    .line 81
    check-cast p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    .line 89
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 84
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 86
    new-instance v0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 89
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->a:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getB()[B
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->b:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

    return-object v0
.end method

.method public getG()[B
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->bp:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->n:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .prologue
    .line 129
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 131
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v5, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->version:Ljava/math/BigInteger;

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->f:Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    iget-object v1, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->a:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 137
    iget-object v1, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->b:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 138
    iget-object v1, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->n:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 139
    iget-object v1, p0, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->bp:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 141
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

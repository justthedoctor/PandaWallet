.class public Lorg/spongycastle/asn1/eac/RSAPublicKey;
.super Lorg/spongycastle/asn1/eac/PublicKeyDataObject;
.source "RSAPublicKey.java"


# static fields
.field private static exponentValid:I

.field private static modulusValid:I


# instance fields
.field private exponent:Ljava/math/BigInteger;

.field private modulus:Ljava/math/BigInteger;

.field private usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private valid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput v0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->modulusValid:I

    .line 33
    const/4 v0, 0x2

    sput v0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->exponentValid:I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "usage"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "modulus"    # Ljava/math/BigInteger;
    .param p3, "exponent"    # Ljava/math/BigInteger;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/spongycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    .line 65
    iput-object p1, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    iput-object p2, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 67
    iput-object p3, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->exponent:Ljava/math/BigInteger;

    .line 68
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/eac/PublicKeyDataObject;-><init>()V

    .line 31
    const/4 v2, 0x0

    iput v2, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    .line 37
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 39
    .local v0, "en":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/eac/UnsignedInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/UnsignedInteger;

    move-result-object v1

    .line 45
    .local v1, "val":Lorg/spongycastle/asn1/eac/UnsignedInteger;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown DERTaggedObject :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-> not an Iso7816RSAPublicKeyStructure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :pswitch_0
    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/eac/RSAPublicKey;->setModulus(Lorg/spongycastle/asn1/eac/UnsignedInteger;)V

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/eac/RSAPublicKey;->setExponent(Lorg/spongycastle/asn1/eac/UnsignedInteger;)V

    goto :goto_0

    .line 57
    .end local v1    # "val":Lorg/spongycastle/asn1/eac/UnsignedInteger;
    :cond_0
    iget v2, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "missing argument -> not an Iso7816RSAPublicKeyStructure"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_1
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setExponent(Lorg/spongycastle/asn1/eac/UnsignedInteger;)V
    .locals 2
    .param p1, "exponent"    # Lorg/spongycastle/asn1/eac/UnsignedInteger;

    .prologue
    .line 100
    iget v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/RSAPublicKey;->exponentValid:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 102
    iget v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/RSAPublicKey;->exponentValid:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    .line 103
    invoke-virtual {p1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->exponent:Ljava/math/BigInteger;

    .line 109
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exponent already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setModulus(Lorg/spongycastle/asn1/eac/UnsignedInteger;)V
    .locals 2
    .param p1, "modulus"    # Lorg/spongycastle/asn1/eac/UnsignedInteger;

    .prologue
    .line 87
    iget v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/RSAPublicKey;->modulusValid:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 89
    iget v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/RSAPublicKey;->modulusValid:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->valid:I

    .line 90
    invoke-virtual {p1}, Lorg/spongycastle/asn1/eac/UnsignedInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 96
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modulus already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->exponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getUsage()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 115
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;->usage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 116
    new-instance v1, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 117
    new-instance v1, Lorg/spongycastle/asn1/eac/UnsignedInteger;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/eac/UnsignedInteger;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

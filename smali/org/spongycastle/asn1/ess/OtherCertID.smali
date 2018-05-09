.class public Lorg/spongycastle/asn1/ess/OtherCertID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OtherCertID.java"


# instance fields
.field private issuerSerial:Lorg/spongycastle/asn1/x509/IssuerSerial;

.field private otherCertHash:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->otherCertHash:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 55
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 57
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->issuerSerial:Lorg/spongycastle/asn1/x509/IssuerSerial;

    .line 59
    :cond_2
    return-void

    .line 51
    :cond_3
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DigestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->otherCertHash:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "algId"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "digest"    # [B

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 65
    new-instance v0, Lorg/spongycastle/asn1/x509/DigestInfo;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->otherCertHash:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[BLorg/spongycastle/asn1/x509/IssuerSerial;)V
    .locals 1
    .param p1, "algId"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "digest"    # [B
    .param p3, "issuerSerial"    # Lorg/spongycastle/asn1/x509/IssuerSerial;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 73
    new-instance v0, Lorg/spongycastle/asn1/x509/DigestInfo;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->otherCertHash:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 74
    iput-object p3, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->issuerSerial:Lorg/spongycastle/asn1/x509/IssuerSerial;

    .line 75
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ess/OtherCertID;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 22
    instance-of v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;

    if-eqz v0, :cond_0

    .line 24
    check-cast p0, Lorg/spongycastle/asn1/ess/OtherCertID;

    .line 31
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 26
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/ess/OtherCertID;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ess/OtherCertID;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlgorithmHash()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->otherCertHash:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const-string v1, "1.3.14.3.2.26"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->otherCertHash:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    goto :goto_0
.end method

.method public getCertHash()[B
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->otherCertHash:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->otherCertHash:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->otherCertHash:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getIssuerSerial()Lorg/spongycastle/asn1/x509/IssuerSerial;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->issuerSerial:Lorg/spongycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 128
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->otherCertHash:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 130
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->issuerSerial:Lorg/spongycastle/asn1/x509/IssuerSerial;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lorg/spongycastle/asn1/ess/OtherCertID;->issuerSerial:Lorg/spongycastle/asn1/x509/IssuerSerial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 135
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

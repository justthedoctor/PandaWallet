.class public Lorg/spongycastle/asn1/x509/TBSCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TBSCertificate.java"


# instance fields
.field endDate:Lorg/spongycastle/asn1/x509/Time;

.field extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field issuerUniqueId:Lorg/spongycastle/asn1/DERBitString;

.field seq:Lorg/spongycastle/asn1/ASN1Sequence;

.field serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

.field signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lorg/spongycastle/asn1/x509/Time;

.field subject:Lorg/spongycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

.field subjectUniqueId:Lorg/spongycastle/asn1/DERBitString;

.field version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 9
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 73
    const/4 v3, 0x0

    .line 75
    .local v3, "seqStart":I
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 80
    invoke-virtual {p1, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    instance-of v4, v4, Lorg/spongycastle/asn1/DERTaggedObject;

    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {p1, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v4, v8}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 90
    :goto_0
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 92
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 93
    add-int/lit8 v4, v3, 0x3

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    .line 98
    add-int/lit8 v4, v3, 0x4

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 100
    .local v0, "dates":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->startDate:Lorg/spongycastle/asn1/x509/Time;

    .line 101
    invoke-virtual {v0, v8}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->endDate:Lorg/spongycastle/asn1/x509/Time;

    .line 103
    add-int/lit8 v4, v3, 0x5

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    .line 108
    add-int/lit8 v4, v3, 0x6

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 110
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v5, v3, 0x6

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .local v2, "extras":I
    :goto_1
    if-lez v2, :cond_1

    .line 112
    add-int/lit8 v4, v3, 0x6

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERTaggedObject;

    .line 114
    .local v1, "extra":Lorg/spongycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 110
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 86
    .end local v0    # "dates":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v1    # "extra":Lorg/spongycastle/asn1/DERTaggedObject;
    .end local v2    # "extras":I
    :cond_0
    const/4 v3, -0x1

    .line 87
    new-instance v4, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->version:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 117
    .restart local v0    # "dates":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v1    # "extra":Lorg/spongycastle/asn1/DERTaggedObject;
    .restart local v2    # "extras":I
    :pswitch_0
    invoke-static {v1, v7}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_2

    .line 120
    :pswitch_1
    invoke-static {v1, v7}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_2

    .line 123
    :pswitch_2
    invoke-static {v1, v8}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    goto :goto_2

    .line 126
    .end local v1    # "extra":Lorg/spongycastle/asn1/DERTaggedObject;
    :cond_1
    return-void

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificate;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 58
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lorg/spongycastle/asn1/x509/TBSCertificate;

    .line 67
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 62
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertificate;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertificate;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 67
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/TBSCertificate;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 52
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEndDate()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->endDate:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getIssuerUniqueId()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSignature()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->startDate:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getSubject()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSubjectUniqueId()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

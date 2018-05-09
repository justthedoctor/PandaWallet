.class public Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private keyidentifier:[B


# direct methods
.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "keyid"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1
    .param p1, "spki"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 82
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->getDigest(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "keyid"    # [B

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 53
    return-void
.end method

.method public static createSHA1KeyIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p0, "keyInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 98
    new-instance v0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-object v0
.end method

.method public static createTruncatedSHA1KeyIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 5
    .param p0, "keyInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-static {p0}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->getDigest(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    .line 115
    .local v0, "dig":[B
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 117
    .local v1, "id":[B
    array-length v2, v0

    add-int/lit8 v2, v2, -0x8

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 120
    aget-byte v2, v1, v4

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 122
    new-instance v2, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V

    return-object v2
.end method

.method public static fromExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p0, "extensions"    # Lorg/spongycastle/asn1/x509/Extensions;

    .prologue
    .line 46
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method private static getDigest(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 5
    .param p0, "spki"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    const/4 v4, 0x0

    .line 127
    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 128
    .local v1, "digest":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 130
    .local v2, "resBuf":[B
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 131
    .local v0, "bytes":[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 132
    invoke-interface {v1, v2, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 133
    return-object v2
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 32
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    if-eqz v0, :cond_0

    .line 34
    check-cast p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    .line 41
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 36
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1OctetString;)V

    move-object p0, v0

    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 26
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKeyIdentifier()[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

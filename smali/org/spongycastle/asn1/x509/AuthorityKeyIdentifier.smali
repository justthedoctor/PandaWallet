.class public Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "AuthorityKeyIdentifier.java"


# instance fields
.field certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

.field certserno:Lorg/spongycastle/asn1/ASN1Integer;

.field keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 70
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 72
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERTaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 76
    .local v1, "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 88
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :pswitch_0
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 91
    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Lorg/spongycastle/asn1/x509/GeneralNames;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 147
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 148
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralNames;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 149
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 150
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 5
    .param p1, "spki"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 109
    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 110
    .local v1, "digest":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 112
    .local v2, "resBuf":[B
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 113
    .local v0, "bytes":[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 114
    invoke-interface {v1, v2, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 115
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 5
    .param p1, "spki"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "name"    # Lorg/spongycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 126
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

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
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 131
    .local v0, "bytes":[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 132
    invoke-interface {v1, v2, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 134
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 135
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/GeneralNames;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 136
    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v3, p3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 137
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "keyIdentifier"    # [B

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 158
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 159
    iput-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 160
    iput-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 161
    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "keyIdentifier"    # [B
    .param p2, "name"    # Lorg/spongycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 37
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 38
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 172
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 173
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/GeneralNames;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 174
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 175
    return-void
.end method

.method public static fromExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 1
    .param p0, "extensions"    # Lorg/spongycastle/asn1/x509/Extensions;

    .prologue
    .line 64
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 50
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    .line 59
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 44
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthorityCertIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getAuthorityCertSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyIdentifier()[B
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 209
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 214
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_1

    .line 216
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 219
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_2

    .line 221
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 225
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

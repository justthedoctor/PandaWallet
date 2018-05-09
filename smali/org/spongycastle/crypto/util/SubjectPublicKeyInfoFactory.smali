.class public Lorg/spongycastle/crypto/util/SubjectPublicKeyInfoFactory;
.super Ljava/lang/Object;
.source "SubjectPublicKeyInfoFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSubjectPublicKeyInfo(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 10
    .param p0, "publicKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    instance-of v1, p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz v1, :cond_0

    move-object v9, p0

    .line 39
    check-cast v9, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 41
    .local v9, "pub":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    new-instance v1, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 74
    .end local v9    # "pub":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    :goto_0
    return-object v1

    .line 43
    :cond_0
    instance-of v1, p0, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz v1, :cond_1

    move-object v9, p0

    .line 45
    check-cast v9, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    .line 47
    .local v9, "pub":Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;
    new-instance v1, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 49
    .end local v9    # "pub":Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;
    :cond_1
    instance-of v1, p0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v1, :cond_3

    move-object v9, p0

    .line 51
    check-cast v9, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 52
    .local v9, "pub":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v6

    .line 56
    .local v6, "domainParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    if-nez v6, :cond_2

    .line 58
    new-instance v8, Lorg/spongycastle/asn1/x9/X962Parameters;

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v8, v1}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    .line 72
    .local v8, "params":Lorg/spongycastle/asn1/ASN1Encodable;
    :goto_1
    new-instance v1, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/ASN1OctetString;

    .line 74
    .local v7, "p":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v1, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3, v8}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    goto :goto_0

    .line 62
    .end local v7    # "p":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v8    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 69
    .local v0, "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    new-instance v8, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v8, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .restart local v8    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    goto :goto_1

    .line 78
    .end local v0    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v6    # "domainParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v8    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v9    # "pub":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "key parameters not recognised."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.class public Lorg/spongycastle/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "PrivateKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Ljava/io/InputStream;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/util/PrivateKeyFactory;->createKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 23
    .param p0, "keyInfo"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    .line 78
    .local v10, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v16

    .line 82
    .local v16, "keyStructure":Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;
    new-instance v1, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 145
    .end local v16    # "keyStructure":Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;
    :goto_0
    return-object v1

    .line 89
    :cond_0
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/DHParameter;

    move-result-object v21

    .line 92
    .local v21, "params":Lorg/spongycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Integer;

    .line 94
    .local v13, "derX":Lorg/spongycastle/asn1/ASN1Integer;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v18

    .line 95
    .local v18, "lVal":Ljava/math/BigInteger;
    if-nez v18, :cond_1

    const/16 v17, 0x0

    .line 96
    .local v17, "l":I
    :goto_1
    new-instance v14, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-direct {v14, v2, v3, v4, v0}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 98
    .local v14, "dhParams":Lorg/spongycastle/crypto/params/DHParameters;
    new-instance v1, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v14}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    goto :goto_0

    .line 95
    .end local v14    # "dhParams":Lorg/spongycastle/crypto/params/DHParameters;
    .end local v17    # "l":I
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->intValue()I

    move-result v17

    goto :goto_1

    .line 100
    .end local v13    # "derX":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v18    # "lVal":Ljava/math/BigInteger;
    .end local v21    # "params":Lorg/spongycastle/asn1/pkcs/DHParameter;
    :cond_2
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    new-instance v21, Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 103
    .local v21, "params":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Integer;

    .line 105
    .restart local v13    # "derX":Lorg/spongycastle/asn1/ASN1Integer;
    new-instance v1, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    goto :goto_0

    .line 108
    .end local v13    # "derX":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v21    # "params":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    :cond_3
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Integer;

    .line 111
    .restart local v13    # "derX":Lorg/spongycastle/asn1/ASN1Integer;
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v12

    .line 113
    .local v12, "de":Lorg/spongycastle/asn1/ASN1Encodable;
    const/16 v20, 0x0

    .line 114
    .local v20, "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    if-eqz v12, :cond_4

    .line 116
    invoke-interface {v12}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DSAParameter;

    move-result-object v21

    .line 117
    .local v21, "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    new-instance v20, Lorg/spongycastle/crypto/params/DSAParameters;

    .end local v20    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3, v4}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 120
    .end local v21    # "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    .restart local v20    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    :cond_4
    new-instance v1, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    goto/16 :goto_0

    .line 122
    .end local v12    # "de":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v13    # "derX":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v20    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    :cond_5
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 124
    new-instance v21, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Primitive;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    .line 127
    .local v21, "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 129
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v19

    .line 130
    .local v19, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-static/range {v19 .. v19}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v22

    .line 137
    .end local v19    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .local v22, "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/sec/ECPrivateKey;

    move-result-object v15

    .line 138
    .local v15, "ec":Lorg/spongycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v15}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v11

    .line 142
    .local v11, "d":Ljava/math/BigInteger;
    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 145
    .local v1, "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    new-instance v2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-direct {v2, v11, v1}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 134
    .end local v1    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v11    # "d":Ljava/math/BigInteger;
    .end local v15    # "ec":Lorg/spongycastle/asn1/sec/ECPrivateKey;
    .end local v22    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v22

    .restart local v22    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    goto :goto_2

    .line 149
    .end local v21    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    .end local v22    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "algorithm identifier in key not recognised"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createKey([B)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "privateKeyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/util/PrivateKeyFactory;->createKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

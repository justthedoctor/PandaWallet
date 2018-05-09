.class public Lorg/spongycastle/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;
.source "PublicKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
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
    .line 71
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 32
    .param p0, "keyInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v14

    .line 85
    .local v14, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSAPublicKey;

    move-result-object v28

    .line 90
    .local v28, "pubKey":Lorg/spongycastle/asn1/pkcs/RSAPublicKey;
    new-instance v2, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    const/4 v9, 0x0

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v2, v9, v10, v11}, Lorg/spongycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 181
    .end local v28    # "pubKey":Lorg/spongycastle/asn1/pkcs/RSAPublicKey;
    :goto_0
    return-object v2

    .line 92
    :cond_1
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/DHPublicKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHPublicKey;

    move-result-object v19

    .line 96
    .local v19, "dhPublicKey":Lorg/spongycastle/asn1/x9/DHPublicKey;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/x9/DHPublicKey;->getY()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v31

    .line 98
    .local v31, "y":Ljava/math/BigInteger;
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHDomainParameters;

    move-result-object v18

    .line 100
    .local v18, "dhParams":Lorg/spongycastle/asn1/x9/DHDomainParameters;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getP()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    .line 101
    .local v3, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getG()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 102
    .local v4, "g":Ljava/math/BigInteger;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getQ()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 104
    .local v5, "q":Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 105
    .local v6, "j":Ljava/math/BigInteger;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getJ()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 107
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getJ()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    .line 110
    :cond_2
    const/4 v7, 0x0

    .line 111
    .local v7, "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getValidationParms()Lorg/spongycastle/asn1/x9/DHValidationParms;

    move-result-object v20

    .line 112
    .local v20, "dhValidationParms":Lorg/spongycastle/asn1/x9/DHValidationParms;
    if-eqz v20, :cond_3

    .line 114
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DHValidationParms;->getSeed()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v29

    .line 115
    .local v29, "seed":[B
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DHValidationParms;->getPgenCounter()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v27

    .line 119
    .local v27, "pgenCounter":Ljava/math/BigInteger;
    new-instance v7, Lorg/spongycastle/crypto/params/DHValidationParameters;

    .end local v7    # "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v27 .. v27}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    move-object/from16 v0, v29

    invoke-direct {v7, v0, v2}, Lorg/spongycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    .line 122
    .end local v27    # "pgenCounter":Ljava/math/BigInteger;
    .end local v29    # "seed":[B
    .restart local v7    # "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    :cond_3
    new-instance v9, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    new-instance v2, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V

    move-object/from16 v0, v31

    invoke-direct {v9, v0, v2}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    move-object v2, v9

    goto :goto_0

    .line 124
    .end local v3    # "p":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    .end local v5    # "q":Ljava/math/BigInteger;
    .end local v6    # "j":Ljava/math/BigInteger;
    .end local v7    # "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    .end local v18    # "dhParams":Lorg/spongycastle/asn1/x9/DHDomainParameters;
    .end local v19    # "dhPublicKey":Lorg/spongycastle/asn1/x9/DHPublicKey;
    .end local v20    # "dhValidationParms":Lorg/spongycastle/asn1/x9/DHValidationParms;
    .end local v31    # "y":Ljava/math/BigInteger;
    :cond_4
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/DHParameter;

    move-result-object v26

    .line 127
    .local v26, "params":Lorg/spongycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/ASN1Integer;

    .line 129
    .local v17, "derY":Lorg/spongycastle/asn1/ASN1Integer;
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v23

    .line 130
    .local v23, "lVal":Ljava/math/BigInteger;
    if-nez v23, :cond_5

    const/16 v22, 0x0

    .line 131
    .local v22, "l":I
    :goto_1
    new-instance v18, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v2, v9, v10, v1}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 133
    .local v18, "dhParams":Lorg/spongycastle/crypto/params/DHParameters;
    new-instance v2, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-direct {v2, v9, v0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    goto/16 :goto_0

    .line 130
    .end local v18    # "dhParams":Lorg/spongycastle/crypto/params/DHParameters;
    .end local v22    # "l":I
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->intValue()I

    move-result v22

    goto :goto_1

    .line 135
    .end local v17    # "derY":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v23    # "lVal":Ljava/math/BigInteger;
    .end local v26    # "params":Lorg/spongycastle/asn1/pkcs/DHParameter;
    :cond_6
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 137
    new-instance v26, Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 138
    .local v26, "params":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/ASN1Integer;

    .line 140
    .restart local v17    # "derY":Lorg/spongycastle/asn1/ASN1Integer;
    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    new-instance v10, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v9, v10}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    goto/16 :goto_0

    .line 143
    .end local v17    # "derY":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v26    # "params":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    :cond_7
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 146
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/ASN1Integer;

    .line 147
    .restart local v17    # "derY":Lorg/spongycastle/asn1/ASN1Integer;
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v15

    .line 149
    .local v15, "de":Lorg/spongycastle/asn1/ASN1Encodable;
    const/16 v25, 0x0

    .line 150
    .local v25, "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    if-eqz v15, :cond_9

    .line 152
    invoke-interface {v15}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DSAParameter;

    move-result-object v26

    .line 153
    .local v26, "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    new-instance v25, Lorg/spongycastle/crypto/params/DSAParameters;

    .end local v25    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v9, v10}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 156
    .end local v26    # "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    .restart local v25    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    :cond_9
    new-instance v2, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v0, v25

    invoke-direct {v2, v9, v0}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    goto/16 :goto_0

    .line 158
    .end local v15    # "de":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v17    # "derY":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v25    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    :cond_a
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 160
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X962Parameters;

    move-result-object v26

    .line 163
    .local v26, "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 165
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v24

    check-cast v24, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 166
    .local v24, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-static/range {v24 .. v24}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v30

    .line 173
    .end local v24    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .local v30, "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :goto_2
    new-instance v21, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 174
    .local v21, "key":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v16, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 178
    .local v16, "derQ":Lorg/spongycastle/asn1/x9/X9ECPoint;
    new-instance v8, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 181
    .local v8, "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    new-instance v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-direct {v2, v9, v8}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    goto/16 :goto_0

    .line 170
    .end local v8    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v16    # "derQ":Lorg/spongycastle/asn1/x9/X9ECPoint;
    .end local v21    # "key":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v30    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :cond_b
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v30

    .restart local v30    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    goto :goto_2

    .line 185
    .end local v26    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    .end local v30    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :cond_c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v9, "algorithm identifier in key not recognised"

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createKey([B)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "keyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

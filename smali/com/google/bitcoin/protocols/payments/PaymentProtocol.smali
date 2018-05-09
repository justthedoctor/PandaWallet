.class public Lcom/google/bitcoin/protocols/payments/PaymentProtocol;
.super Ljava/lang/Object;
.source "PaymentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/payments/PaymentProtocol$1;,
        Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;
    }
.end annotation


# static fields
.field public static final MIMETYPE_PAYMENT:Ljava/lang/String; = "application/Pandacoin-payment"

.field public static final MIMETYPE_PAYMENTACK:Ljava/lang/String; = "application/Pandacoin-paymentack"

.field public static final MIMETYPE_PAYMENTREQUEST:Ljava/lang/String; = "application/Pandacoin-paymentrequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method

.method public static signPaymentRequestPki(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V
    .locals 11
    .param p0, "paymentRequest"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .param p1, "certificateChain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v3

    .line 75
    .local v3, "certificates":Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    move-object v1, p1

    .local v1, "arr$":[Ljava/security/cert/X509Certificate;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 76
    .local v2, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->addCertificate(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "certificate":Ljava/security/cert/Certificate;
    :cond_0
    const-string v9, "x509+sha256"

    invoke-virtual {p0, v9}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setPkiType(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 79
    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setPkiData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 80
    sget-object v9, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, v9}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 81
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v6

    .line 84
    .local v6, "paymentRequestToSign":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RSA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 85
    const-string v0, "SHA256withRSA"

    .line 89
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v7

    .line 90
    .local v7, "signature":Ljava/security/Signature;
    invoke-virtual {v7, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 91
    invoke-virtual {v6}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/security/Signature;->update([B)V

    .line 93
    invoke-virtual {v7}, Ljava/security/Signature;->sign()[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 98
    return-void

    .line 87
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v7    # "signature":Ljava/security/Signature;
    :cond_1
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-interface {p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "arr$":[Ljava/security/cert/X509Certificate;
    .end local v3    # "certificates":Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "paymentRequestToSign":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    :catch_0
    move-exception v8

    .line 96
    .local v8, "x":Ljava/security/GeneralSecurityException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public static verifyPaymentRequestPki(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Ljava/security/KeyStore;)Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;
    .locals 23
    .param p0, "paymentRequest"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .param p1, "trustStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    const/4 v7, 0x0

    .line 115
    .local v7, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiType()Ljava/lang/String;

    move-result-object v13

    .line 116
    .local v13, "pkiType":Ljava/lang/String;
    const-string v20, "none"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 118
    const/16 v20, 0x0

    .line 168
    :goto_0
    return-object v20

    .line 121
    :cond_0
    const-string v20, "x509+sha256"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 122
    const-string v3, "SHA256withRSA"

    .line 128
    .local v3, "algorithm":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiData()Lcom/google/protobuf/ByteString;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v14

    .line 129
    .local v14, "protoCerts":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    invoke-virtual {v14}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getCertificateCount()I

    move-result v20

    if-nez v20, :cond_3

    .line 130
    new-instance v20, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPkiData;

    const-string v21, "No certificates provided in message: server config error"

    invoke-direct/range {v20 .. v21}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPkiData;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7

    .line 169
    .end local v3    # "algorithm":Ljava/lang/String;
    .end local v13    # "pkiType":Ljava/lang/String;
    .end local v14    # "protoCerts":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    :catch_0
    move-exception v9

    .line 171
    .local v9, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v20, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPkiData;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPkiData;-><init>(Ljava/lang/Exception;)V

    throw v20

    .line 123
    .end local v9    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v13    # "pkiType":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v20, "x509+sha1"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 124
    const-string v3, "SHA1withRSA"

    .restart local v3    # "algorithm":Ljava/lang/String;
    goto :goto_1

    .line 126
    .end local v3    # "algorithm":Ljava/lang/String;
    :cond_2
    new-instance v20, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPkiType;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unsupported PKI type: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPkiType;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_7

    .line 172
    .end local v13    # "pkiType":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 174
    .local v9, "e":Ljava/security/cert/CertificateException;
    new-instance v20, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;-><init>(Ljava/lang/Exception;)V

    throw v20

    .line 135
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    .restart local v3    # "algorithm":Ljava/lang/String;
    .restart local v13    # "pkiType":Ljava/lang/String;
    .restart local v14    # "protoCerts":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    :cond_3
    :try_start_2
    const-string v20, "X.509"

    invoke-static/range {v20 .. v20}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 136
    .local v6, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 137
    invoke-virtual {v14}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getCertificateList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 138
    .local v4, "bytes":Lcom/google/protobuf/ByteString;
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->newInput()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v20

    check-cast v20, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_2

    .line 175
    .end local v3    # "algorithm":Ljava/lang/String;
    .end local v4    # "bytes":Lcom/google/protobuf/ByteString;
    .end local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "pkiType":Ljava/lang/String;
    .end local v14    # "protoCerts":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    :catch_2
    move-exception v9

    .line 177
    .local v9, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 139
    .end local v9    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "algorithm":Ljava/lang/String;
    .restart local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v13    # "pkiType":Ljava/lang/String;
    .restart local v14    # "protoCerts":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    :cond_4
    :try_start_3
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v12

    .line 142
    .local v12, "path":Ljava/security/cert/CertPath;
    new-instance v11, Ljava/security/cert/PKIXParameters;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    .line 144
    .local v11, "params":Ljava/security/cert/PKIXParameters;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 147
    const-string v20, "PKIX"

    invoke-static/range {v20 .. v20}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v19

    .line 148
    .local v19, "validator":Ljava/security/cert/CertPathValidator;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v11}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v17

    check-cast v17, Ljava/security/cert/PKIXCertPathValidatorResult;

    .line 149
    .local v17, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    .line 151
    .local v15, "publicKey":Ljava/security/PublicKey;
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v18

    .line 155
    .local v18, "signature":Ljava/security/Signature;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v16

    .line 157
    .local v16, "reqToCheck":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    sget-object v20, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 158
    invoke-virtual/range {v16 .. v16}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v20

    if-nez v20, :cond_5

    .line 160
    new-instance v20, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;

    const-string v21, "Invalid signature, this payment request is not valid."

    invoke-direct/range {v20 .. v21}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_7

    .line 178
    .end local v3    # "algorithm":Ljava/lang/String;
    .end local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "params":Ljava/security/cert/PKIXParameters;
    .end local v12    # "path":Ljava/security/cert/CertPath;
    .end local v13    # "pkiType":Ljava/lang/String;
    .end local v14    # "protoCerts":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .end local v15    # "publicKey":Ljava/security/PublicKey;
    .end local v16    # "reqToCheck":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .end local v17    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v18    # "signature":Ljava/security/Signature;
    .end local v19    # "validator":Ljava/security/cert/CertPathValidator;
    :catch_3
    move-exception v9

    .line 179
    .local v9, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 163
    .end local v9    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v3    # "algorithm":Ljava/lang/String;
    .restart local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "params":Ljava/security/cert/PKIXParameters;
    .restart local v12    # "path":Ljava/security/cert/CertPath;
    .restart local v13    # "pkiType":Ljava/lang/String;
    .restart local v14    # "protoCerts":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .restart local v15    # "publicKey":Ljava/security/PublicKey;
    .restart local v16    # "reqToCheck":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .restart local v17    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .restart local v18    # "signature":Ljava/security/Signature;
    .restart local v19    # "validator":Ljava/security/cert/CertPathValidator;
    :cond_5
    const/16 v20, 0x0

    :try_start_4
    move/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 164
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/google/bitcoin/crypto/X509Utils;->getDisplayNameFromCertificate(Ljava/security/cert/X509Certificate;Z)Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "displayName":Ljava/lang/String;
    if-nez v8, :cond_6

    .line 166
    new-instance v20, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;

    const-string v21, "Could not extract name from certificate"

    invoke-direct/range {v20 .. v21}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_7

    .line 180
    .end local v3    # "algorithm":Ljava/lang/String;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "params":Ljava/security/cert/PKIXParameters;
    .end local v12    # "path":Ljava/security/cert/CertPath;
    .end local v13    # "pkiType":Ljava/lang/String;
    .end local v14    # "protoCerts":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .end local v15    # "publicKey":Ljava/security/PublicKey;
    .end local v16    # "reqToCheck":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .end local v17    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v18    # "signature":Ljava/security/Signature;
    .end local v19    # "validator":Ljava/security/cert/CertPathValidator;
    :catch_4
    move-exception v9

    .line 183
    .local v9, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v20, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9, v7}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;-><init>(Ljava/lang/Exception;Ljava/util/List;)V

    throw v20

    .line 168
    .end local v9    # "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v3    # "algorithm":Ljava/lang/String;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v8    # "displayName":Ljava/lang/String;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "params":Ljava/security/cert/PKIXParameters;
    .restart local v12    # "path":Ljava/security/cert/CertPath;
    .restart local v13    # "pkiType":Ljava/lang/String;
    .restart local v14    # "protoCerts":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .restart local v15    # "publicKey":Ljava/security/PublicKey;
    .restart local v16    # "reqToCheck":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .restart local v17    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .restart local v18    # "signature":Ljava/security/Signature;
    .restart local v19    # "validator":Ljava/security/cert/CertPathValidator;
    :cond_6
    :try_start_5
    new-instance v20, Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v8, v15, v1, v2}, Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;-><init>(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/cert/TrustAnchor;Lcom/google/bitcoin/protocols/payments/PaymentProtocol$1;)V
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_0

    .line 184
    .end local v3    # "algorithm":Ljava/lang/String;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "params":Ljava/security/cert/PKIXParameters;
    .end local v12    # "path":Ljava/security/cert/CertPath;
    .end local v13    # "pkiType":Ljava/lang/String;
    .end local v14    # "protoCerts":Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .end local v15    # "publicKey":Ljava/security/PublicKey;
    .end local v16    # "reqToCheck":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .end local v17    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v18    # "signature":Ljava/security/Signature;
    .end local v19    # "validator":Ljava/security/cert/CertPathValidator;
    :catch_5
    move-exception v9

    .line 186
    .local v9, "e":Ljava/security/InvalidKeyException;
    new-instance v20, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;-><init>(Ljava/lang/Exception;)V

    throw v20

    .line 187
    .end local v9    # "e":Ljava/security/InvalidKeyException;
    :catch_6
    move-exception v9

    .line 189
    .local v9, "e":Ljava/security/SignatureException;
    new-instance v20, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;-><init>(Ljava/lang/Exception;)V

    throw v20

    .line 190
    .end local v9    # "e":Ljava/security/SignatureException;
    :catch_7
    move-exception v9

    .line 191
    .local v9, "e":Ljava/security/KeyStoreException;
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v20
.end method

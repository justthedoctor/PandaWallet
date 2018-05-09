.class public Lcom/google/bitcoin/crypto/X509Utils;
.super Ljava/lang/Object;
.source "X509Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayNameFromCertificate(Ljava/security/cert/X509Certificate;Z)Ljava/lang/String;
    .locals 20
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "withLocation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    new-instance v9, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 53
    .local v9, "name":Lorg/spongycastle/asn1/x500/X500Name;
    const/4 v4, 0x0

    .local v4, "commonName":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "org":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "location":Ljava/lang/String;
    const/4 v5, 0x0

    .line 54
    .local v5, "country":Ljava/lang/String;
    invoke-virtual {v9}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v3

    .local v3, "arr$":[Lorg/spongycastle/asn1/x500/RDN;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v12, v3, v6

    .line 55
    .local v12, "rdn":Lorg/spongycastle/asn1/x500/RDN;
    invoke-virtual {v12}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v11

    .line 56
    .local v11, "pair":Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    invoke-virtual {v11}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/ASN1String;

    invoke-interface/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v16

    .line 57
    .local v16, "val":Ljava/lang/String;
    invoke-virtual {v11}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    .line 58
    .local v15, "type":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    sget-object v17, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->cn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 59
    move-object/from16 v4, v16

    .line 54
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 60
    :cond_1
    sget-object v17, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->o:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 61
    move-object/from16 v10, v16

    goto :goto_1

    .line 62
    :cond_2
    sget-object v17, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->l:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 63
    move-object/from16 v8, v16

    goto :goto_1

    .line 64
    :cond_3
    sget-object v17, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->c:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 65
    move-object/from16 v5, v16

    goto :goto_1

    .line 67
    .end local v11    # "pair":Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .end local v12    # "rdn":Lorg/spongycastle/asn1/x500/RDN;
    .end local v15    # "type":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v16    # "val":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v14

    .line 68
    .local v14, "subjectAlternativeNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v2, 0x0

    .line 69
    .local v2, "altName":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 70
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 71
    .local v13, "subjectAlternativeName":Ljava/util/List;, "Ljava/util/List<*>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 72
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "altName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "altName":Ljava/lang/String;
    goto :goto_2

    .line 74
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v13    # "subjectAlternativeName":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_6
    if-eqz v10, :cond_8

    .line 75
    if-eqz p1, :cond_7

    const-string v17, ", "

    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v8, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 79
    .end local v10    # "org":Ljava/lang/String;
    :cond_7
    :goto_3
    return-object v10

    .line 76
    .restart local v10    # "org":Ljava/lang/String;
    :cond_8
    if-eqz v4, :cond_9

    move-object v10, v4

    .line 77
    goto :goto_3

    :cond_9
    move-object v10, v2

    .line 79
    goto :goto_3
.end method

.method public static loadKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/security/KeyStore;
    .locals 4
    .param p0, "keystoreType"    # Ljava/lang/String;
    .param p1, "keystorePassword"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 88
    .local v0, "keystore":Ljava/security/KeyStore;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_0
    invoke-virtual {v0, p2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 99
    :goto_1
    return-object v0

    .line 88
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    .end local v0    # "keystore":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "x":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v1    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 96
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 99
    :goto_2
    throw v2

    .line 92
    :catch_1
    move-exception v1

    .line 93
    .local v1, "x":Ljava/security/GeneralSecurityException;
    :try_start_4
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    .end local v1    # "x":Ljava/security/GeneralSecurityException;
    .restart local v0    # "keystore":Ljava/security/KeyStore;
    :catch_2
    move-exception v2

    goto :goto_1

    .end local v0    # "keystore":Ljava/security/KeyStore;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

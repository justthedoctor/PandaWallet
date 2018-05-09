.class public Lcom/subgraph/orchid/crypto/RSAKeyEncoder;
.super Ljava/lang/Object;
.source "RSAKeyEncoder.java"


# static fields
.field private static final FOOTER:Ljava/lang/String; = "-----END RSA PUBLIC KEY-----"

.field private static final HEADER:Ljava/lang/String; = "-----BEGIN RSA PUBLIC KEY-----"


# instance fields
.field private final asn1Parser:Lcom/subgraph/orchid/crypto/ASN1Parser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/subgraph/orchid/crypto/ASN1Parser;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/ASN1Parser;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1Parser:Lcom/subgraph/orchid/crypto/ASN1Parser;

    return-void
.end method

.method private asn1ObjectToBigInt(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "ob"    # Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    .prologue
    .line 90
    instance-of v1, p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;

    .line 94
    .local v0, "n":Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method private asn1ObjectToBitString(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;)[B
    .locals 2
    .param p1, "ob"    # Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    .prologue
    .line 110
    instance-of v1, p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    move-object v0, p1

    .line 113
    check-cast v0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;

    .line 114
    .local v0, "bitstring":Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private asn1ObjectToSequence(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;I)Ljava/util/List;
    .locals 2
    .param p1, "ob"    # Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;
    .param p2, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    instance-of v1, p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 100
    check-cast v0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;

    .line 101
    .local v0, "seq":Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;->getItems()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 106
    .end local v0    # "seq":Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private createKeyFromModulusAndExponent(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;
    .locals 3
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "exponent"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v1, p1, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 49
    .local v1, "spec":Ljava/security/spec/RSAPublicKeySpec;
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 50
    .local v0, "fac":Ljava/security/KeyFactory;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    return-object v2
.end method

.method private decodeAsciiArmoredPEM(Ljava/lang/String;)[B
    .locals 2
    .param p1, "pem"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->removeDelimiters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "trimmed":Ljava/lang/String;
    invoke-static {v0}, Lcom/subgraph/orchid/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private extractPKCS1KeyFromSubjectPublicKeyInfo([B)[B
    .locals 4
    .param p1, "input"    # [B

    .prologue
    .line 84
    iget-object v2, p0, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1Parser:Lcom/subgraph/orchid/crypto/ASN1Parser;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    move-result-object v0

    .line 85
    .local v0, "ob":Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1ObjectToSequence(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;I)Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, "seq":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;>;"
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1ObjectToBitString(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;)[B

    move-result-object v2

    return-object v2
.end method

.method private removeDelimiters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pem"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 123
    const-string v2, "-----BEGIN RSA PUBLIC KEY-----"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 124
    .local v1, "headerIdx":I
    const-string v2, "-----END RSA PUBLIC KEY-----"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "footerIdx":I
    if-eq v1, v3, :cond_0

    if-eq v0, v3, :cond_0

    if-gt v0, v1, :cond_1

    .line 126
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "PEM object not formatted with expected header and footer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_1
    const-string v2, "-----BEGIN RSA PUBLIC KEY-----"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getPKCS1Encoded(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 1
    .param p1, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->extractPKCS1KeyFromSubjectPublicKeyInfo([B)[B

    move-result-object v0

    return-object v0
.end method

.method public parsePEMPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 8
    .param p1, "pem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->decodeAsciiArmoredPEM(Ljava/lang/String;)[B

    move-result-object v0

    .line 36
    .local v0, "bs":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 37
    .local v1, "data":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1Parser:Lcom/subgraph/orchid/crypto/ASN1Parser;

    invoke-virtual {v7, v1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    move-result-object v5

    .line 38
    .local v5, "ob":Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;
    const/4 v7, 0x2

    invoke-direct {p0, v5, v7}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1ObjectToSequence(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;I)Ljava/util/List;

    move-result-object v6

    .line 39
    .local v6, "seq":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;>;"
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    invoke-direct {p0, v7}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1ObjectToBigInt(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;)Ljava/math/BigInteger;

    move-result-object v4

    .line 40
    .local v4, "modulus":Ljava/math/BigInteger;
    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    invoke-direct {p0, v7}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1ObjectToBigInt(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;)Ljava/math/BigInteger;

    move-result-object v3

    .line 41
    .local v3, "exponent":Ljava/math/BigInteger;
    invoke-direct {p0, v4, v3}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->createKeyFromModulusAndExponent(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 42
    .end local v0    # "bs":[B
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    .end local v3    # "exponent":Ljava/math/BigInteger;
    .end local v4    # "modulus":Ljava/math/BigInteger;
    .end local v5    # "ob":Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;
    .end local v6    # "seq":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;>;"
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/security/InvalidKeyException;

    invoke-direct {v7}, Ljava/security/InvalidKeyException;-><init>()V

    throw v7
.end method

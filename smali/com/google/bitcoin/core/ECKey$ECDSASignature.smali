.class public Lcom/google/bitcoin/core/ECKey$ECDSASignature;
.super Ljava/lang/Object;
.source "ECKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/ECKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDSASignature"
.end annotation


# instance fields
.field public final r:Ljava/math/BigInteger;

.field public final s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "r"    # Ljava/math/BigInteger;
    .param p2, "s"    # Ljava/math/BigInteger;

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    .line 335
    iput-object p2, p0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    .line 336
    return-void
.end method

.method public static decodeFromDER([B)Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    .line 373
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 374
    .local v0, "decoder":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/DLSequence;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    .local v4, "seq":Lorg/spongycastle/asn1/DLSequence;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/DLSequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    .line 378
    .local v2, "r":Lorg/spongycastle/asn1/ASN1Integer;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/DLSequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Integer;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    .local v3, "s":Lorg/spongycastle/asn1/ASN1Integer;
    :try_start_2
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->close()V

    .line 385
    new-instance v5, Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v5

    .line 379
    .end local v2    # "r":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v3    # "s":Lorg/spongycastle/asn1/ASN1Integer;
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 386
    .end local v0    # "decoder":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .end local v4    # "seq":Lorg/spongycastle/asn1/DLSequence;
    :catch_1
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method protected derByteStream()Ljava/io/ByteArrayOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x48

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 394
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/spongycastle/asn1/DERSequenceGenerator;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 395
    .local v1, "seq":Lorg/spongycastle/asn1/DERSequenceGenerator;
    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/DERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 396
    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/DERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 397
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERSequenceGenerator;->close()V

    .line 398
    return-object v0
.end method

.method public encodeToDER()[B
    .locals 2

    .prologue
    .line 365
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->derByteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    if-ne p0, p1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v1

    .line 404
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 406
    check-cast v0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    .line 408
    .local v0, "signature":Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    iget-object v3, p0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    iget-object v4, v0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 409
    :cond_4
    iget-object v3, p0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    iget-object v4, v0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 416
    iget-object v1, p0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    .line 417
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 418
    return v0
.end method

.method public toCanonicalised()Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    sget-object v1, Lcom/google/bitcoin/core/ECKey;->HALF_CURVE_ORDER:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    .line 352
    new-instance v0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;

    iget-object v1, p0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    sget-object v2, Lcom/google/bitcoin/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/google/bitcoin/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object p0, v0

    .line 354
    .end local p0    # "this":Lcom/google/bitcoin/core/ECKey$ECDSASignature;
    :cond_0
    return-object p0
.end method

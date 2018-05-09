.class public Lcom/subgraph/orchid/crypto/TorSignature;
.super Ljava/lang/Object;
.source "TorSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;
    }
.end annotation


# static fields
.field private static final ID_SIGNATURE_BEGIN:Ljava/lang/String; = "-----BEGIN ID SIGNATURE-----"

.field private static final ID_SIGNATURE_END:Ljava/lang/String; = "-----END ID SIGNATURE-----"

.field private static final SIGNATURE_BEGIN:Ljava/lang/String; = "-----BEGIN SIGNATURE-----"

.field private static final SIGNATURE_END:Ljava/lang/String; = "-----END SIGNATURE-----"


# instance fields
.field private final digestAlgorithm:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

.field private final signatureBytes:[B


# direct methods
.method private constructor <init>([BLcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;)V
    .locals 0
    .param p1, "signatureBytes"    # [B
    .param p2, "digestAlgorithm"    # Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorSignature;->signatureBytes:[B

    .line 53
    iput-object p2, p0, Lcom/subgraph/orchid/crypto/TorSignature;->digestAlgorithm:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    .line 54
    return-void
.end method

.method public static createFromPEMBuffer(Ljava/lang/String;)Lcom/subgraph/orchid/crypto/TorSignature;
    .locals 5
    .param p0, "buffer"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 21
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-static {v1}, Lcom/subgraph/orchid/crypto/TorSignature;->nextLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "header":Ljava/lang/String;
    const-string v2, "-----BEGIN SIGNATURE-----"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-----BEGIN ID SIGNATURE-----"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    new-instance v2, Lcom/subgraph/orchid/TorParsingException;

    const-string v3, "Did not find expected signature BEGIN header"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_0
    new-instance v2, Lcom/subgraph/orchid/crypto/TorSignature;

    invoke-static {v1}, Lcom/subgraph/orchid/crypto/TorSignature;->parseBase64Data(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/subgraph/orchid/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;->DIGEST_SHA1:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    invoke-direct {v2, v3, v4}, Lcom/subgraph/orchid/crypto/TorSignature;-><init>([BLcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;)V

    return-object v2
.end method

.method static nextLine(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/BufferedReader;

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 39
    new-instance v2, Lcom/subgraph/orchid/TorParsingException;

    const-string v3, "Did not find expected signature END header"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static parseBase64Data(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3
    .param p0, "reader"    # Ljava/io/BufferedReader;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v0, "base64Data":Ljava/lang/StringBuilder;
    :goto_0
    invoke-static {p0}, Lcom/subgraph/orchid/crypto/TorSignature;->nextLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "line":Ljava/lang/String;
    const-string v2, "-----END SIGNATURE-----"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-----END ID SIGNATURE-----"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 32
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getDigestAlgorithm()Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorSignature;->digestAlgorithm:Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    return-object v0
.end method

.method public getSignatureBytes()[B
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorSignature;->signatureBytes:[B

    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorSignature;->signatureBytes:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TorSignature: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorSignature;->signatureBytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorSignature;->signatureBytes:[B

    invoke-static {v2}, Lcom/subgraph/orchid/encoders/Hex;->encode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lcom/subgraph/orchid/crypto/TorPublicKey;Lcom/subgraph/orchid/crypto/TorMessageDigest;)Z
    .locals 1
    .param p1, "publicKey"    # Lcom/subgraph/orchid/crypto/TorPublicKey;
    .param p2, "digest"    # Lcom/subgraph/orchid/crypto/TorMessageDigest;

    .prologue
    .line 62
    invoke-virtual {p1, p0, p2}, Lcom/subgraph/orchid/crypto/TorPublicKey;->verifySignature(Lcom/subgraph/orchid/crypto/TorSignature;Lcom/subgraph/orchid/crypto/TorMessageDigest;)Z

    move-result v0

    return v0
.end method

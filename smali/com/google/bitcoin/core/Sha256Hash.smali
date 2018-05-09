.class public Lcom/google/bitcoin/core/Sha256Hash;
.super Ljava/lang/Object;
.source "Sha256Hash.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final ZERO_HASH:Lcom/google/bitcoin/core/Sha256Hash;


# instance fields
.field private bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/bitcoin/core/Sha256Hash;

    const/16 v1, 0x20

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    sput-object v0, Lcom/google/bitcoin/core/Sha256Hash;->ZERO_HASH:Lcom/google/bitcoin/core/Sha256Hash;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 55
    invoke-static {p1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    .line 56
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "rawHashBytes"    # [B

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 46
    iput-object p1, p0, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    .line 48
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create([B)Lcom/google/bitcoin/core/Sha256Hash;
    .locals 4
    .param p0, "contents"    # [B

    .prologue
    .line 63
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 64
    .local v0, "digest":Ljava/security/MessageDigest;
    new-instance v2, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 65
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createDouble([B)Lcom/google/bitcoin/core/Sha256Hash;
    .locals 2
    .param p0, "contents"    # [B

    .prologue
    .line 74
    new-instance v0, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-static {p0}, Lcom/google/bitcoin/core/Utils;->doubleDigest([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    return-object v0
.end method

.method public static hashFileContents(Ljava/io/File;)Lcom/google/bitcoin/core/Sha256Hash;
    .locals 2
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 85
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/bitcoin/core/Sha256Hash;->create([B)Lcom/google/bitcoin/core/Sha256Hash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 133
    instance-of v2, p1, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v1

    .line 135
    .local v1, "thisCode":I
    check-cast p1, Lcom/google/bitcoin/core/Sha256Hash;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v0

    .line 136
    .local v0, "oCode":I
    if-le v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public duplicate()Lcom/google/bitcoin/core/Sha256Hash;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/google/bitcoin/core/Sha256Hash;

    iget-object v1, p0, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 96
    instance-of v0, p1, Lcom/google/bitcoin/core/Sha256Hash;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 97
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    check-cast p1, Lcom/google/bitcoin/core/Sha256Hash;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    const/16 v1, 0x1f

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    const/16 v2, 0x1e

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    const/16 v2, 0x1d

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    const/16 v2, 0x1c

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/bitcoin/core/Sha256Hash;->bytes:[B

    invoke-static {v0}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
.super Ljava/lang/Object;
.source "EncryptedPrivateKey.java"


# instance fields
.field private encryptedPrivateBytes:[B

.field private initialisationVector:[B


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/crypto/EncryptedPrivateKey;)V
    .locals 1
    .param p1, "encryptedPrivateKey"    # Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->initialisationVector:[B

    .line 32
    iput-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->encryptedPrivateBytes:[B

    .line 39
    invoke-virtual {p1}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->getInitialisationVector()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->setInitialisationVector([B)V

    .line 40
    invoke-virtual {p1}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->getEncryptedBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->setEncryptedPrivateBytes([B)V

    .line 41
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .param p1, "initialisationVector"    # [B
    .param p2, "encryptedPrivateKeys"    # [B

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->initialisationVector:[B

    .line 32
    iput-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->encryptedPrivateBytes:[B

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->setInitialisationVector([B)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->setEncryptedPrivateBytes([B)V

    .line 50
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->encryptedPrivateBytes:[B

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->encryptedPrivateBytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->initialisationVector:[B

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->initialisationVector:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 131
    :cond_1
    return-void
.end method

.method public clone()Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->getInitialisationVector()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->getEncryptedBytes()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;-><init>([B[B)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->clone()Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 103
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;

    .line 111
    .local v0, "other":Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    iget-object v2, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->initialisationVector:[B

    iget-object v3, v0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->initialisationVector:[B

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->encryptedPrivateBytes:[B

    iget-object v3, v0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->encryptedPrivateBytes:[B

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getEncryptedBytes()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->encryptedPrivateBytes:[B

    return-object v0
.end method

.method public getInitialisationVector()[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->initialisationVector:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->encryptedPrivateBytes:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->initialisationVector:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setEncryptedPrivateBytes([B)V
    .locals 1
    .param p1, "encryptedPrivateBytes"    # [B

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->encryptedPrivateBytes:[B

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->encryptedPrivateBytes:[B

    goto :goto_0
.end method

.method public setInitialisationVector([B)V
    .locals 3
    .param p1, "initialisationVector"    # [B

    .prologue
    const/4 v2, 0x0

    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->initialisationVector:[B

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    array-length v1, p1

    new-array v0, v1, [B

    .line 68
    .local v0, "cloneIV":[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iput-object v0, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->initialisationVector:[B

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncryptedPrivateKey [initialisationVector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->initialisationVector:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptedPrivateKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/crypto/EncryptedPrivateKey;->encryptedPrivateBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

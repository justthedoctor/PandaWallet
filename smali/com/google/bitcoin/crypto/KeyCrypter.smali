.class public interface abstract Lcom/google/bitcoin/crypto/KeyCrypter;
.super Ljava/lang/Object;
.source "KeyCrypter.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract decrypt(Lcom/google/bitcoin/crypto/EncryptedPrivateKey;Lorg/spongycastle/crypto/params/KeyParameter;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation
.end method

.method public abstract deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation
.end method

.method public abstract encrypt([BLorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/bitcoin/crypto/EncryptedPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/KeyCrypterException;
        }
    .end annotation
.end method

.method public abstract getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
.end method

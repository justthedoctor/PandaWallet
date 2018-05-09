.class public Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;
.super Ljava/lang/Object;
.source "TorTapKeyAgreement.java"

# interfaces
.implements Lcom/subgraph/orchid/crypto/TorKeyAgreement;


# static fields
.field public static final DH_LEN:I = 0x80

.field private static final DH_PARAMETER_SPEC:Ljavax/crypto/spec/DHParameterSpec;

.field public static final DH_SEC_LEN:I = 0x28

.field private static final G:Ljava/math/BigInteger;

.field private static final P1024:Ljava/math/BigInteger;

.field private static final PRIVATE_KEY_SIZE:I = 0x140


# instance fields
.field private final dh:Ljavax/crypto/KeyAgreement;

.field private final keyPair:Ljava/security/KeyPair;

.field private final onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "00FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE65381FFFFFFFFFFFFFFFF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->P1024:Ljava/math/BigInteger;

    .line 49
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->G:Ljava/math/BigInteger;

    .line 58
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    sget-object v1, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->P1024:Ljava/math/BigInteger;

    sget-object v2, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->G:Ljava/math/BigInteger;

    const/16 v3, 0x140

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    sput-object v0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->DH_PARAMETER_SPEC:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;-><init>(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/crypto/TorPublicKey;)V
    .locals 1
    .param p1, "onionKey"    # Lcom/subgraph/orchid/crypto/TorPublicKey;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->keyPair:Ljava/security/KeyPair;

    .line 71
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->createDH()Ljavax/crypto/KeyAgreement;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->dh:Ljavax/crypto/KeyAgreement;

    .line 72
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    .line 74
    return-void
.end method

.method private final createDH()Ljavax/crypto/KeyAgreement;
    .locals 3

    .prologue
    .line 151
    :try_start_0
    const-string v2, "DH"

    invoke-static {v2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 152
    .local v0, "dh":Ljavax/crypto/KeyAgreement;
    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object v0

    .line 154
    .end local v0    # "dh":Ljavax/crypto/KeyAgreement;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final generateKeyPair()Ljava/security/KeyPair;
    .locals 3

    .prologue
    .line 161
    :try_start_0
    const-string v2, "DH"

    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 162
    .local v1, "keyGen":Ljava/security/KeyPairGenerator;
    sget-object v2, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->DH_PARAMETER_SPEC:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 163
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 164
    .end local v1    # "keyGen":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static isValidPublicValue(Ljava/math/BigInteger;)Z
    .locals 4
    .param p0, "publicValue"    # Ljava/math/BigInteger;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-lt v2, v1, :cond_0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    sget-object v2, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->P1024:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    .line 128
    goto :goto_0
.end method


# virtual methods
.method public createOnionSkin()[B
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->getPublicKeyBytes()[B

    move-result-object v1

    .line 171
    .local v1, "yBytes":[B
    new-instance v0, Lcom/subgraph/orchid/crypto/HybridEncryption;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/HybridEncryption;-><init>()V

    .line 172
    .local v0, "hybrid":Lcom/subgraph/orchid/crypto/HybridEncryption;
    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    invoke-virtual {v0, v1, v2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->encrypt([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object v2

    return-object v2
.end method

.method public deriveKeysFromDHPublicAndHash(Ljava/math/BigInteger;[B[B[B)Z
    .locals 4
    .param p1, "peerPublic"    # Ljava/math/BigInteger;
    .param p2, "keyHash"    # [B
    .param p3, "keyMaterialOut"    # [B
    .param p4, "verifyHashOut"    # [B

    .prologue
    .line 187
    invoke-static {p1}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->isValidPublicValue(Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    new-instance v2, Lcom/subgraph/orchid/TorException;

    const-string v3, "Illegal DH public value"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->getSharedSecret(Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 191
    .local v1, "sharedSecret":[B
    new-instance v0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;-><init>([B)V

    .line 192
    .local v0, "kdf":Lcom/subgraph/orchid/crypto/TorKeyDerivation;
    invoke-virtual {v0, p3, p4}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->deriveKeys([B[B)V

    .line 193
    invoke-static {p4, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public deriveKeysFromHandshakeResponse([B[B[B)Z
    .locals 5
    .param p1, "handshakeResponse"    # [B
    .param p2, "keyMaterialOut"    # [B
    .param p3, "verifyHashOut"    # [B

    .prologue
    .line 177
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 178
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/16 v4, 0x80

    new-array v1, v4, [B

    .line 179
    .local v1, "dhPublic":[B
    const/16 v4, 0x14

    new-array v2, v4, [B

    .line 180
    .local v2, "keyHash":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 182
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 183
    .local v3, "peerPublic":Ljava/math/BigInteger;
    invoke-virtual {p0, v3, v2, p2, p3}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->deriveKeysFromDHPublicAndHash(Ljava/math/BigInteger;[B[B[B)Z

    move-result v4

    return v4
.end method

.method public getPublicKeyBytes()[B
    .locals 7

    .prologue
    const/16 v6, 0x80

    const/4 v5, 0x0

    .line 97
    new-array v1, v6, [B

    .line 98
    .local v1, "output":[B
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->getPublicValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 99
    .local v2, "yBytes":[B
    aget-byte v3, v2, v5

    if-nez v3, :cond_0

    array-length v3, v2

    const/16 v4, 0x81

    if-ne v3, v4, :cond_0

    .line 100
    const/4 v3, 0x1

    invoke-static {v2, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    :goto_0
    return-object v1

    .line 101
    :cond_0
    array-length v3, v2

    if-gt v3, v6, :cond_1

    .line 102
    array-length v3, v2

    rsub-int v0, v3, 0x80

    .line 103
    .local v0, "offset":I
    array-length v3, v2

    invoke-static {v2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 105
    .end local v0    # "offset":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Public value is longer than DH_LEN but not because of sign bit"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getPublicValue()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 87
    .local v0, "pubKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public getSharedSecret(Ljava/math/BigInteger;)[B
    .locals 6
    .param p1, "otherPublic"    # Ljava/math/BigInteger;

    .prologue
    .line 140
    :try_start_0
    const-string v4, "DH"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 141
    .local v1, "factory":Ljava/security/KeyFactory;
    new-instance v3, Ljavax/crypto/spec/DHPublicKeySpec;

    sget-object v4, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->P1024:Ljava/math/BigInteger;

    sget-object v5, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->G:Ljava/math/BigInteger;

    invoke-direct {v3, p1, v4, v5}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 142
    .local v3, "pub":Ljavax/crypto/spec/DHPublicKeySpec;
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 143
    .local v2, "key":Ljava/security/PublicKey;
    iget-object v4, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->dh:Ljavax/crypto/KeyAgreement;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 144
    iget-object v4, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->dh:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v4}, Ljavax/crypto/KeyAgreement;->generateSecret()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 145
    .end local v1    # "factory":Ljava/security/KeyFactory;
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "pub":Ljavax/crypto/spec/DHPublicKeySpec;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lcom/subgraph/orchid/TorException;

    invoke-direct {v4, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

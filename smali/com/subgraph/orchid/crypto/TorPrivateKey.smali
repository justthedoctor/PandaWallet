.class public Lcom/subgraph/orchid/crypto/TorPrivateKey;
.super Ljava/lang/Object;
.source "TorPrivateKey.java"


# instance fields
.field private final privateKey:Ljava/security/interfaces/RSAPrivateKey;

.field private final publicKey:Lcom/subgraph/orchid/crypto/TorPublicKey;


# direct methods
.method constructor <init>(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .param p2, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorPrivateKey;->privateKey:Ljava/security/interfaces/RSAPrivateKey;

    .line 34
    new-instance v0, Lcom/subgraph/orchid/crypto/TorPublicKey;

    invoke-direct {v0, p2}, Lcom/subgraph/orchid/crypto/TorPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPrivateKey;->publicKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    .line 35
    return-void
.end method

.method static createGenerator()Ljava/security/KeyPairGenerator;
    .locals 2

    .prologue
    .line 23
    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static generateNewKeypair()Lcom/subgraph/orchid/crypto/TorPrivateKey;
    .locals 5

    .prologue
    .line 15
    invoke-static {}, Lcom/subgraph/orchid/crypto/TorPrivateKey;->createGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 16
    .local v0, "generator":Ljava/security/KeyPairGenerator;
    const/16 v2, 0x400

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 17
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 18
    .local v1, "pair":Ljava/security/KeyPair;
    new-instance v4, Lcom/subgraph/orchid/crypto/TorPrivateKey;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v4, v2, v3}, Lcom/subgraph/orchid/crypto/TorPrivateKey;-><init>(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)V

    return-object v4
.end method


# virtual methods
.method public getPublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPrivateKey;->publicKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-object v0
.end method

.method public getRSAPrivateKey()Ljava/security/interfaces/RSAPrivateKey;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPrivateKey;->privateKey:Ljava/security/interfaces/RSAPrivateKey;

    return-object v0
.end method

.method public getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPrivateKey;->publicKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

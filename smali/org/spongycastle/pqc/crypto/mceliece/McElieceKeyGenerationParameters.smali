.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source "McElieceKeyGenerationParameters.java"


# instance fields
.field private params:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "params"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    .prologue
    .line 17
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 18
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->params:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    .line 19
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyGenerationParameters;->params:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    return-object v0
.end method

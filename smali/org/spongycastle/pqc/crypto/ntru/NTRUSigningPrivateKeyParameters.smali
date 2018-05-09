.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "NTRUSigningPrivateKeyParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    }
.end annotation


# instance fields
.field private bases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;",
            ">;"
        }
    .end annotation
.end field

.field private publicKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "params"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    if-gt v0, v1, :cond_1

    .line 54
    new-instance v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    invoke-direct {v3, p1, p2, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;-><init>(Ljava/io/InputStream;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;Z)V

    invoke-direct {p0, v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->add(Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 56
    :cond_1
    new-instance v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->getSigningParameters()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;-><init>(Ljava/io/InputStream;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;)V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->publicKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;)V
    .locals 1
    .param p2, "publicKey"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;",
            ">;",
            "Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "bases":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->publicKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    .line 64
    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "params"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;-><init>(Ljava/io/InputStream;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V

    .line 38
    return-void
.end method

.method private add(Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;)V
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 140
    if-ne p0, p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v4

    .line 144
    :cond_1
    if-nez p1, :cond_2

    move v4, v5

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_3

    move v4, v5

    .line 150
    goto :goto_0

    :cond_3
    move-object v3, p1

    .line 152
    check-cast v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    .line 153
    .local v3, "other":Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    if-nez v6, :cond_4

    .line 155
    iget-object v6, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    if-eqz v6, :cond_4

    move v4, v5

    .line 157
    goto :goto_0

    .line 160
    :cond_4
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_5

    move v4, v5

    .line 162
    goto :goto_0

    .line 164
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 166
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    .line 167
    .local v0, "basis1":Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    iget-object v6, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    .line 168
    .local v1, "basis2":Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v7, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    .line 170
    goto :goto_0

    .line 172
    :cond_6
    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v7, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    move v4, v5

    .line 174
    goto :goto_0

    .line 176
    :cond_7
    if-eqz v2, :cond_8

    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v7, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    move v4, v5

    .line 178
    goto :goto_0

    .line 180
    :cond_8
    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget-object v7, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    move v4, v5

    .line 182
    goto :goto_0

    .line 164
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getBasis(I)Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 104
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v1, v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->encode(Ljava/io/OutputStream;Z)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 107
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->publicKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 109
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getPublicKey()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->publicKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 127
    const/16 v2, 0x1f

    .line 128
    .local v2, "prime":I
    const/4 v3, 0x1

    .line 129
    .local v3, "result":I
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v3, v4, 0x1f

    .line 130
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    .line 132
    .local v0, "basis":Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 133
    goto :goto_1

    .line 129
    .end local v0    # "basis":Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->hashCode()I

    move-result v4

    goto :goto_0

    .line 134
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 122
    return-void
.end method

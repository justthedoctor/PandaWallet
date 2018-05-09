.class public Lcom/subgraph/orchid/circuits/hs/HSAuthentication;
.super Ljava/lang/Object;
.source "HSAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;
    }
.end annotation


# static fields
.field private static final BASIC_ID_LENGTH:I = 0x4


# instance fields
.field private final cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;)V
    .locals 0
    .param p1, "cookie"    # Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    .line 19
    return-void
.end method

.method private createEntry(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;
    .locals 3
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 43
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 44
    .local v0, "id":[B
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 45
    .local v1, "skey":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 47
    new-instance v2, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;

    invoke-direct {v2, v0, v1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;-><init>([B[B)V

    return-object v2
.end method

.method private decryptAuthEntry(Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;)[B
    .locals 2
    .param p1, "entry"    # Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createFromKeyBytes([B)Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object v0

    .line 101
    .local v0, "cipher":Lcom/subgraph/orchid/crypto/TorStreamCipher;
    iget-object v1, p1, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;->skey:[B

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([B)V

    .line 102
    iget-object v1, p1, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;->skey:[B

    return-object v1
.end method

.method private decryptIntroductionPointsWithBasicAuth(Ljava/nio/ByteBuffer;)[B
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    invoke-virtual {v4}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getType()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    move-result-object v4

    sget-object v5, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_BASIC:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    if-eq v4, v5, :cond_1

    .line 52
    :cond_0
    new-instance v4, Lcom/subgraph/orchid/TorParsingException;

    const-string v5, "Introduction points encrypted with \'basic\' authentication and no cookie available to decrypt"

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->readBasicEntries(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;>;"
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->readAuthIV(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 57
    .local v2, "iv":[B
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->generateAuthId([B)[B

    move-result-object v1

    .line 58
    .local v1, "id":[B
    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->findKeyInAuthEntries(Ljava/util/List;[B)[B

    move-result-object v3

    .line 60
    .local v3, "k":[B
    invoke-direct {p0, p1, v3, v2}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->decryptRemaining(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object v4

    return-object v4
.end method

.method private decryptIntroductionPointsWithStealthAuth(Ljava/nio/ByteBuffer;)[B
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getType()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    move-result-object v1

    sget-object v2, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_STEALTH:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    if-eq v1, v2, :cond_1

    .line 115
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    const-string v2, "Introduction points encrypted with \'stealth\' authentication and no cookie available to descrypt"

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_1
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->readAuthIV(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 118
    .local v0, "iv":[B
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->decryptRemaining(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object v1

    return-object v1
.end method

.method private decryptRemaining(Ljava/nio/ByteBuffer;[B[B)[B
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "key"    # [B
    .param p3, "iv"    # [B

    .prologue
    .line 106
    invoke-static {p2, p3}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createFromKeyBytesWithIV([B[B)Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object v1

    .line 107
    .local v1, "streamCipher":Lcom/subgraph/orchid/crypto/TorStreamCipher;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    .line 108
    .local v0, "remaining":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([B)V

    .line 110
    return-object v0
.end method

.method private findKeyInAuthEntries(Ljava/util/List;[B)[B
    .locals 4
    .param p2, "id"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;",
            ">;[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;

    .line 92
    .local v0, "e":Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;
    iget-object v2, v0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;->id:[B

    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->decryptAuthEntry(Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;)[B

    move-result-object v2

    return-object v2

    .line 96
    .end local v0    # "e":Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;
    :cond_1
    new-instance v2, Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;

    const-string v3, "Could not find matching cookie id for basic authentication"

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private generateAuthId([B)[B
    .locals 6
    .param p1, "iv"    # [B

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 81
    new-instance v2, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    .line 82
    .local v2, "md":Lcom/subgraph/orchid/crypto/TorMessageDigest;
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 83
    invoke-virtual {v2, p1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 84
    invoke-virtual {v2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object v0

    .line 85
    .local v0, "digest":[B
    new-array v1, v5, [B

    .line 86
    .local v1, "id":[B
    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object v1
.end method

.method private readAuthIV(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 75
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 76
    .local v0, "iv":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 77
    return-object v0
.end method

.method private readBasicEntries(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 5
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 65
    .local v0, "blockCount":I
    mul-int/lit8 v2, v0, 0x10

    .line 66
    .local v2, "entryCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->createEntry(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-object v1
.end method


# virtual methods
.method public decryptIntroductionPoints([B)[B
    .locals 5
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .line 24
    .local v1, "firstByte":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 25
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->decryptIntroductionPointsWithBasicAuth(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 27
    :goto_0
    return-object v2

    .line 26
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 27
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->decryptIntroductionPointsWithStealthAuth(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    goto :goto_0

    .line 29
    :cond_1
    new-instance v2, Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Introduction points section begins with unrecognized byte ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

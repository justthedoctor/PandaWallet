.class public Lcom/google/bitcoin/crypto/MnemonicCode;
.super Ljava/lang/Object;
.source "MnemonicCode.java"


# static fields
.field public static BIP39_ENGLISH_SHA256:Ljava/lang/String; = null

.field private static final PBKDF2_ROUNDS:I = 0x800


# instance fields
.field private wordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "ad90bf3beb7b0eb7e5acd74727dc0da96e0a280a258354e7293fb7e211ac03db"

    sput-object v0, Lcom/google/bitcoin/crypto/MnemonicCode;->BIP39_ENGLISH_SHA256:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, Lcom/google/bitcoin/crypto/MnemonicCode;

    const-string v1, "mnemonic/wordlist/english.txt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lcom/google/bitcoin/crypto/MnemonicCode;->BIP39_ENGLISH_SHA256:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/bitcoin/crypto/MnemonicCode;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .param p1, "wordstream"    # Ljava/io/InputStream;
    .param p2, "wordListDigest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/bitcoin/crypto/MnemonicCode;->wordList:Ljava/util/ArrayList;

    .line 61
    :try_start_0
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 65
    .local v4, "md":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "word":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 66
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 67
    iget-object v6, p0, Lcom/google/bitcoin/crypto/MnemonicCode;->wordList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "word":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 69
    .end local v2    # "ex":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "md":Ljava/security/MessageDigest;
    .restart local v5    # "word":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 71
    iget-object v6, p0, Lcom/google/bitcoin/crypto/MnemonicCode;->wordList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x800

    if-eq v6, v7, :cond_1

    .line 72
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "input stream did not contain 2048 words"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 75
    :cond_1
    if-eqz p2, :cond_2

    .line 76
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 77
    .local v1, "digest":[B
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 78
    .local v3, "hexdigest":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 79
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "wordlist digest mismatch"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 81
    .end local v1    # "digest":[B
    .end local v3    # "hexdigest":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static bytesToBits([B)[Z
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x1

    .line 204
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x8

    new-array v0, v3, [Z

    .line 205
    .local v0, "bits":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 206
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 207
    mul-int/lit8 v3, v1, 0x8

    add-int v5, v3, v2

    aget-byte v3, p0, v1

    rsub-int/lit8 v6, v2, 0x7

    shl-int v6, v4, v6

    and-int/2addr v3, v6

    if-eqz v3, :cond_0

    move v3, v4

    :goto_2
    aput-boolean v3, v0, v5

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 205
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "j":I
    :cond_2
    return-object v0
.end method

.method public static toSeed(Ljava/util/List;Ljava/lang/String;)[B
    .locals 4
    .param p1, "passphrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "pass":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnemonic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "salt":Ljava/lang/String;
    const/16 v2, 0x800

    const/16 v3, 0x40

    invoke-static {v0, v1, v2, v3}, Lcom/google/bitcoin/crypto/PBKDF2SHA512;->derive(Ljava/lang/String;Ljava/lang/String;II)[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public check(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/MnemonicException;
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/crypto/MnemonicCode;->toEntropy(Ljava/util/List;)[B

    .line 201
    return-void
.end method

.method public getWordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/bitcoin/crypto/MnemonicCode;->wordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toEntropy(Ljava/util/List;)[B
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/MnemonicException$MnemonicLengthException;,
            Lcom/google/bitcoin/crypto/MnemonicException$MnemonicWordException;,
            Lcom/google/bitcoin/crypto/MnemonicException$MnemonicChecksumException;
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    rem-int/lit8 v15, v15, 0x3

    if-lez v15, :cond_0

    .line 113
    new-instance v15, Lcom/google/bitcoin/crypto/MnemonicException$MnemonicLengthException;

    const-string v16, "Word list size must be multiple of three words."

    invoke-direct/range {v15 .. v16}, Lcom/google/bitcoin/crypto/MnemonicException$MnemonicLengthException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 118
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    mul-int/lit8 v3, v15, 0xb

    .line 119
    .local v3, "concatLenBits":I
    new-array v2, v3, [Z

    .line 120
    .local v2, "concatBits":[Z
    const/4 v14, 0x0

    .line 121
    .local v14, "wordindex":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 123
    .local v13, "word":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/bitcoin/crypto/MnemonicCode;->wordList:Ljava/util/ArrayList;

    invoke-static {v15, v13}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v12

    .line 124
    .local v12, "ndx":I
    if-gez v12, :cond_1

    .line 125
    new-instance v15, Lcom/google/bitcoin/crypto/MnemonicException$MnemonicWordException;

    invoke-direct {v15, v13}, Lcom/google/bitcoin/crypto/MnemonicException$MnemonicWordException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 128
    :cond_1
    const/4 v10, 0x0

    .local v10, "ii":I
    :goto_1
    const/16 v15, 0xb

    if-ge v10, v15, :cond_3

    .line 129
    mul-int/lit8 v15, v14, 0xb

    add-int v16, v15, v10

    const/4 v15, 0x1

    rsub-int/lit8 v17, v10, 0xa

    shl-int v15, v15, v17

    and-int/2addr v15, v12

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    :goto_2
    aput-boolean v15, v2, v16

    .line 128
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 129
    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    .line 130
    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 131
    goto :goto_0

    .line 133
    .end local v10    # "ii":I
    .end local v12    # "ndx":I
    .end local v13    # "word":Ljava/lang/String;
    :cond_4
    div-int/lit8 v1, v3, 0x21

    .line 134
    .local v1, "checksumLengthBits":I
    sub-int v5, v3, v1

    .line 137
    .local v5, "entropyLengthBits":I
    div-int/lit8 v15, v5, 0x8

    new-array v4, v15, [B

    .line 138
    .local v4, "entropy":[B
    const/4 v10, 0x0

    .restart local v10    # "ii":I
    :goto_3
    array-length v15, v4

    if-ge v10, v15, :cond_7

    .line 139
    const/4 v11, 0x0

    .local v11, "jj":I
    :goto_4
    const/16 v15, 0x8

    if-ge v11, v15, :cond_6

    .line 140
    mul-int/lit8 v15, v10, 0x8

    add-int/2addr v15, v11

    aget-boolean v15, v2, v15

    if-eqz v15, :cond_5

    .line 141
    aget-byte v15, v4, v10

    const/16 v16, 0x1

    rsub-int/lit8 v17, v11, 0x7

    shl-int v16, v16, v17

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v4, v10

    .line 139
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 138
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 144
    .end local v11    # "jj":I
    :cond_7
    invoke-static {v4}, Lcom/google/bitcoin/core/Sha256Hash;->create([B)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v6

    .line 145
    .local v6, "hash":[B
    invoke-static {v6}, Lcom/google/bitcoin/crypto/MnemonicCode;->bytesToBits([B)[Z

    move-result-object v7

    .line 148
    .local v7, "hashBits":[Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v1, :cond_9

    .line 149
    add-int v15, v5, v8

    aget-boolean v15, v2, v15

    aget-boolean v16, v7, v8

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 150
    new-instance v15, Lcom/google/bitcoin/crypto/MnemonicException$MnemonicChecksumException;

    invoke-direct {v15}, Lcom/google/bitcoin/crypto/MnemonicException$MnemonicChecksumException;-><init>()V

    throw v15

    .line 148
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 152
    :cond_9
    return-object v4
.end method

.method public toMnemonic([B)Ljava/util/List;
    .locals 12
    .param p1, "entropy"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/crypto/MnemonicException$MnemonicLengthException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 159
    array-length v10, p1

    rem-int/lit8 v10, v10, 0x4

    if-lez v10, :cond_0

    .line 160
    new-instance v10, Lcom/google/bitcoin/crypto/MnemonicException$MnemonicLengthException;

    const-string v11, "entropy length not multiple of 32 bits"

    invoke-direct {v10, v11}, Lcom/google/bitcoin/crypto/MnemonicException$MnemonicLengthException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 165
    :cond_0
    invoke-static {p1}, Lcom/google/bitcoin/core/Sha256Hash;->create([B)Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v3

    .line 166
    .local v3, "hash":[B
    invoke-static {v3}, Lcom/google/bitcoin/crypto/MnemonicCode;->bytesToBits([B)[Z

    move-result-object v4

    .line 168
    .local v4, "hashBits":[Z
    invoke-static {p1}, Lcom/google/bitcoin/crypto/MnemonicCode;->bytesToBits([B)[Z

    move-result-object v2

    .line 169
    .local v2, "entropyBits":[Z
    array-length v10, v2

    div-int/lit8 v0, v10, 0x20

    .line 172
    .local v0, "checksumLengthBits":I
    array-length v10, v2

    add-int/2addr v10, v0

    new-array v1, v10, [Z

    .line 173
    .local v1, "concatBits":[Z
    array-length v10, v2

    invoke-static {v2, v11, v1, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    array-length v10, v2

    invoke-static {v4, v11, v1, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v9, "words":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v10, v1

    div-int/lit8 v8, v10, 0xb

    .line 183
    .local v8, "nwords":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_3

    .line 184
    const/4 v6, 0x0

    .line 185
    .local v6, "index":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    const/16 v10, 0xb

    if-ge v7, v10, :cond_2

    .line 186
    shl-int/lit8 v6, v6, 0x1

    .line 187
    mul-int/lit8 v10, v5, 0xb

    add-int/2addr v10, v7

    aget-boolean v10, v1, v10

    if-eqz v10, :cond_1

    .line 188
    or-int/lit8 v6, v6, 0x1

    .line 185
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 190
    :cond_2
    iget-object v10, p0, Lcom/google/bitcoin/crypto/MnemonicCode;->wordList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v6    # "index":I
    .end local v7    # "j":I
    :cond_3
    return-object v9
.end method

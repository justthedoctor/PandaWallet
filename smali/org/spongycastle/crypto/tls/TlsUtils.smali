.class public Lorg/spongycastle/crypto/tls/TlsUtils;
.super Ljava/lang/Object;
.source "TlsUtils.java"


# static fields
.field public static EMPTY_BYTES:[B

.field public static final EXT_signature_algorithms:Ljava/lang/Integer;

.field static final SSL3_CONST:[[B

.field static final SSL_CLIENT:[B

.field static final SSL_SERVER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 48
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    .line 1236
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    .line 1237
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    .line 1240
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->genConst()[[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    return-void

    .line 1236
    nop

    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    .line 1237
    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B
    .locals 8
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "secret"    # [B
    .param p2, "asciiLabel"    # Ljava/lang/String;
    .param p3, "seed"    # [B
    .param p4, "size"    # I

    .prologue
    .line 830
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    .line 832
    .local v5, "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 834
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "No PRF available for SSLv3 session"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 837
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 838
    .local v1, "label":[B
    invoke-static {v1, p3}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v2

    .line 840
    .local v2, "labelSeed":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getPrfAlgorithm()I

    move-result v3

    .line 842
    .local v3, "prfAlgorithm":I
    if-nez v3, :cond_1

    .line 844
    invoke-static {p1, v1, v2, p4}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF_legacy([B[B[BI)[B

    move-result-object v0

    .line 850
    :goto_0
    return-object v0

    .line 847
    :cond_1
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->createPRFHash(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    .line 848
    .local v4, "prfDigest":Lorg/spongycastle/crypto/Digest;
    new-array v0, p4, [B

    .line 849
    .local v0, "buf":[B
    invoke-static {v4, p1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    goto :goto_0
.end method

.method static PRF_legacy([B[B[BI)[B
    .locals 8
    .param p0, "secret"    # [B
    .param p1, "label"    # [B
    .param p2, "labelSeed"    # [B
    .param p3, "size"    # I

    .prologue
    const/4 v7, 0x0

    .line 855
    array-length v6, p0

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v5, v6, 0x2

    .line 856
    .local v5, "s_half":I
    new-array v3, v5, [B

    .line 857
    .local v3, "s1":[B
    new-array v4, v5, [B

    .line 858
    .local v4, "s2":[B
    invoke-static {p0, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    array-length v6, p0

    sub-int/2addr v6, v5

    invoke-static {p0, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    new-array v0, p3, [B

    .line 862
    .local v0, "b1":[B
    new-array v1, p3, [B

    .line 863
    .local v1, "b2":[B
    new-instance v6, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v6}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-static {v6, v3, p2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 864
    new-instance v6, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v6}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-static {v6, v4, p2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 865
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 867
    aget-byte v6, v0, v2

    aget-byte v7, v1, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 869
    :cond_0
    return-object v0
.end method

.method public static addSignatureAlgorithmsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    return-void
.end method

.method static calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B
    .locals 5
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "size"    # I

    .prologue
    .line 923
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    .line 924
    .local v1, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v0

    .line 925
    .local v0, "master_secret":[B
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v3

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v2

    .line 928
    .local v2, "seed":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    invoke-static {v0, v2, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock_SSL([B[BI)[B

    move-result-object v3

    .line 933
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "key expansion"

    invoke-static {p0, v0, v3, v2, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v3

    goto :goto_0
.end method

.method static calculateKeyBlock_SSL([B[BI)[B
    .locals 11
    .param p0, "master_secret"    # [B
    .param p1, "random"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v10, 0x0

    .line 938
    new-instance v1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    .line 939
    .local v1, "md5":Lorg/spongycastle/crypto/Digest;
    new-instance v5, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v5}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 940
    .local v5, "sha1":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 941
    .local v2, "md5Size":I
    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v6, v9, [B

    .line 942
    .local v6, "shatmp":[B
    add-int v9, p2, v2

    new-array v8, v9, [B

    .line 944
    .local v8, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v3, 0x0

    .line 945
    .local v3, "pos":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 947
    sget-object v9, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v7, v9, v0

    .line 949
    .local v7, "ssl3Const":[B
    array-length v9, v7

    invoke-interface {v5, v7, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 950
    array-length v9, p0

    invoke-interface {v5, p0, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 951
    array-length v9, p1

    invoke-interface {v5, p1, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 952
    invoke-interface {v5, v6, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 954
    array-length v9, p0

    invoke-interface {v1, p0, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 955
    array-length v9, v6

    invoke-interface {v1, v6, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 956
    invoke-interface {v1, v8, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 958
    add-int/2addr v3, v2

    .line 959
    add-int/lit8 v0, v0, 0x1

    .line 960
    goto :goto_0

    .line 962
    .end local v7    # "ssl3Const":[B
    :cond_0
    new-array v4, p2, [B

    .line 963
    .local v4, "rval":[B
    invoke-static {v8, v10, v4, v10, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 964
    return-object v4
.end method

.method static calculateMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;[B)[B
    .locals 4
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "pre_master_secret"    # [B

    .prologue
    .line 969
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 970
    .local v0, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v1

    .line 972
    .local v1, "seed":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 974
    invoke-static {p1, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateMasterSecret_SSL([B[B)[B

    move-result-object v2

    .line 977
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "master secret"

    const/16 v3, 0x30

    invoke-static {p0, p1, v2, v1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v2

    goto :goto_0
.end method

.method static calculateMasterSecret_SSL([B[B)[B
    .locals 10
    .param p0, "pre_master_secret"    # [B
    .param p1, "random"    # [B

    .prologue
    const/4 v9, 0x0

    .line 982
    new-instance v1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    .line 983
    .local v1, "md5":Lorg/spongycastle/crypto/Digest;
    new-instance v5, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v5}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 984
    .local v5, "sha1":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 985
    .local v2, "md5Size":I
    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v6, v8, [B

    .line 987
    .local v6, "shatmp":[B
    mul-int/lit8 v8, v2, 0x3

    new-array v4, v8, [B

    .line 988
    .local v4, "rval":[B
    const/4 v3, 0x0

    .line 990
    .local v3, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v8, 0x3

    if-ge v0, v8, :cond_0

    .line 992
    sget-object v8, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v7, v8, v0

    .line 994
    .local v7, "ssl3Const":[B
    array-length v8, v7

    invoke-interface {v5, v7, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 995
    array-length v8, p0

    invoke-interface {v5, p0, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 996
    array-length v8, p1

    invoke-interface {v5, p1, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 997
    invoke-interface {v5, v6, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 999
    array-length v8, p0

    invoke-interface {v1, p0, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1000
    array-length v8, v6

    invoke-interface {v1, v6, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1001
    invoke-interface {v1, v4, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1003
    add-int/2addr v3, v2

    .line 990
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    .end local v7    # "ssl3Const":[B
    :cond_0
    return-object v4
.end method

.method static calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B
    .locals 4
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "asciiLabel"    # Ljava/lang/String;
    .param p2, "handshakeHash"    # [B

    .prologue
    .line 1011
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1020
    .end local p2    # "handshakeHash":[B
    :goto_0
    return-object p2

    .line 1016
    .restart local p2    # "handshakeHash":[B
    :cond_0
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    .line 1017
    .local v1, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v0

    .line 1018
    .local v0, "master_secret":[B
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getVerifyDataLength()I

    move-result v2

    .line 1020
    .local v2, "verify_data_length":I
    invoke-static {p0, v0, p1, p2, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object p2

    goto :goto_0
.end method

.method public static checkUint16(I)V
    .locals 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint16(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 72
    :cond_0
    return-void
.end method

.method public static checkUint24(I)V
    .locals 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint24(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method public static checkUint32(J)V
    .locals 2
    .param p0, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint32(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 88
    :cond_0
    return-void
.end method

.method public static checkUint48(J)V
    .locals 2
    .param p0, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint48(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method

.method public static checkUint64(J)V
    .locals 2
    .param p0, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint64(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 104
    :cond_0
    return-void
.end method

.method public static checkUint8(I)V
    .locals 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint8(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 64
    :cond_0
    return-void
.end method

.method public static checkUint8(S)V
    .locals 2
    .param p0, "i"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint8(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method

.method public static final cloneHash(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;
    .locals 2
    .param p0, "hashAlgorithm"    # S
    .param p1, "hash"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 1046
    packed-switch p0, :pswitch_data_0

    .line 1061
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/MD5Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>(Lorg/spongycastle/crypto/digests/MD5Digest;)V

    .line 1059
    :goto_0
    return-object v0

    .line 1051
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    goto :goto_0

    .line 1053
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA224Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA224Digest;)V

    goto :goto_0

    .line 1055
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA256Digest;)V

    goto :goto_0

    .line 1057
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_4
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA384Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA384Digest;)V

    goto :goto_0

    .line 1059
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA512Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA512Digest;)V

    goto :goto_0

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final clonePRFHash(ILorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;
    .locals 1
    .param p0, "prfAlgorithm"    # I
    .param p1, "hash"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 1078
    packed-switch p0, :pswitch_data_0

    .line 1083
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->cloneHash(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :goto_0
    return-object v0

    .line 1081
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    check-cast p1, Lorg/spongycastle/crypto/tls/CombinedHash;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>(Lorg/spongycastle/crypto/tls/CombinedHash;)V

    goto :goto_0

    .line 1078
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static concat([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 874
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 875
    .local v0, "c":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 876
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 877
    return-object v0
.end method

.method public static final createHash(S)Lorg/spongycastle/crypto/Digest;
    .locals 2
    .param p0, "hashAlgorithm"    # S

    .prologue
    .line 1025
    packed-switch p0, :pswitch_data_0

    .line 1040
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    .line 1038
    :goto_0
    return-object v0

    .line 1030
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    goto :goto_0

    .line 1032
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>()V

    goto :goto_0

    .line 1034
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    goto :goto_0

    .line 1036
    :pswitch_4
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    goto :goto_0

    .line 1038
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    goto :goto_0

    .line 1025
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final createPRFHash(I)Lorg/spongycastle/crypto/Digest;
    .locals 1
    .param p0, "prfAlgorithm"    # I

    .prologue
    .line 1067
    packed-switch p0, :pswitch_data_0

    .line 1072
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1070
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    goto :goto_0

    .line 1067
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B
    .locals 2
    .param p0, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 741
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->encodeSupportedSignatureAlgorithms(Ljava/util/Vector;ZLjava/io/OutputStream;)V

    .line 743
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static createTlsSigner(S)Lorg/spongycastle/crypto/tls/TlsSigner;
    .locals 2
    .param p0, "clientCertificateType"    # S

    .prologue
    .line 1223
    sparse-switch p0, :sswitch_data_0

    .line 1232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'clientCertificateType\' is not a type with signing capability"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :sswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsDSSSigner;-><init>()V

    .line 1230
    :goto_0
    return-object v0

    .line 1228
    :sswitch_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsECDSASigner;-><init>()V

    goto :goto_0

    .line 1230
    :sswitch_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    goto :goto_0

    .line 1223
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public static encodeOpaque8([B)[B
    .locals 1
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 369
    array-length v0, p0

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->prepend([BB)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeSupportedSignatureAlgorithms(Ljava/util/Vector;ZLjava/io/OutputStream;)V
    .locals 5
    .param p0, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p1, "allowAnonymous"    # Z
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    const v4, 0x8000

    if-lt v3, v4, :cond_1

    .line 777
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 782
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/lit8 v2, v3, 0x2

    .line 783
    .local v2, "length":I
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 784
    invoke-static {v2, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 785
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 787
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 788
    .local v0, "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v3

    if-nez v3, :cond_2

    .line 794
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 797
    :cond_2
    invoke-virtual {v0, p2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->encode(Ljava/io/OutputStream;)V

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    .end local v0    # "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    :cond_3
    return-void
.end method

.method public static encodeUint16ArrayWithUint16Length([I)[B
    .locals 3
    .param p0, "uints"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    array-length v2, p0

    mul-int/lit8 v0, v2, 0x2

    .line 382
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x2

    new-array v1, v2, [B

    .line 383
    .local v1, "result":[B
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([I[BI)V

    .line 384
    return-object v1
.end method

.method public static encodeUint8ArrayWithUint8Length([S)[B
    .locals 2
    .param p0, "uints"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 375
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([S[BI)V

    .line 376
    return-object v0
.end method

.method private static genConst()[[B
    .locals 5

    .prologue
    .line 1244
    const/16 v3, 0xa

    .line 1245
    .local v3, "n":I
    new-array v0, v3, [[B

    .line 1246
    .local v0, "arr":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1248
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [B

    .line 1249
    .local v1, "b":[B
    add-int/lit8 v4, v2, 0x41

    int-to-byte v4, v4

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 1250
    aput-object v1, v0, v2

    .line 1246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1252
    .end local v1    # "b":[B
    :cond_0
    return-object v0
.end method

.method static getClientCertificateType(Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/tls/Certificate;)S
    .locals 5
    .param p0, "clientCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .param p1, "serverCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1128
    const/4 v3, -0x1

    .line 1181
    :goto_0
    return v3

    .line 1131
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 1132
    .local v2, "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 1135
    .local v0, "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_0
    invoke-static {v0}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    .line 1136
    .local v1, "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1138
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    .end local v1    # "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :catch_0
    move-exception v3

    .line 1191
    :cond_1
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 1156
    .restart local v1    # "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_2
    :try_start_1
    instance-of v3, v1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz v3, :cond_3

    .line 1158
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 1159
    const/4 v3, 0x1

    goto :goto_0

    .line 1166
    :cond_3
    instance-of v3, v1, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz v3, :cond_4

    .line 1168
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 1169
    const/4 v3, 0x2

    goto :goto_0

    .line 1177
    :cond_4
    instance-of v3, v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v3, :cond_1

    .line 1179
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1181
    const/16 v3, 0x40

    goto :goto_0
.end method

.method public static getDefaultDSSSignatureAlgorithms()Ljava/util/Vector;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 658
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v0, v1, v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultECDSASignatureAlgorithms()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 663
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultRSASignatureAlgorithms()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 668
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B
    .locals 1
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "extensionType"    # Ljava/lang/Integer;

    .prologue
    .line 673
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    goto :goto_0
.end method

.method public static final getHashAlgorithmForPRFAlgorithm(I)S
    .locals 2
    .param p0, "prfAlgorithm"    # I

    .prologue
    .line 1089
    packed-switch p0, :pswitch_data_0

    .line 1098
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown PRFAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "legacy PRF not a valid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
    :pswitch_1
    const/4 v0, 0x4

    .line 1096
    :goto_0
    return v0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 1089
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getOIDForHashAlgorithm(S)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "hashAlgorithm"    # S

    .prologue
    .line 1104
    packed-switch p0, :pswitch_data_0

    .line 1119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :pswitch_0
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1117
    :goto_0
    return-object v0

    .line 1109
    :pswitch_1
    sget-object v0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1111
    :pswitch_2
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1113
    :pswitch_3
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1115
    :pswitch_4
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1117
    :pswitch_5
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getSignatureAlgorithmsExtension(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 725
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readSignatureAlgorithmsExtension([B)Ljava/util/Vector;

    move-result-object v1

    goto :goto_0
.end method

.method public static hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "extensionType"    # Ljava/lang/Integer;
    .param p2, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 680
    .local v0, "extension_data":[B
    if-nez v0, :cond_0

    .line 682
    const/4 v1, 0x0

    .line 688
    :goto_0
    return v1

    .line 684
    :cond_0
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 686
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 688
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static hasSigningCapability(S)Z
    .locals 1
    .param p0, "clientCertificateType"    # S

    .prologue
    .line 1210
    sparse-switch p0, :sswitch_data_0

    .line 1217
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1215
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1210
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method static hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V
    .locals 12
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "secret"    # [B
    .param p2, "seed"    # [B
    .param p3, "out"    # [B

    .prologue
    const/4 v11, 0x0

    .line 882
    new-instance v5, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v5, p0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 883
    .local v5, "mac":Lorg/spongycastle/crypto/macs/HMac;
    new-instance v6, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v6, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 884
    .local v6, "param":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object v0, p2

    .line 885
    .local v0, "a":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    .line 886
    .local v7, "size":I
    array-length v8, p3

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    div-int v4, v8, v7

    .line 887
    .local v4, "iterations":I
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v8

    new-array v1, v8, [B

    .line 888
    .local v1, "buf":[B
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v8

    new-array v2, v8, [B

    .line 889
    .local v2, "buf2":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 891
    invoke-virtual {v5, v6}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 892
    array-length v8, v0

    invoke-virtual {v5, v0, v11, v8}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 893
    invoke-virtual {v5, v1, v11}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 894
    move-object v0, v1

    .line 895
    invoke-virtual {v5, v6}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 896
    array-length v8, v0

    invoke-virtual {v5, v0, v11, v8}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 897
    array-length v8, p2

    invoke-virtual {v5, p2, v11, v8}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 898
    invoke-virtual {v5, v2, v11}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 899
    mul-int v8, v7, v3

    array-length v9, p3

    mul-int v10, v7, v3

    sub-int/2addr v9, v10

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v11, p3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 901
    :cond_0
    return-void
.end method

.method public static importSession([BLorg/spongycastle/crypto/tls/SessionParameters;)Lorg/spongycastle/crypto/tls/TlsSession;
    .locals 1
    .param p0, "sessionID"    # [B
    .param p1, "sessionParameters"    # Lorg/spongycastle/crypto/tls/SessionParameters;

    .prologue
    .line 693
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsSessionImpl;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/spongycastle/crypto/tls/SessionParameters;)V

    return-object v0
.end method

.method public static isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 1
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 143
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    return v0
.end method

.method public static isSignatureAlgorithmsExtensionAllowed(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2
    .param p0, "clientVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 698
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isTLSv11(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 2
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 148
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 2
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 153
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isValidUint16(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 118
    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint24(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 123
    const v0, 0xffffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint32(J)Z
    .locals 2
    .param p0, "i"    # J

    .prologue
    .line 128
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint48(J)Z
    .locals 2
    .param p0, "i"    # J

    .prologue
    .line 133
    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint64(J)Z
    .locals 1
    .param p0, "i"    # J

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidUint8(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 113
    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint8(S)Z
    .locals 1
    .param p0, "i"    # S

    .prologue
    .line 108
    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseSupportedSignatureAlgorithms(ZLjava/io/InputStream;)Ljava/util/Vector;
    .locals 7
    .param p0, "allowAnonymous"    # Z
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    .line 806
    .local v3, "length":I
    const/4 v5, 0x2

    if-lt v3, v5, :cond_0

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_1

    .line 808
    :cond_0
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v6, 0x32

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 810
    :cond_1
    div-int/lit8 v0, v3, 0x2

    .line 811
    .local v0, "count":I
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    .line 812
    .local v4, "supportedSignatureAlgorithms":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 814
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    .line 815
    .local v1, "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    if-nez p0, :cond_2

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v5

    if-nez v5, :cond_2

    .line 821
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v6, 0x2f

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 823
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 812
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 825
    .end local v1    # "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    :cond_3
    return-object v4
.end method

.method public static readASN1Object([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x32

    .line 606
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 607
    .local v0, "asn1":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 608
    .local v1, "result":Lorg/spongycastle/asn1/ASN1Primitive;
    if-nez v1, :cond_0

    .line 610
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 612
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 614
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 616
    :cond_1
    return-object v1
.end method

.method public static readAllOrNothing(ILjava/io/InputStream;)[B
    .locals 3
    .param p0, "length"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v2, 0x1

    if-ge p0, v2, :cond_1

    .line 485
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 497
    :cond_0
    :goto_0
    return-object v0

    .line 487
    :cond_1
    new-array v0, p0, [B

    .line 488
    .local v0, "buf":[B
    invoke-static {p1, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 489
    .local v1, "read":I
    if-nez v1, :cond_2

    .line 491
    const/4 v0, 0x0

    goto :goto_0

    .line 493
    :cond_2
    if-eq v1, p0, :cond_0

    .line 495
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static readDERObject([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readASN1Object([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 626
    .local v1, "result":Lorg/spongycastle/asn1/ASN1Primitive;
    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 627
    .local v0, "check":[B
    invoke-static {v0, p0}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 631
    :cond_0
    return-object v1
.end method

.method public static readFully([BLjava/io/InputStream;)V
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    array-length v0, p0

    .line 519
    .local v0, "length":I
    if-lez v0, :cond_0

    invoke-static {p1, p0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 521
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 523
    :cond_0
    return-void
.end method

.method public static readFully(ILjava/io/InputStream;)[B
    .locals 2
    .param p0, "length"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    const/4 v1, 0x1

    if-ge p0, v1, :cond_1

    .line 505
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 512
    :cond_0
    return-object v0

    .line 507
    :cond_1
    new-array v0, p0, [B

    .line 508
    .local v0, "buf":[B
    invoke-static {p1, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 510
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static readOpaque16(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    .line 536
    .local v0, "length":I
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method public static readOpaque24(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    .line 543
    .local v0, "length":I
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method public static readOpaque8(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    .line 529
    .local v0, "length":S
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method public static readSignatureAlgorithmsExtension([B)Ljava/util/Vector;
    .locals 4
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    if-nez p0, :cond_0

    .line 758
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'extensionData\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 761
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 764
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->parseSupportedSignatureAlgorithms(ZLjava/io/InputStream;)Ljava/util/Vector;

    move-result-object v1

    .line 766
    .local v1, "supported_signature_algorithms":Ljava/util/Vector;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 768
    return-object v1
.end method

.method public static readUint16(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 407
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 408
    .local v1, "i2":I
    if-gez v1, :cond_0

    .line 410
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 412
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    return v2
.end method

.method public static readUint16([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 417
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x8

    .line 418
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 419
    return v0
.end method

.method public static readUint16Array(ILjava/io/InputStream;)[I
    .locals 3
    .param p0, "count"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    new-array v1, p0, [I

    .line 561
    .local v1, "uints":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 563
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    aput v2, v1, v0

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_0
    return-object v1
.end method

.method public static readUint24(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 426
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 427
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 428
    .local v2, "i3":I
    if-gez v2, :cond_0

    .line 430
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 432
    :cond_0
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    return v3
.end method

.method public static readUint24([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 437
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x10

    .line 438
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 439
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 440
    return v0
.end method

.method public static readUint32(Ljava/io/InputStream;)J
    .locals 9
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 447
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 448
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 449
    .local v2, "i3":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 450
    .local v3, "i4":I
    if-gez v3, :cond_0

    .line 452
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 454
    :cond_0
    int-to-long v4, v0

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    int-to-long v6, v1

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    int-to-long v6, v2

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    return-wide v4
.end method

.method public static readUint48(Ljava/io/InputStream;)J
    .locals 11
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 461
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 462
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 463
    .local v2, "i3":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 464
    .local v3, "i4":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 465
    .local v4, "i5":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 466
    .local v5, "i6":I
    if-gez v5, :cond_0

    .line 468
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 470
    :cond_0
    int-to-long v6, v0

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    int-to-long v8, v1

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    int-to-long v8, v2

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    int-to-long v8, v3

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    int-to-long v8, v4

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    int-to-long v8, v5

    or-long/2addr v6, v8

    return-wide v6
.end method

.method public static readUint48([BI)J
    .locals 8
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 475
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v0

    .line 476
    .local v0, "hi":I
    add-int/lit8 v2, p1, 0x3

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v1

    .line 477
    .local v1, "lo":I
    int-to-long v2, v0

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static readUint8(Ljava/io/InputStream;)S
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 391
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 393
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 395
    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method public static readUint8([BI)S
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 400
    aget-byte v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method public static readUint8Array(ILjava/io/InputStream;)[S
    .locals 3
    .param p0, "count"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    new-array v1, p0, [S

    .line 550
    .local v1, "uints":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 552
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    aput-short v2, v1, v0

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    return-object v1
.end method

.method public static readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 578
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 579
    .local v1, "i2":I
    if-gez v1, :cond_0

    .line 581
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 583
    :cond_0
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    return-object v2
.end method

.method public static readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public static readVersionRaw(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 596
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 597
    .local v1, "i2":I
    if-gez v1, :cond_0

    .line 599
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 601
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    return v2
.end method

.method public static readVersionRaw([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method static trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V
    .locals 4
    .param p0, "handshakeHash"    # Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .param p1, "supportedSignatureAlgorithms"    # Ljava/util/Vector;

    .prologue
    .line 1196
    if-eqz p1, :cond_0

    .line 1198
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1200
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 1202
    .local v2, "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    .line 1203
    .local v0, "hashAlgorithm":S
    invoke-interface {p0, v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->trackHashAlgorithm(S)V

    .line 1198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1206
    .end local v0    # "hashAlgorithm":S
    .end local v1    # "i":I
    .end local v2    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    :cond_0
    return-void
.end method

.method static validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V
    .locals 5
    .param p0, "c"    # Lorg/spongycastle/asn1/x509/Certificate;
    .param p1, "keyUsageBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 907
    .local v1, "exts":Lorg/spongycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_0

    .line 909
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/KeyUsage;->fromExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/KeyUsage;

    move-result-object v2

    .line 910
    .local v2, "ku":Lorg/spongycastle/asn1/x509/KeyUsage;
    if-eqz v2, :cond_0

    .line 912
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/KeyUsage;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 913
    .local v0, "bits":I
    and-int v3, v0, p1

    if-eq v3, p1, :cond_0

    .line 915
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 919
    .end local v0    # "bits":I
    .end local v2    # "ku":Lorg/spongycastle/asn1/x509/KeyUsage;
    :cond_0
    return-void
.end method

.method private static vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1257
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1258
    .local v0, "v":Ljava/util/Vector;
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1259
    return-object v0
.end method

.method public static writeGMTUnixTime([BI)V
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 637
    .local v0, "t":I
    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 638
    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 639
    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 640
    add-int/lit8 v1, p1, 0x3

    int-to-byte v2, v0

    aput-byte v2, p0, v1

    .line 641
    return-void
.end method

.method public static writeOpaque16([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 281
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 282
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 283
    return-void
.end method

.method public static writeOpaque24([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint24(I)V

    .line 289
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 290
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 291
    return-void
.end method

.method public static writeOpaque8([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 273
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    .line 274
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 275
    return-void
.end method

.method public static writeUint16(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    shr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 182
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 183
    return-void
.end method

.method public static writeUint16(I[BI)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 187
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 188
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 189
    return-void
.end method

.method public static writeUint16Array([ILjava/io/OutputStream;)V
    .locals 2
    .param p0, "uints"    # [I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 333
    aget v1, p0, v0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method

.method public static writeUint16Array([I[BI)V
    .locals 2
    .param p0, "uints"    # [I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 342
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 343
    add-int/lit8 p2, p2, 0x2

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_0
    return-void
.end method

.method public static writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V
    .locals 2
    .param p0, "uints"    # [I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    array-length v1, p0

    mul-int/lit8 v0, v1, 0x2

    .line 351
    .local v0, "length":I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 352
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 353
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16Array([ILjava/io/OutputStream;)V

    .line 354
    return-void
.end method

.method public static writeUint16ArrayWithUint16Length([I[BI)V
    .locals 2
    .param p0, "uints"    # [I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    array-length v1, p0

    mul-int/lit8 v0, v1, 0x2

    .line 360
    .local v0, "length":I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 361
    invoke-static {v0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 362
    add-int/lit8 v1, p2, 0x2

    invoke-static {p0, p1, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16Array([I[BI)V

    .line 363
    return-void
.end method

.method public static writeUint24(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    shr-int/lit8 v0, p0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 195
    shr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 196
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 197
    return-void
.end method

.method public static writeUint24(I[BI)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 201
    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 202
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 203
    add-int/lit8 v0, p2, 0x2

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 204
    return-void
.end method

.method public static writeUint32(JLjava/io/OutputStream;)V
    .locals 2
    .param p0, "i"    # J
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 210
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 211
    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 212
    long-to-int v0, p0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 213
    return-void
.end method

.method public static writeUint32(J[BI)V
    .locals 3
    .param p0, "i"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 217
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 218
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 219
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 220
    add-int/lit8 v0, p3, 0x3

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 221
    return-void
.end method

.method public static writeUint48(JLjava/io/OutputStream;)V
    .locals 2
    .param p0, "i"    # J
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 227
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 228
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 229
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 230
    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 231
    long-to-int v0, p0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 232
    return-void
.end method

.method public static writeUint48(J[BI)V
    .locals 3
    .param p0, "i"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 236
    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 237
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 238
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 239
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 240
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 241
    add-int/lit8 v0, p3, 0x5

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 242
    return-void
.end method

.method public static writeUint64(JLjava/io/OutputStream;)V
    .locals 2
    .param p0, "i"    # J
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 248
    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 249
    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 250
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 251
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 252
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 253
    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 254
    long-to-int v0, p0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 255
    return-void
.end method

.method public static writeUint64(J[BI)V
    .locals 3
    .param p0, "i"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 259
    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 260
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 261
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 262
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 263
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 264
    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 265
    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 266
    add-int/lit8 v0, p3, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 267
    return-void
.end method

.method public static writeUint8(ILjava/io/OutputStream;)V
    .locals 0
    .param p0, "i"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 166
    return-void
.end method

.method public static writeUint8(I[BI)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 175
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 176
    return-void
.end method

.method public static writeUint8(SLjava/io/OutputStream;)V
    .locals 0
    .param p0, "i"    # S
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 160
    return-void
.end method

.method public static writeUint8(S[BI)V
    .locals 1
    .param p0, "i"    # S
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 170
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 171
    return-void
.end method

.method public static writeUint8Array([SLjava/io/OutputStream;)V
    .locals 2
    .param p0, "uints"    # [S
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 298
    aget-short v1, p0, v0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method public static writeUint8Array([S[BI)V
    .locals 2
    .param p0, "uints"    # [S
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 307
    aget-short v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 308
    add-int/lit8 p2, p2, 0x1

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-void
.end method

.method public static writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V
    .locals 1
    .param p0, "uints"    # [S
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 316
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    .line 317
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8Array([SLjava/io/OutputStream;)V

    .line 318
    return-void
.end method

.method public static writeUint8ArrayWithUint8Length([S[BI)V
    .locals 1
    .param p0, "uints"    # [S
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 324
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(I[BI)V

    .line 325
    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8Array([S[BI)V

    .line 326
    return-void
.end method

.method public static writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 647
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 648
    return-void
.end method

.method public static writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V
    .locals 2
    .param p0, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 652
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 653
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 654
    return-void
.end method

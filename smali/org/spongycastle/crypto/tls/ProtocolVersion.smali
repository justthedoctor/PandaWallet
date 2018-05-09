.class public final Lorg/spongycastle/crypto/tls/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"


# static fields
.field public static final DTLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final DTLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final SSLv3:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x300

    const-string v2, "SSL 3.0"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 8
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x301

    const-string v2, "TLS 1.0"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 9
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x302

    const-string v2, "TLS 1.1"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 10
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x303

    const-string v2, "TLS 1.2"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 11
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const v1, 0xfeff

    const-string v2, "DTLS 1.0"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 12
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const v1, 0xfefd

    const-string v2, "DTLS 1.2"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "v"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    .line 20
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 2
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    sparse-switch p0, :sswitch_data_0

    .line 118
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 97
    :sswitch_0
    packed-switch p1, :pswitch_data_0

    .line 109
    :sswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_0
    goto :goto_0

    .line 114
    :pswitch_1
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    :goto_1
    return-object v0

    .line 100
    :pswitch_2
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_1

    .line 102
    :pswitch_3
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_1

    .line 104
    :pswitch_4
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_1

    .line 106
    :pswitch_5
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_1

    .line 112
    :pswitch_6
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_1

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xfe -> :sswitch_1
    .end sparse-switch

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 109
    :pswitch_data_1
    .packed-switch 0xfd
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 83
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    .end local p0    # "this":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "this":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_0
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-ne p0, v0, :cond_1

    .line 56
    sget-object p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    .line 58
    :cond_1
    sget-object p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_0
.end method

.method public getFullVersion()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public isDTLS()Z
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 5
    .param p1, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v3

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 68
    :goto_0
    return v2

    .line 67
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v3

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v4

    sub-int v0, v3, v4

    .line 68
    .local v0, "diffMinorVersion":I
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-eqz v3, :cond_3

    if-gtz v0, :cond_2

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    if-gez v0, :cond_1

    move v1, v2

    goto :goto_1
.end method

.method public isLaterVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 5
    .param p1, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v3

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 78
    :goto_0
    return v2

    .line 77
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v3

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v4

    sub-int v0, v3, v4

    .line 78
    .local v0, "diffMinorVersion":I
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-eqz v3, :cond_3

    if-lez v0, :cond_2

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    if-ltz v0, :cond_1

    move v1, v2

    goto :goto_1
.end method

.method public isSSL()Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0
.end method

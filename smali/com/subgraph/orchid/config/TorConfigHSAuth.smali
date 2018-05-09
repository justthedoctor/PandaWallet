.class public Lcom/subgraph/orchid/config/TorConfigHSAuth;
.super Ljava/lang/Object;
.source "TorConfigHSAuth.java"


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/config/TorConfigHSAuth;->map:Ljava/util/Map;

    return-void
.end method

.method private createFromBase64(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
    .locals 7
    .param p1, "b64"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x16

    if-eq v4, v5, :cond_0

    .line 41
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 43
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "A="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/subgraph/orchid/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 44
    .local v1, "decoded":[B
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v1, v4

    .line 45
    .local v3, "lastByte":B
    and-int/lit16 v4, v3, 0xff

    shr-int/lit8 v2, v4, 0x4

    .line 46
    .local v2, "flag":I
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    new-array v0, v4, [B

    .line 47
    .local v0, "cookie":[B
    array-length v4, v0

    invoke-static {v1, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    packed-switch v2, :pswitch_data_0

    .line 54
    new-instance v4, Lcom/subgraph/orchid/TorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal cookie descriptor with flag value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :pswitch_0
    new-instance v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    sget-object v5, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_BASIC:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    invoke-direct {v4, v5, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;-><init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;[B)V

    .line 52
    :goto_0
    return-object v4

    :pswitch_1
    new-instance v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    sget-object v5, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_STEALTH:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    invoke-direct {v4, v5, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;-><init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;[B)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private validateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v3, ".onion"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "k":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/subgraph/orchid/data/Base32;->base32Decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 26
    .local v0, "decoded":[B
    array-length v3, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 27
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v0    # "decoded":[B
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Lcom/subgraph/orchid/TorException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1    # "e":Lcom/subgraph/orchid/TorException;
    .end local v2    # "k":Ljava/lang/String;
    :cond_0
    move-object v2, p1

    .line 23
    goto :goto_0

    .line 29
    .restart local v0    # "decoded":[B
    .restart local v2    # "k":Ljava/lang/String;
    :cond_1
    return-object v2
.end method


# virtual methods
.method add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "b64Value"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/config/TorConfigHSAuth;->createFromBase64(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object v0

    .line 18
    .local v0, "cookie":Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigHSAuth;->validateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "k":Ljava/lang/String;
    iget-object v2, p0, Lcom/subgraph/orchid/config/TorConfigHSAuth;->map:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method

.method get(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigHSAuth;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigHSAuth;->validateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    return-object v0
.end method

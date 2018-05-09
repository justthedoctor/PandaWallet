.class public Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
.super Ljava/lang/Object;
.source "HSDescriptorCookie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$1;,
        Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;
    }
.end annotation


# instance fields
.field private final type:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

.field private final value:[B


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;[B)V
    .locals 0
    .param p1, "type"    # Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;
    .param p2, "value"    # [B

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->type:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    .line 12
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->value:[B

    .line 13
    return-void
.end method


# virtual methods
.method public getAuthTypeByte()B
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$1;->$SwitchMap$com$subgraph$orchid$circuits$hs$HSDescriptorCookie$CookieType:[I

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->type:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 18
    :pswitch_0
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->type:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->value:[B

    return-object v0
.end method

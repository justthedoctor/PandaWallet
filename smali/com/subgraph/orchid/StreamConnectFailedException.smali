.class public Lcom/subgraph/orchid/StreamConnectFailedException;
.super Ljava/lang/Exception;
.source "StreamConnectFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0x7075ab2c27e96b59L


# instance fields
.field private final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    iput p1, p0, Lcom/subgraph/orchid/StreamConnectFailedException;->reason:I

    .line 11
    return-void
.end method

.method private static isRetryableReason(I)Z
    .locals 1
    .param p0, "reasonCode"    # I

    .prologue
    .line 23
    packed-switch p0, :pswitch_data_0

    .line 32
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 30
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/subgraph/orchid/StreamConnectFailedException;->reason:I

    return v0
.end method

.method public isReasonRetryable()Z
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/subgraph/orchid/StreamConnectFailedException;->reason:I

    invoke-static {v0}, Lcom/subgraph/orchid/StreamConnectFailedException;->isRetryableReason(I)Z

    move-result v0

    return v0
.end method

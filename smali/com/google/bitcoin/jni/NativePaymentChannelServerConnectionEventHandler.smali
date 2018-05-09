.class public Lcom/google/bitcoin/jni/NativePaymentChannelServerConnectionEventHandler;
.super Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;
.source "NativePaymentChannelServerConnectionEventHandler.java"


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public native channelClosed(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
.end method

.method public native channelOpen(Lcom/google/bitcoin/core/Sha256Hash;)V
.end method

.method public native paymentIncrease(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
.end method

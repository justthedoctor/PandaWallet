.class public interface abstract Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$ServerConnection;
.super Ljava/lang/Object;
.source "PaymentChannelServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServerConnection"
.end annotation


# virtual methods
.method public abstract channelOpen(Lcom/google/bitcoin/core/Sha256Hash;)V
.end method

.method public abstract destroyConnection(Lcom/google/bitcoin/protocols/channels/PaymentChannelCloseException$CloseReason;)V
.end method

.method public abstract paymentIncrease(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
.end method

.method public abstract sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
.end method

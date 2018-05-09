.class public interface abstract Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient;
.super Ljava/lang/Object;
.source "IPaymentChannelClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$Factory;,
        Lcom/google/bitcoin/protocols/channels/IPaymentChannelClient$ClientConnection;
    }
.end annotation


# virtual methods
.method public abstract connectionClosed()V
.end method

.method public abstract connectionOpen()V
.end method

.method public abstract incrementPayment(Ljava/math/BigInteger;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/channels/ValueOutOfRangeException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract receiveMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation
.end method

.method public abstract settle()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

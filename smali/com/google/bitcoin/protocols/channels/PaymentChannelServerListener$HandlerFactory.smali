.class public interface abstract Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HandlerFactory"
.end annotation


# virtual methods
.method public abstract onNewConnection(Ljava/net/SocketAddress;)Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

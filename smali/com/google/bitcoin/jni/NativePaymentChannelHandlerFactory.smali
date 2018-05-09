.class public Lcom/google/bitcoin/jni/NativePaymentChannelHandlerFactory;
.super Ljava/lang/Object;
.source "NativePaymentChannelHandlerFactory.java"

# interfaces
.implements Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onNewConnection(Ljava/net/SocketAddress;)Lcom/google/bitcoin/protocols/channels/ServerConnectionEventHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

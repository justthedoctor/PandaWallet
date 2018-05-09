.class public Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;,
        Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;
    }
.end annotation


# instance fields
.field private final broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

.field private final eventHandlerFactory:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;

.field private final minAcceptedChannelSize:Ljava/math/BigInteger;

.field private server:Lcom/google/bitcoin/net/NioServer;

.field private final timeoutSeconds:I

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/TransactionBroadcaster;Lcom/google/bitcoin/core/Wallet;ILjava/math/BigInteger;Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;)V
    .locals 1
    .param p1, "broadcaster"    # Lcom/google/bitcoin/core/TransactionBroadcaster;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p3, "timeoutSeconds"    # I
    .param p4, "minAcceptedChannelSize"    # Ljava/math/BigInteger;
    .param p5, "eventHandlerFactory"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Wallet;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 167
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionBroadcaster;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    .line 168
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->eventHandlerFactory:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;

    .line 169
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->minAcceptedChannelSize:Ljava/math/BigInteger;

    .line 170
    iput p3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->timeoutSeconds:I

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)Lcom/google/bitcoin/core/TransactionBroadcaster;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->broadcaster:Lcom/google/bitcoin/core/TransactionBroadcaster;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)Lcom/google/bitcoin/core/Wallet;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->wallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->minAcceptedChannelSize:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->eventHandlerFactory:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$HandlerFactory;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    .prologue
    .line 42
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->timeoutSeconds:I

    return v0
.end method


# virtual methods
.method public bindAndStart(I)V
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/google/bitcoin/net/NioServer;

    new-instance v1, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$1;

    invoke-direct {v1, p0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$1;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)V

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/net/NioServer;-><init>(Lcom/google/bitcoin/net/StreamParserFactory;Ljava/net/InetSocketAddress;)V

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->server:Lcom/google/bitcoin/net/NioServer;

    .line 146
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->server:Lcom/google/bitcoin/net/NioServer;

    invoke-virtual {v0}, Lcom/google/bitcoin/net/NioServer;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 147
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->server:Lcom/google/bitcoin/net/NioServer;

    invoke-virtual {v0}, Lcom/google/bitcoin/net/NioServer;->awaitRunning()V

    .line 148
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->server:Lcom/google/bitcoin/net/NioServer;

    invoke-virtual {v0}, Lcom/google/bitcoin/net/NioServer;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 182
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->server:Lcom/google/bitcoin/net/NioServer;

    invoke-virtual {v0}, Lcom/google/bitcoin/net/NioServer;->awaitTerminated()V

    .line 183
    return-void
.end method

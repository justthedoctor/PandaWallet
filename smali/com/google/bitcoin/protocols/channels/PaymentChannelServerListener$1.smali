.class Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$1;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"

# interfaces
.implements Lcom/google/bitcoin/net/StreamParserFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->bindAndStart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewParser(Ljava/net/InetAddress;I)Lcom/google/bitcoin/net/ProtobufParser;
    .locals 4
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 143
    new-instance v0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;

    invoke-static {v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;->access$800(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;-><init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;I)V

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$300(Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lcom/google/bitcoin/net/ProtobufParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNewParser(Ljava/net/InetAddress;I)Lcom/google/bitcoin/net/StreamParser;
    .locals 1
    .param p1, "x0"    # Ljava/net/InetAddress;
    .param p2, "x1"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServerListener$1;->getNewParser(Ljava/net/InetAddress;I)Lcom/google/bitcoin/net/ProtobufParser;

    move-result-object v0

    return-object v0
.end method

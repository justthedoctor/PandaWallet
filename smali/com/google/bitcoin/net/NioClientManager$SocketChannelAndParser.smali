.class Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;
.super Ljava/lang/Object;
.source "NioClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/net/NioClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketChannelAndParser"
.end annotation


# instance fields
.field parser:Lcom/google/bitcoin/net/StreamParser;

.field sc:Ljava/nio/channels/SocketChannel;

.field final synthetic this$0:Lcom/google/bitcoin/net/NioClientManager;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/net/NioClientManager;Ljava/nio/channels/SocketChannel;Lcom/google/bitcoin/net/StreamParser;)V
    .locals 0
    .param p2, "sc"    # Ljava/nio/channels/SocketChannel;
    .param p3, "parser"    # Lcom/google/bitcoin/net/StreamParser;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;->this$0:Lcom/google/bitcoin/net/NioClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;->sc:Ljava/nio/channels/SocketChannel;

    iput-object p3, p0, Lcom/google/bitcoin/net/NioClientManager$SocketChannelAndParser;->parser:Lcom/google/bitcoin/net/StreamParser;

    return-void
.end method

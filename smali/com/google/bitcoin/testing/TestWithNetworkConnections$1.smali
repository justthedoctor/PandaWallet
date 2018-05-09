.class Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;
.super Ljava/lang/Object;
.source "TestWithNetworkConnections.java"

# interfaces
.implements Lcom/google/bitcoin/net/StreamParserFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/testing/TestWithNetworkConnections;->startPeerServer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/testing/TestWithNetworkConnections;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/testing/TestWithNetworkConnections;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;->this$0:Lcom/google/bitcoin/testing/TestWithNetworkConnections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewParser(Ljava/net/InetAddress;I)Lcom/google/bitcoin/net/StreamParser;
    .locals 2
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$1$1;

    iget-object v1, p0, Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;->this$0:Lcom/google/bitcoin/testing/TestWithNetworkConnections;

    iget-object v1, v1, Lcom/google/bitcoin/testing/TestWithNetworkConnections;->unitTestParams:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v0, p0, v1}, Lcom/google/bitcoin/testing/TestWithNetworkConnections$1$1;-><init>(Lcom/google/bitcoin/testing/TestWithNetworkConnections$1;Lcom/google/bitcoin/core/NetworkParameters;)V

    return-object v0
.end method

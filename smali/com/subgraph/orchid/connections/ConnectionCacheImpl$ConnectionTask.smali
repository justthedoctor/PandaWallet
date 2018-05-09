.class Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;
.super Ljava/lang/Object;
.source "ConnectionCacheImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/connections/ConnectionCacheImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/subgraph/orchid/connections/ConnectionImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final isDirectoryConnection:Z

.field private final router:Lcom/subgraph/orchid/Router;

.field final synthetic this$0:Lcom/subgraph/orchid/connections/ConnectionCacheImpl;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;Lcom/subgraph/orchid/Router;Z)V
    .locals 0
    .param p2, "router"    # Lcom/subgraph/orchid/Router;
    .param p3, "isDirectoryConnection"    # Z

    .prologue
    .line 40
    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;->this$0:Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;->router:Lcom/subgraph/orchid/Router;

    .line 42
    iput-boolean p3, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;->isDirectoryConnection:Z

    .line 43
    return-void
.end method


# virtual methods
.method public call()Lcom/subgraph/orchid/connections/ConnectionImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;->this$0:Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    invoke-static {v1}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->access$000(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Lcom/subgraph/orchid/connections/ConnectionSocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->createSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    .line 47
    .local v2, "socket":Ljavax/net/ssl/SSLSocket;
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;->this$0:Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    invoke-static {v1}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->access$100(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Lcom/subgraph/orchid/TorConfig;

    move-result-object v1

    iget-object v3, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;->router:Lcom/subgraph/orchid/Router;

    iget-object v4, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;->this$0:Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    invoke-static {v4}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;->access$200(Lcom/subgraph/orchid/connections/ConnectionCacheImpl;)Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    move-result-object v4

    iget-boolean v5, p0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;->isDirectoryConnection:Z

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/connections/ConnectionImpl;-><init>(Lcom/subgraph/orchid/TorConfig;Ljavax/net/ssl/SSLSocket;Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/circuits/TorInitializationTracker;Z)V

    .line 48
    .local v0, "conn":Lcom/subgraph/orchid/connections/ConnectionImpl;
    invoke-virtual {v0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->connect()V

    .line 49
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl$ConnectionTask;->call()Lcom/subgraph/orchid/connections/ConnectionImpl;

    move-result-object v0

    return-object v0
.end method

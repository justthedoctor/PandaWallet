.class Lcom/google/bitcoin/net/discovery/TorDiscovery$2;
.super Ljava/lang/Object;
.source "TorDiscovery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/net/discovery/TorDiscovery;->lookupAddresses(JLjava/util/concurrent/TimeUnit;Ljava/util/List;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/net/discovery/TorDiscovery;

.field final synthetic val$circuit:Lcom/subgraph/orchid/Circuit;

.field final synthetic val$seed:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/net/discovery/TorDiscovery;Lcom/subgraph/orchid/Circuit;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery$2;->this$0:Lcom/google/bitcoin/net/discovery/TorDiscovery;

    iput-object p2, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery$2;->val$circuit:Lcom/subgraph/orchid/Circuit;

    iput-object p3, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery$2;->val$seed:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;

    iget-object v1, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery$2;->val$circuit:Lcom/subgraph/orchid/Circuit;

    invoke-interface {v1}, Lcom/subgraph/orchid/Circuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/subgraph/orchid/CircuitNode;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v1

    iget-object v2, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery$2;->this$0:Lcom/google/bitcoin/net/discovery/TorDiscovery;

    iget-object v3, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery$2;->val$circuit:Lcom/subgraph/orchid/Circuit;

    iget-object v4, p0, Lcom/google/bitcoin/net/discovery/TorDiscovery$2;->val$seed:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/bitcoin/net/discovery/TorDiscovery;->access$100(Lcom/google/bitcoin/net/discovery/TorDiscovery;Lcom/subgraph/orchid/Circuit;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;-><init>(Lcom/subgraph/orchid/Router;Ljava/net/InetAddress;)V

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
    .line 189
    invoke-virtual {p0}, Lcom/google/bitcoin/net/discovery/TorDiscovery$2;->call()Lcom/google/bitcoin/net/discovery/TorDiscovery$Lookup;

    move-result-object v0

    return-object v0
.end method

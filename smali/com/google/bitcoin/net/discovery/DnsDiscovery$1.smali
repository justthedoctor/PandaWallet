.class Lcom/google/bitcoin/net/discovery/DnsDiscovery$1;
.super Ljava/lang/Object;
.source "DnsDiscovery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/net/discovery/DnsDiscovery;->getPeers(JLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/net/discovery/DnsDiscovery;

.field final synthetic val$seed:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/net/discovery/DnsDiscovery;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/bitcoin/net/discovery/DnsDiscovery$1;->this$0:Lcom/google/bitcoin/net/discovery/DnsDiscovery;

    iput-object p2, p0, Lcom/google/bitcoin/net/discovery/DnsDiscovery$1;->val$seed:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/bitcoin/net/discovery/DnsDiscovery$1;->call()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/bitcoin/net/discovery/DnsDiscovery$1;->val$seed:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

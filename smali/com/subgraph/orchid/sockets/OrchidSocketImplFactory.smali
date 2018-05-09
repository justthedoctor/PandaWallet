.class public Lcom/subgraph/orchid/sockets/OrchidSocketImplFactory;
.super Ljava/lang/Object;
.source "OrchidSocketImplFactory.java"

# interfaces
.implements Ljava/net/SocketImplFactory;


# instance fields
.field private final torClient:Lcom/subgraph/orchid/TorClient;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/TorClient;)V
    .locals 0
    .param p1, "torClient"    # Lcom/subgraph/orchid/TorClient;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImplFactory;->torClient:Lcom/subgraph/orchid/TorClient;

    .line 13
    return-void
.end method


# virtual methods
.method public createSocketImpl()Ljava/net/SocketImpl;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImplFactory;->torClient:Lcom/subgraph/orchid/TorClient;

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;-><init>(Lcom/subgraph/orchid/TorClient;)V

    return-object v0
.end method

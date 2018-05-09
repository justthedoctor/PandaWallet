.class Lorg/litecoin/LitecoinPeerDBDiscovery$PeerGroupWrapper;
.super Lcom/google/bitcoin/core/PeerGroup;
.source "LitecoinPeerDBDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/litecoin/LitecoinPeerDBDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeerGroupWrapper"
.end annotation


# instance fields
.field params:Lcom/google/bitcoin/core/NetworkParameters;

.field private parent:Lcom/google/bitcoin/core/PeerGroup;


# direct methods
.method private constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/PeerGroup;)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "peerGroup"    # Lcom/google/bitcoin/core/PeerGroup;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/PeerGroup;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 77
    iput-object p1, p0, Lorg/litecoin/LitecoinPeerDBDiscovery$PeerGroupWrapper;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 78
    iput-object p2, p0, Lorg/litecoin/LitecoinPeerDBDiscovery$PeerGroupWrapper;->parent:Lcom/google/bitcoin/core/PeerGroup;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/PeerGroup;Lorg/litecoin/LitecoinPeerDBDiscovery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "x1"    # Lcom/google/bitcoin/core/PeerGroup;
    .param p3, "x2"    # Lorg/litecoin/LitecoinPeerDBDiscovery$1;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/litecoin/LitecoinPeerDBDiscovery$PeerGroupWrapper;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/PeerGroup;)V

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/google/bitcoin/core/PeerEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/litecoin/LitecoinPeerDBDiscovery$PeerGroupWrapper;->parent:Lcom/google/bitcoin/core/PeerGroup;

    new-instance v1, Lorg/litecoin/LitecoinPeerDBDiscovery$WrappedEventListener;

    iget-object v2, p0, Lorg/litecoin/LitecoinPeerDBDiscovery$PeerGroupWrapper;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v1, v2, p1}, Lorg/litecoin/LitecoinPeerDBDiscovery$WrappedEventListener;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/PeerEventListener;)V

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/PeerGroup;->addEventListener(Lcom/google/bitcoin/core/PeerEventListener;)V

    .line 83
    return-void
.end method

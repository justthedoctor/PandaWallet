.class Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;
.super Ljava/lang/Object;
.source "CircuitManagerImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/CircuitBuildHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryCircuitResult"
.end annotation


# instance fields
.field private isFailed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/subgraph/orchid/circuits/CircuitManagerImpl$1;

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;-><init>()V

    return-void
.end method


# virtual methods
.method public circuitBuildCompleted(Lcom/subgraph/orchid/Circuit;)V
    .locals 0
    .param p1, "circuit"    # Lcom/subgraph/orchid/Circuit;

    .prologue
    .line 272
    return-void
.end method

.method public circuitBuildFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;->isFailed:Z

    .line 280
    return-void
.end method

.method public connectionCompleted(Lcom/subgraph/orchid/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/subgraph/orchid/Connection;

    .prologue
    .line 270
    return-void
.end method

.method public connectionFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;->isFailed:Z

    .line 276
    return-void
.end method

.method isSuccessful()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;->isFailed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nodeAdded(Lcom/subgraph/orchid/CircuitNode;)V
    .locals 0
    .param p1, "node"    # Lcom/subgraph/orchid/CircuitNode;

    .prologue
    .line 271
    return-void
.end method

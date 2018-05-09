.class Lcom/subgraph/orchid/circuits/CircuitCreationTask$4;
.super Ljava/lang/Object;
.source "CircuitCreationTask.java"

# interfaces
.implements Lcom/subgraph/orchid/CircuitBuildHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/CircuitCreationTask;->createInternalCircuitBuildHandler()Lcom/subgraph/orchid/CircuitBuildHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$4;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public circuitBuildCompleted(Lcom/subgraph/orchid/Circuit;)V
    .locals 3
    .param p1, "circuit"    # Lcom/subgraph/orchid/Circuit;

    .prologue
    .line 286
    invoke-static {}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal circuit build completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$4;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$200(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 288
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$4;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$400(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    move-result-object v0

    check-cast p1, Lcom/subgraph/orchid/InternalCircuit;

    .end local p1    # "circuit":Lcom/subgraph/orchid/Circuit;
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->addCleanInternalCircuit(Lcom/subgraph/orchid/InternalCircuit;)V

    .line 289
    return-void
.end method

.method public circuitBuildFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Circuit build failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$4;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$400(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->decrementPendingInternalCircuitCount()V

    .line 283
    return-void
.end method

.method public connectionCompleted(Lcom/subgraph/orchid/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/subgraph/orchid/Connection;

    .prologue
    .line 277
    invoke-static {}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Circuit connection completed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public connectionFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static {}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Circuit connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$4;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$400(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->decrementPendingInternalCircuitCount()V

    .line 274
    return-void
.end method

.method public nodeAdded(Lcom/subgraph/orchid/CircuitNode;)V
    .locals 3
    .param p1, "node"    # Lcom/subgraph/orchid/CircuitNode;

    .prologue
    .line 268
    invoke-static {}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node added to internal circuit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 269
    return-void
.end method

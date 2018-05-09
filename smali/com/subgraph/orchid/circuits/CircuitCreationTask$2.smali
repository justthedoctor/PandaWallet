.class Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;
.super Ljava/lang/Object;
.source "CircuitCreationTask.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/CircuitCreationTask;->countCircuitsSupportingTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

.field final synthetic val$needClean:Z

.field final synthetic val$target:Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;ZLcom/subgraph/orchid/data/exitpolicy/ExitTarget;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    iput-boolean p2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;->val$needClean:Z

    iput-object p3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;->val$target:Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Circuit;)Z
    .locals 6
    .param p1, "circuit"    # Lcom/subgraph/orchid/Circuit;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    instance-of v5, p1, Lcom/subgraph/orchid/ExitCircuit;

    if-nez v5, :cond_0

    .line 187
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 184
    check-cast v0, Lcom/subgraph/orchid/ExitCircuit;

    .line 185
    .local v0, "ec":Lcom/subgraph/orchid/ExitCircuit;
    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->isPending()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move v2, v4

    .line 186
    .local v2, "pendingOrConnected":Z
    :goto_1
    iget-boolean v5, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;->val$needClean:Z

    if-eqz v5, :cond_2

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->isClean()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v1, v4

    .line 187
    .local v1, "isCleanIfNeeded":Z
    :goto_2
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;->val$target:Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;

    invoke-interface {v0, v5}, Lcom/subgraph/orchid/ExitCircuit;->canHandleExitTo(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_3
    move v3, v4

    goto :goto_0

    .end local v1    # "isCleanIfNeeded":Z
    .end local v2    # "pendingOrConnected":Z
    :cond_3
    move v2, v3

    .line 185
    goto :goto_1

    .restart local v2    # "pendingOrConnected":Z
    :cond_4
    move v1, v3

    .line 186
    goto :goto_2

    .restart local v1    # "isCleanIfNeeded":Z
    :cond_5
    move v4, v3

    .line 187
    goto :goto_3
.end method

.class Lcom/subgraph/orchid/circuits/CircuitCreationTask$1;
.super Ljava/lang/Object;
.source "CircuitCreationTask.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/CircuitCreationTask;->expireOldCircuits()V
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
    .line 108
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$1;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Circuit;)Z
    .locals 2
    .param p1, "circuit"    # Lcom/subgraph/orchid/Circuit;

    .prologue
    .line 111
    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->isMarkedForClose()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->getSecondsDirty()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

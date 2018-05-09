.class Lcom/subgraph/orchid/circuits/guards/EntryGuards$1;
.super Ljava/lang/Object;
.source "EntryGuards.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/path/RouterFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/guards/EntryGuards;->chooseNewGuard(Ljava/util/Set;)Lcom/subgraph/orchid/Router;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

.field final synthetic val$excluded:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/guards/EntryGuards;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards$1;->this$0:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards$1;->val$excluded:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Router;)Z
    .locals 1
    .param p1, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 218
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isPossibleGuard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards$1;->val$excluded:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

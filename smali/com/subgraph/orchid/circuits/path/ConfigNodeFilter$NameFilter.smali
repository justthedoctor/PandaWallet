.class Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$NameFilter;
.super Ljava/lang/Object;
.source "ConfigNodeFilter.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/path/RouterFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameFilter"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$NameFilter;->name:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Router;)Z
    .locals 2
    .param p1, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$NameFilter;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

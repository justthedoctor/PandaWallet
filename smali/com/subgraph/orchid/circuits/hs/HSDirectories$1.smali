.class Lcom/subgraph/orchid/circuits/hs/HSDirectories$1;
.super Ljava/lang/Object;
.source "HSDirectories.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/hs/HSDirectories;->refreshFromDirectory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/subgraph/orchid/Router;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/hs/HSDirectories;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/hs/HSDirectories;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories$1;->this$0:Lcom/subgraph/orchid/circuits/hs/HSDirectories;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Router;)I
    .locals 3
    .param p1, "r1"    # Lcom/subgraph/orchid/Router;
    .param p2, "r2"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 95
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "s1":Ljava/lang/String;
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "s2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, Lcom/subgraph/orchid/Router;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/subgraph/orchid/Router;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/circuits/hs/HSDirectories$1;->compare(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Router;)I

    move-result v0

    return v0
.end method

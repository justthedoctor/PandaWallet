.class public interface abstract Lcom/subgraph/orchid/InternalCircuit;
.super Ljava/lang/Object;
.source "InternalCircuit.java"

# interfaces
.implements Lcom/subgraph/orchid/Circuit;


# virtual methods
.method public abstract cannibalizeToDirectory(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/DirectoryCircuit;
.end method

.method public abstract cannibalizeToIntroductionPoint(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/Circuit;
.end method

.method public abstract connectHiddenService(Lcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/HiddenServiceCircuit;
.end method

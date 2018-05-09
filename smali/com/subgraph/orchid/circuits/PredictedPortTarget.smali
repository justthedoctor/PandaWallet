.class public Lcom/subgraph/orchid/circuits/PredictedPortTarget;
.super Ljava/lang/Object;
.source "PredictedPortTarget.java"

# interfaces
.implements Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;


# instance fields
.field final port:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/subgraph/orchid/circuits/PredictedPortTarget;->port:I

    .line 12
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/subgraph/orchid/data/IPv4Address;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/data/IPv4Address;-><init>(I)V

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, ""

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/subgraph/orchid/circuits/PredictedPortTarget;->port:I

    return v0
.end method

.method public isAddressTarget()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

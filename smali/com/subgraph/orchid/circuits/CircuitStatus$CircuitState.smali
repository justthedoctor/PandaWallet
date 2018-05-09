.class final enum Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;
.super Ljava/lang/Enum;
.source "CircuitStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/CircuitStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CircuitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field public static final enum BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field public static final enum DESTROYED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field public static final enum FAILED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field public static final enum OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field public static final enum UNCONNECTED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    const-string v1, "UNCONNECTED"

    const-string v2, "Unconnected"

    invoke-direct {v0, v1, v3, v2}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->UNCONNECTED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    const-string v1, "BUILDING"

    const-string v2, "Building"

    invoke-direct {v0, v1, v4, v2}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    const-string v1, "FAILED"

    const-string v2, "Failed"

    invoke-direct {v0, v1, v5, v2}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->FAILED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    const-string v1, "OPEN"

    const-string v2, "Open"

    invoke-direct {v0, v1, v6, v2}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 12
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    const-string v1, "DESTROYED"

    const-string v2, "Destroyed"

    invoke-direct {v0, v1, v7, v2}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->DESTROYED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->UNCONNECTED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->FAILED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->DESTROYED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->$VALUES:[Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->$VALUES:[Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->name:Ljava/lang/String;

    return-object v0
.end method

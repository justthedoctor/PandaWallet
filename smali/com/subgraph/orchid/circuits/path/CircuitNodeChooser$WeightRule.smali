.class public final enum Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;
.super Ljava/lang/Enum;
.source "CircuitNodeChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WeightRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

.field public static final enum NO_WEIGHTING:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

.field public static final enum WEIGHT_FOR_DIR:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

.field public static final enum WEIGHT_FOR_EXIT:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

.field public static final enum WEIGHT_FOR_GUARD:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

.field public static final enum WEIGHT_FOR_MID:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    const-string v1, "WEIGHT_FOR_DIR"

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_DIR:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    new-instance v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    const-string v1, "WEIGHT_FOR_EXIT"

    invoke-direct {v0, v1, v3}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_EXIT:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    new-instance v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    const-string v1, "WEIGHT_FOR_MID"

    invoke-direct {v0, v1, v4}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_MID:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    new-instance v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    const-string v1, "WEIGHT_FOR_GUARD"

    invoke-direct {v0, v1, v5}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_GUARD:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    new-instance v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    const-string v1, "NO_WEIGHTING"

    invoke-direct {v0, v1, v6}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->NO_WEIGHTING:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_DIR:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_EXIT:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_MID:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_GUARD:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->NO_WEIGHTING:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    aput-object v1, v0, v6

    sput-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->$VALUES:[Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->$VALUES:[Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    return-object v0
.end method

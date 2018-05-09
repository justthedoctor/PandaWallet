.class final enum Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;
.super Ljava/lang/Enum;
.source "InternalCircuitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/InternalCircuitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InternalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

.field public static final enum HS_CIRCUIT:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

.field public static final enum HS_DIRECTORY:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

.field public static final enum HS_INTRODUCTION:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

.field public static final enum UNUSED:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    const-string v1, "UNUSED"

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->UNUSED:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    new-instance v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    const-string v1, "HS_INTRODUCTION"

    invoke-direct {v0, v1, v3}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_INTRODUCTION:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    new-instance v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    const-string v1, "HS_DIRECTORY"

    invoke-direct {v0, v1, v4}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_DIRECTORY:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    new-instance v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    const-string v1, "HS_CIRCUIT"

    invoke-direct {v0, v1, v5}, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_CIRCUIT:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    sget-object v1, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->UNUSED:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_INTRODUCTION:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_DIRECTORY:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->HS_CIRCUIT:Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->$VALUES:[Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->$VALUES:[Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/circuits/InternalCircuitImpl$InternalType;

    return-object v0
.end method

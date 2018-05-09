.class public final enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;
.super Ljava/lang/Enum;
.source "TorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/TorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigVarType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/TorConfig$ConfigVarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum AUTOBOOL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum BRIDGE_LINE:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum HS_AUTH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum INTEGER:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum PATH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum PORTLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum STRING:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum STRINGLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v3}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTEGER:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v4}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRING:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const-string v1, "HS_AUTH"

    invoke-direct {v0, v1, v5}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->HS_AUTH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v6}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const-string v1, "INTERVAL"

    invoke-direct {v0, v1, v7}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const-string v1, "PORTLIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->PORTLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const-string v1, "STRINGLIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRINGLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const-string v1, "PATH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->PATH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const-string v1, "AUTOBOOL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->AUTOBOOL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const-string v1, "BRIDGE_LINE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BRIDGE_LINE:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTEGER:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRING:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->HS_AUTH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->PORTLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRINGLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->PATH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->AUTOBOOL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BRIDGE_LINE:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->$VALUES:[Lcom/subgraph/orchid/TorConfig$ConfigVarType;

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
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    const-class v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->$VALUES:[Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/TorConfig$ConfigVarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    return-object v0
.end method

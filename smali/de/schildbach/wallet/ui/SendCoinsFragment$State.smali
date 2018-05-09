.class final enum Lde/schildbach/wallet/ui/SendCoinsFragment$State;
.super Ljava/lang/Enum;
.source "SendCoinsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/schildbach/wallet/ui/SendCoinsFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/schildbach/wallet/ui/SendCoinsFragment$State;

.field public static final enum FAILED:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

.field public static final enum INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

.field public static final enum PREPARATION:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

.field public static final enum SENDING:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

.field public static final enum SENT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    const-string v1, "INPUT"

    invoke-direct {v0, v1, v2}, Lde/schildbach/wallet/ui/SendCoinsFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    const-string v1, "PREPARATION"

    invoke-direct {v0, v1, v3}, Lde/schildbach/wallet/ui/SendCoinsFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->PREPARATION:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v4}, Lde/schildbach/wallet/ui/SendCoinsFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->SENDING:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v5}, Lde/schildbach/wallet/ui/SendCoinsFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->SENT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lde/schildbach/wallet/ui/SendCoinsFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->FAILED:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    .line 171
    const/4 v0, 0x5

    new-array v0, v0, [Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v1, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    aput-object v1, v0, v2

    sget-object v1, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->PREPARATION:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    aput-object v1, v0, v3

    sget-object v1, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->SENDING:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    aput-object v1, v0, v4

    sget-object v1, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->SENT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    aput-object v1, v0, v5

    sget-object v1, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->FAILED:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    aput-object v1, v0, v6

    sput-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->$VALUES:[Lde/schildbach/wallet/ui/SendCoinsFragment$State;

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
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    const-class v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    return-object v0
.end method

.method public static values()[Lde/schildbach/wallet/ui/SendCoinsFragment$State;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->$VALUES:[Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    invoke-virtual {v0}, [Lde/schildbach/wallet/ui/SendCoinsFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    return-object v0
.end method

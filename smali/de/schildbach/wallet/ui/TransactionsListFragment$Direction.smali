.class public final enum Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
.super Ljava/lang/Enum;
.source "TransactionsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/TransactionsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

.field public static final enum RECEIVED:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

.field public static final enum SENT:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    const-string v1, "RECEIVED"

    invoke-direct {v0, v1, v2}, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->RECEIVED:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    new-instance v0, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v3}, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->SENT:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    sget-object v1, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->RECEIVED:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->SENT:Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->$VALUES:[Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const-class v0, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    return-object v0
.end method

.method public static values()[Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->$VALUES:[Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    invoke-virtual {v0}, [Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/schildbach/wallet/ui/TransactionsListFragment$Direction;

    return-object v0
.end method

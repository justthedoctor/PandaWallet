.class public final enum Lde/schildbach/wallet/PaymentIntent$Standard;
.super Ljava/lang/Enum;
.source "PaymentIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Standard"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/schildbach/wallet/PaymentIntent$Standard;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/schildbach/wallet/PaymentIntent$Standard;

.field public static final enum BIP21:Lde/schildbach/wallet/PaymentIntent$Standard;

.field public static final enum BIP70:Lde/schildbach/wallet/PaymentIntent$Standard;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lde/schildbach/wallet/PaymentIntent$Standard;

    const-string v1, "BIP21"

    invoke-direct {v0, v1, v2}, Lde/schildbach/wallet/PaymentIntent$Standard;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/PaymentIntent$Standard;->BIP21:Lde/schildbach/wallet/PaymentIntent$Standard;

    new-instance v0, Lde/schildbach/wallet/PaymentIntent$Standard;

    const-string v1, "BIP70"

    invoke-direct {v0, v1, v3}, Lde/schildbach/wallet/PaymentIntent$Standard;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/PaymentIntent$Standard;->BIP70:Lde/schildbach/wallet/PaymentIntent$Standard;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lde/schildbach/wallet/PaymentIntent$Standard;

    sget-object v1, Lde/schildbach/wallet/PaymentIntent$Standard;->BIP21:Lde/schildbach/wallet/PaymentIntent$Standard;

    aput-object v1, v0, v2

    sget-object v1, Lde/schildbach/wallet/PaymentIntent$Standard;->BIP70:Lde/schildbach/wallet/PaymentIntent$Standard;

    aput-object v1, v0, v3

    sput-object v0, Lde/schildbach/wallet/PaymentIntent$Standard;->$VALUES:[Lde/schildbach/wallet/PaymentIntent$Standard;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/schildbach/wallet/PaymentIntent$Standard;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lde/schildbach/wallet/PaymentIntent$Standard;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/PaymentIntent$Standard;

    return-object v0
.end method

.method public static values()[Lde/schildbach/wallet/PaymentIntent$Standard;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lde/schildbach/wallet/PaymentIntent$Standard;->$VALUES:[Lde/schildbach/wallet/PaymentIntent$Standard;

    invoke-virtual {v0}, [Lde/schildbach/wallet/PaymentIntent$Standard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/schildbach/wallet/PaymentIntent$Standard;

    return-object v0
.end method

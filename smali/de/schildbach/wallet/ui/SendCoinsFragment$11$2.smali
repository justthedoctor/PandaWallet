.class Lde/schildbach/wallet/ui/SendCoinsFragment$11$2;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment$11;->onInsufficientMoney(Ljava/math/BigInteger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment$11;)V
    .locals 0

    .prologue
    .line 960
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$2;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 964
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$2;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iget-object v0, v0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$3000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 965
    return-void
.end method

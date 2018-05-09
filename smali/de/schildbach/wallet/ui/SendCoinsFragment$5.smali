.class Lde/schildbach/wallet/ui/SendCoinsFragment$5;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$5;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$5;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->finish()V

    .line 374
    return-void
.end method

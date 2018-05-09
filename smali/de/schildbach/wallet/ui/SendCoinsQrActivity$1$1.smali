.class Lde/schildbach/wallet/ui/SendCoinsQrActivity$1$1;
.super Ljava/lang/Object;
.source "SendCoinsQrActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;

    iget-object v0, v0, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsQrActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/SendCoinsQrActivity;->finish()V

    .line 83
    return-void
.end method

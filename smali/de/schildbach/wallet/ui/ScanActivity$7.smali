.class Lde/schildbach/wallet/ui/ScanActivity$7;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/ScanActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/ScanActivity;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ScanActivity;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$7;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 381
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$7;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/ScanActivity;->finish()V

    .line 382
    return-void
.end method

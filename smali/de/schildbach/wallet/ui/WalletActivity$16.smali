.class Lde/schildbach/wallet/ui/WalletActivity$16;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->createVersionAlertDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActivity;

.field final synthetic val$binaryIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$16;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    iput-object p2, p0, Lde/schildbach/wallet/ui/WalletActivity$16;->val$binaryIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 762
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$16;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$16;->val$binaryIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->startActivity(Landroid/content/Intent;)V

    .line 763
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$16;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/WalletActivity;->finish()V

    .line 764
    return-void
.end method

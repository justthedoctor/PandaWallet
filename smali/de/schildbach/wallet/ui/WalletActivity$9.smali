.class Lde/schildbach/wallet/ui/WalletActivity$9;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->createExportKeysDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActivity;

.field final synthetic val$passwordView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$9;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    iput-object p2, p0, Lde/schildbach/wallet/ui/WalletActivity$9;->val$passwordView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 513
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$9;->val$passwordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "password":Ljava/lang/String;
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$9;->val$passwordView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$9;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-static {v1, v0}, Lde/schildbach/wallet/ui/WalletActivity;->access$100(Lde/schildbach/wallet/ui/WalletActivity;Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$9;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-static {v1}, Lde/schildbach/wallet/ui/WalletActivity;->access$200(Lde/schildbach/wallet/ui/WalletActivity;)Lde/schildbach/wallet/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lde/schildbach/wallet/Configuration;->disarmBackupReminder()V

    .line 519
    return-void
.end method

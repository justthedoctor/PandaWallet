.class Lde/schildbach/wallet/ui/WalletActivity$3;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->createImportKeysDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActivity;

.field final synthetic val$fileView:Landroid/widget/Spinner;

.field final synthetic val$passwordView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/widget/Spinner;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$3;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    iput-object p2, p0, Lde/schildbach/wallet/ui/WalletActivity$3;->val$fileView:Landroid/widget/Spinner;

    iput-object p3, p0, Lde/schildbach/wallet/ui/WalletActivity$3;->val$passwordView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 382
    iget-object v2, p0, Lde/schildbach/wallet/ui/WalletActivity$3;->val$fileView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 383
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lde/schildbach/wallet/ui/WalletActivity$3;->val$passwordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "password":Ljava/lang/String;
    iget-object v2, p0, Lde/schildbach/wallet/ui/WalletActivity$3;->val$passwordView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v2, p0, Lde/schildbach/wallet/ui/WalletActivity$3;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-static {v2, v0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->access$000(Lde/schildbach/wallet/ui/WalletActivity;Ljava/io/File;Ljava/lang/String;)V

    .line 387
    return-void
.end method

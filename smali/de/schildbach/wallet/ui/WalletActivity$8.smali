.class Lde/schildbach/wallet/ui/WalletActivity$8;
.super Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;
.source "WalletActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->prepareImportKeysDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActivity;

.field final synthetic val$fileView:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/widget/TextView;Landroid/app/AlertDialog;Landroid/widget/Spinner;)V
    .locals 0
    .param p2, "x0"    # Landroid/widget/TextView;
    .param p3, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 479
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$8;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    iput-object p4, p0, Lde/schildbach/wallet/ui/WalletActivity$8;->val$fileView:Landroid/widget/Spinner;

    invoke-direct {p0, p2, p3}, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;-><init>(Landroid/widget/TextView;Landroid/app/AlertDialog;)V

    return-void
.end method


# virtual methods
.method protected hasFile()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$8;->val$fileView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needsPassword()Z
    .locals 2

    .prologue
    .line 489
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$8;->val$fileView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 490
    .local v0, "selectedFile":Ljava/io/File;
    if-eqz v0, :cond_0

    sget-object v1, Lde/schildbach/wallet/util/Crypto;->OPENSSL_FILE_FILTER:Ljava/io/FileFilter;

    invoke-interface {v1, v0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

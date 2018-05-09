.class Lde/schildbach/wallet/ui/WalletActivity$6;
.super Lde/schildbach/wallet/ui/FileAdapter;
.source "WalletActivity.java"


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


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 407
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$6;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-direct {p0, p2}, Lde/schildbach/wallet/ui/FileAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "row"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 411
    invoke-virtual/range {p0 .. p1}, Lde/schildbach/wallet/ui/WalletActivity$6;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 412
    .local v3, "file":Ljava/io/File;
    sget-object v9, Lde/schildbach/wallet/Constants;->EXTERNAL_WALLET_BACKUP_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 413
    .local v6, "isExternal":Z
    sget-object v9, Lde/schildbach/wallet/util/Crypto;->OPENSSL_FILE_FILTER:Ljava/io/FileFilter;

    invoke-interface {v9, v3}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    .line 415
    .local v5, "isEncrypted":Z
    if-nez p2, :cond_0

    .line 416
    move-object/from16 v0, p0

    iget-object v9, v0, Lde/schildbach/wallet/ui/WalletActivity$6;->inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030041

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 418
    :cond_0
    const v9, 0x7f0600a0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 419
    .local v4, "filenameView":Landroid/widget/TextView;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const v9, 0x7f0600a1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 422
    .local v7, "securityView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v10, v0, Lde/schildbach/wallet/ui/WalletActivity$6;->context:Landroid/content/Context;

    if-eqz v5, :cond_1

    const v9, 0x7f0b0098

    :goto_0
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "encryptedStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lde/schildbach/wallet/ui/WalletActivity$6;->context:Landroid/content/Context;

    if-eqz v6, :cond_2

    const v9, 0x7f0b009a

    :goto_1
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 426
    .local v8, "storageStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const v9, 0x7f0600a2

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 429
    .local v1, "createdView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v10, v0, Lde/schildbach/wallet/ui/WalletActivity$6;->context:Landroid/content/Context;

    if-eqz v6, :cond_3

    const v9, 0x7f0b009d

    :goto_2
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lde/schildbach/wallet/ui/WalletActivity$6;->context:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    return-object p2

    .line 422
    .end local v1    # "createdView":Landroid/widget/TextView;
    .end local v2    # "encryptedStr":Ljava/lang/String;
    .end local v8    # "storageStr":Ljava/lang/String;
    :cond_1
    const v9, 0x7f0b0099

    goto :goto_0

    .line 424
    .restart local v2    # "encryptedStr":Ljava/lang/String;
    :cond_2
    const v9, 0x7f0b009b

    goto :goto_1

    .line 429
    .restart local v1    # "createdView":Landroid/widget/TextView;
    .restart local v8    # "storageStr":Ljava/lang/String;
    :cond_3
    const v9, 0x7f0b009c

    goto :goto_2
.end method

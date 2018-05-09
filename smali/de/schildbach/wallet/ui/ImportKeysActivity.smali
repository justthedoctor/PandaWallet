.class public final Lde/schildbach/wallet/ui/ImportKeysActivity;
.super Lde/schildbach/wallet/ui/AbstractWalletActivity;
.source "ImportKeysActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;
    }
.end annotation


# static fields
.field private static final DIALOG_IMPORT_KEYS:I


# instance fields
.field private backupFileUri:Landroid/net/Uri;

.field private contentResolver:Landroid/content/ContentResolver;

.field private final finishListener:Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;

.field private wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;-><init>()V

    .line 260
    new-instance v0, Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;-><init>(Lde/schildbach/wallet/ui/ImportKeysActivity;Lde/schildbach/wallet/ui/ImportKeysActivity$1;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/ImportKeysActivity;->finishListener:Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/ImportKeysActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ImportKeysActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lde/schildbach/wallet/ui/ImportKeysActivity;->backupFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/ImportKeysActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ImportKeysActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lde/schildbach/wallet/ui/ImportKeysActivity;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/ImportKeysActivity;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ImportKeysActivity;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lde/schildbach/wallet/ui/ImportKeysActivity;->importPrivateKeys(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private createImportKeysDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 92
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ImportKeysActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f06003e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 95
    .local v1, "passwordView":Landroid/widget/EditText;
    new-instance v0, Lde/schildbach/wallet/ui/DialogBuilder;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v3, 0x7f0b0095

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/DialogBuilder;->setTitle(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 97
    invoke-virtual {v0, v2}, Lde/schildbach/wallet/ui/DialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 98
    const v3, 0x7f0b009e

    new-instance v4, Lde/schildbach/wallet/ui/ImportKeysActivity$1;

    invoke-direct {v4, p0, v1}, Lde/schildbach/wallet/ui/ImportKeysActivity$1;-><init>(Lde/schildbach/wallet/ui/ImportKeysActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    const v3, 0x7f0b00ed

    new-instance v4, Lde/schildbach/wallet/ui/ImportKeysActivity$2;

    invoke-direct {v4, p0, v1}, Lde/schildbach/wallet/ui/ImportKeysActivity$2;-><init>(Lde/schildbach/wallet/ui/ImportKeysActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    new-instance v3, Lde/schildbach/wallet/ui/ImportKeysActivity$3;

    invoke-direct {v3, p0, v1}, Lde/schildbach/wallet/ui/ImportKeysActivity$3;-><init>(Lde/schildbach/wallet/ui/ImportKeysActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/DialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/DialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private importPrivateKeys(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 17
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 165
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    sget-object v14, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 166
    .local v1, "cipherIn":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v2, "cipherText":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 175
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v13, v14}, Lde/schildbach/wallet/util/Crypto;->decrypt(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v11

    .line 178
    .local v11, "plainText":Ljava/lang/String;
    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 180
    .local v10, "plainReader":Ljava/io/Reader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 181
    .local v5, "keyReader":Ljava/io/BufferedReader;
    invoke-static {v5}, Lde/schildbach/wallet/util/WalletUtils;->readKeys(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v4

    .line 182
    .local v4, "importedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 184
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    .line 185
    .local v9, "numKeysToImport":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/schildbach/wallet/ui/ImportKeysActivity;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v13, v4}, Lcom/google/bitcoin/core/Wallet;->addKeys(Ljava/util/List;)I

    move-result v8

    .line 187
    .local v8, "numKeysImported":I
    new-instance v3, Lde/schildbach/wallet/ui/DialogBuilder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v3, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v7, "message":Ljava/lang/StringBuilder;
    if-lez v8, :cond_0

    .line 190
    const v13, 0x7f0b009f

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lde/schildbach/wallet/ui/ImportKeysActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    if-ge v8, v9, :cond_2

    .line 193
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 194
    const/16 v13, 0xa

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    :cond_1
    const v13, 0x7f0b00a0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sub-int v16, v9, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lde/schildbach/wallet/ui/ImportKeysActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_2
    if-lez v8, :cond_4

    .line 199
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 200
    const-string v13, "\n\n"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_3
    const v13, 0x7f0b00a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lde/schildbach/wallet/ui/ImportKeysActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_4
    invoke-virtual {v3, v7}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 204
    if-lez v8, :cond_6

    .line 206
    const v13, 0x7f0b00a3

    new-instance v14, Lde/schildbach/wallet/ui/ImportKeysActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lde/schildbach/wallet/ui/ImportKeysActivity$5;-><init>(Lde/schildbach/wallet/ui/ImportKeysActivity;)V

    invoke-virtual {v3, v13, v14}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    const v13, 0x7f0b00ec

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/schildbach/wallet/ui/ImportKeysActivity;->finishListener:Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;

    invoke-virtual {v3, v13, v14}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/schildbach/wallet/ui/ImportKeysActivity;->finishListener:Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;

    invoke-virtual {v3, v13}, Lde/schildbach/wallet/ui/DialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v3}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    .line 224
    sget-object v13, Lde/schildbach/wallet/ui/ImportKeysActivity;->log:Lorg/slf4j/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "imported "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " private keys"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 243
    .end local v1    # "cipherIn":Ljava/io/BufferedReader;
    .end local v2    # "cipherText":Ljava/lang/StringBuilder;
    .end local v4    # "importedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    .end local v5    # "keyReader":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/StringBuilder;
    .end local v8    # "numKeysImported":I
    .end local v9    # "numKeysToImport":I
    .end local v10    # "plainReader":Ljava/io/Reader;
    .end local v11    # "plainText":Ljava/lang/String;
    :goto_2
    return-void

    .line 173
    .end local v3    # "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    .restart local v1    # "cipherIn":Ljava/io/BufferedReader;
    .restart local v2    # "cipherText":Ljava/lang/StringBuilder;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 226
    .end local v1    # "cipherIn":Ljava/io/BufferedReader;
    .end local v2    # "cipherText":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 228
    .local v12, "x":Ljava/io/IOException;
    const v13, 0x7f0b00b0

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lde/schildbach/wallet/ui/DialogBuilder;->warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v3

    .line 229
    .restart local v3    # "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v13, 0x7f0b00a2

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lde/schildbach/wallet/ui/ImportKeysActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 230
    const v13, 0x7f0b00ec

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/schildbach/wallet/ui/ImportKeysActivity;->finishListener:Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;

    invoke-virtual {v3, v13, v14}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/schildbach/wallet/ui/ImportKeysActivity;->finishListener:Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    const v13, 0x7f0b00ee

    new-instance v14, Lde/schildbach/wallet/ui/ImportKeysActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lde/schildbach/wallet/ui/ImportKeysActivity$6;-><init>(Lde/schildbach/wallet/ui/ImportKeysActivity;)V

    invoke-virtual {v3, v13, v14}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v3}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    .line 241
    sget-object v13, Lde/schildbach/wallet/ui/ImportKeysActivity;->log:Lorg/slf4j/Logger;

    const-string v14, "problem reading private keys"

    invoke-interface {v13, v14, v12}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 219
    .end local v12    # "x":Ljava/io/IOException;
    .restart local v1    # "cipherIn":Ljava/io/BufferedReader;
    .restart local v2    # "cipherText":Ljava/lang/StringBuilder;
    .restart local v4    # "importedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    .restart local v5    # "keyReader":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/StringBuilder;
    .restart local v8    # "numKeysImported":I
    .restart local v9    # "numKeysToImport":I
    .restart local v10    # "plainReader":Ljava/io/Reader;
    .restart local v11    # "plainText":Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/schildbach/wallet/ui/ImportKeysActivity;->finishListener:Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;

    invoke-virtual {v3, v13}, Lde/schildbach/wallet/ui/DialogBuilder;->singleDismissButton(Landroid/content/DialogInterface$OnClickListener;)Lde/schildbach/wallet/ui/DialogBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private prepareImportKeysDialog(Landroid/app/Dialog;)V
    .locals 5
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 142
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 144
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v4, 0x7f06003e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 145
    .local v2, "passwordView":Landroid/widget/EditText;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v1, Lde/schildbach/wallet/ui/ImportKeysActivity$4;

    invoke-direct {v1, p0, v2, v0}, Lde/schildbach/wallet/ui/ImportKeysActivity$4;-><init>(Lde/schildbach/wallet/ui/ImportKeysActivity;Landroid/widget/TextView;Landroid/app/AlertDialog;)V

    .line 155
    .local v1, "dialogButtonEnabler":Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    const v4, 0x7f06003f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 158
    .local v3, "showView":Landroid/widget/CheckBox;
    new-instance v4, Lde/schildbach/wallet/ui/ShowPasswordCheckListener;

    invoke-direct {v4, v2}, Lde/schildbach/wallet/ui/ShowPasswordCheckListener;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ImportKeysActivity;->getWalletApplication()Lde/schildbach/wallet/WalletApplication;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/ImportKeysActivity;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 67
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ImportKeysActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/ImportKeysActivity;->contentResolver:Landroid/content/ContentResolver;

    .line 69
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ImportKeysActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/ImportKeysActivity;->backupFileUri:Landroid/net/Uri;

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/ImportKeysActivity;->showDialog(I)V

    .line 72
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    invoke-direct {p0}, Lde/schildbach/wallet/ui/ImportKeysActivity;->createImportKeysDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    invoke-direct {p0, p2}, Lde/schildbach/wallet/ui/ImportKeysActivity;->prepareImportKeysDialog(Landroid/app/Dialog;)V

    .line 88
    :cond_0
    return-void
.end method

.class public final Lde/schildbach/wallet/ui/TransactionActivity;
.super Lde/schildbach/wallet/ui/AbstractWalletActivity;
.source "TransactionActivity.java"


# static fields
.field private static final EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final INTENT_EXTRA_TRANSACTION_HASH:Ljava/lang/String; = "transaction_hash"


# instance fields
.field private nfcManager:Ljava/lang/Object;

.field private tx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 93
    .local v4, "intentUri":Landroid/net/Uri;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "scheme":Ljava/lang/String;
    :goto_0
    const-string v13, "transaction_hash"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 97
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/ui/TransactionActivity;->getApplication()Landroid/app/Application;

    move-result-object v13

    check-cast v13, Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v13}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v11

    .line 98
    .local v11, "wallet":Lcom/google/bitcoin/core/Wallet;
    const-string v13, "transaction_hash"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v11, v13}, Lcom/google/bitcoin/core/Wallet;->getTransaction(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/schildbach/wallet/ui/TransactionActivity;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 135
    .end local v11    # "wallet":Lcom/google/bitcoin/core/Wallet;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/schildbach/wallet/ui/TransactionActivity;->tx:Lcom/google/bitcoin/core/Transaction;

    if-nez v13, :cond_6

    .line 136
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "no tx"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 93
    .end local v9    # "scheme":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 100
    .restart local v9    # "scheme":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_0

    const-string v13, "ltctx"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, "part":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5a

    if-ne v13, v14, :cond_4

    const/4 v10, 0x1

    .line 107
    .local v10, "useCompression":Z
    :goto_2
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lde/schildbach/wallet/util/Base43;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 109
    .local v3, "bytes":[B
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 110
    .local v5, "is":Ljava/io/InputStream;
    if-eqz v10, :cond_3

    .line 111
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v5, v6

    .line 112
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x1000

    new-array v2, v13, [B

    .line 116
    .local v2, "buf":[B
    :goto_3
    const/4 v13, -0x1

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    if-eq v13, v8, :cond_5

    .line 117
    const/4 v13, 0x0

    invoke-virtual {v1, v2, v13, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 125
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v3    # "bytes":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "part":Ljava/lang/String;
    .end local v8    # "read":I
    .end local v10    # "useCompression":Z
    :catch_0
    move-exception v12

    .line 127
    .local v12, "x":Ljava/io/IOException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 106
    .end local v12    # "x":Ljava/io/IOException;
    .restart local v7    # "part":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 118
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "bytes":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v8    # "read":I
    .restart local v10    # "useCompression":Z
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 119
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 121
    new-instance v13, Lcom/google/bitcoin/core/Transaction;

    sget-object v14, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/schildbach/wallet/ui/TransactionActivity;->tx:Lcom/google/bitcoin/core/Transaction;

    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/schildbach/wallet/ui/TransactionActivity;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/schildbach/wallet/ui/TransactionActivity;->processPendingTransaction(Lcom/google/bitcoin/core/Transaction;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 129
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v3    # "bytes":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "part":Ljava/lang/String;
    .end local v8    # "read":I
    .end local v10    # "useCompression":Z
    :catch_1
    move-exception v12

    .line 131
    .local v12, "x":Lcom/google/bitcoin/core/ProtocolException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 137
    .end local v12    # "x":Lcom/google/bitcoin/core/ProtocolException;
    :cond_6
    return-void
.end method

.method private processPendingTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 3
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 161
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v2}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    .line 165
    .local v0, "wallet":Lcom/google/bitcoin/core/Wallet;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/bitcoin/core/Wallet;->isTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/google/bitcoin/core/Wallet;->receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    return-void

    .line 169
    :catch_0
    move-exception v1

    .line 171
    .local v1, "x":Lcom/google/bitcoin/core/VerificationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static show(Landroid/content/Context;Lcom/google/bitcoin/core/Transaction;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/schildbach/wallet/ui/TransactionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "transaction_hash"

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method private updateView()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f06006d

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/ui/TransactionFragment;

    .line 156
    .local v0, "transactionFragment":Lde/schildbach/wallet/ui/TransactionFragment;
    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionActivity;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/TransactionFragment;->update(Lcom/google/bitcoin/core/Transaction;)V

    .line 157
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 63
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v1, "nfc"

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/TransactionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/TransactionActivity;->nfcManager:Ljava/lang/Object;

    .line 67
    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/TransactionActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/TransactionActivity;->handleIntent(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 142
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionActivity;->finish()V

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onPause()V

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onResume()V

    .line 81
    invoke-direct {p0}, Lde/schildbach/wallet/ui/TransactionActivity;->updateView()V

    .line 82
    return-void
.end method

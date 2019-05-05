.class Lde/schildbach/wallet/ui/TransactionsListFragment$2;
.super Ljava/lang/Object;
.source "TransactionsListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/TransactionsListFragment;->handleTransactionClick(Lcom/google/bitcoin/core/Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final SHOW_QR_THRESHOLD_BYTES:I = 0x9c4


# instance fields
.field private address:Lcom/google/bitcoin/core/Address;

.field private serializedTx:[B

.field final synthetic this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

.field final synthetic val$tx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/TransactionsListFragment;Lcom/google/bitcoin/core/Transaction;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    iput-object p2, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleEditAddress(Lcom/google/bitcoin/core/Transaction;)V
    .locals 2
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 330
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->address:Lcom/google/bitcoin/core/Address;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->edit(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private handleShowQr()V
    .locals 4

    .prologue
    .line 335
    const/high16 v2, 0x43c00000    # 384.0f

    iget-object v3, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-virtual {v3}, Lde/schildbach/wallet/ui/TransactionsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 336
    .local v1, "size":I
    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->serializedTx:[B

    invoke-static {v2}, Lde/schildbach/wallet/util/Qr;->encodeCompressBinary([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lde/schildbach/wallet/util/Qr;->bitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    .local v0, "qrCodeBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/TransactionsListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v0}, Lde/schildbach/wallet/util/BitmapFragment;->show(Landroid/support/v4/app/FragmentManager;Landroid/graphics/Bitmap;)V

    .line 338
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 6
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 297
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 319
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 300
    :pswitch_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->handleEditAddress(Lcom/google/bitcoin/core/Transaction;)V

    .line 302
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_1

    .line 306
    :pswitch_1
    invoke-direct {p0}, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->handleShowQr()V

    .line 308
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_1

    .line 312
    :pswitch_2
    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lde/schildbach/wallet/Constants;->EXPLORE_BASE_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tx.dws?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/ui/TransactionsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 314
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_1

    .line 317
    :pswitch_3
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$100(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/TransactionActivity;->show(Landroid/content/Context;Lcom/google/bitcoin/core/Transaction;)V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600cb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 240
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0e000c

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 242
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 325
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$300(Lde/schildbach/wallet/ui/TransactionsListFragment;)Landroid/nfc/NfcManager;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$100(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/Nfc;->unpublish(Landroid/nfc/NfcManager;Landroid/app/Activity;)V

    .line 326
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 13
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 250
    :try_start_0
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v4

    .line 251
    .local v4, "time":Ljava/util/Date;
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$100(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 252
    .local v0, "dateFormat":Ljava/text/DateFormat;
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$100(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 254
    .local v5, "timeFormat":Ljava/text/DateFormat;
    if-eqz v4, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    const v10, 0x7f0b00fd

    invoke-virtual {v8, v10}, Lde/schildbach/wallet/ui/TransactionsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {p1, v8}, Lcom/actionbarsherlock/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->val$tx:Lcom/google/bitcoin/core/Transaction;

    iget-object v9, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v9}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$200(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/bitcoin/core/Transaction;->getValue(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v6

    .line 258
    .local v6, "value":Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-gez v8, :cond_2

    const/4 v3, 0x1

    .line 260
    .local v3, "sent":Z
    :goto_2
    if-eqz v3, :cond_3

    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-static {v8}, Lde/schildbach/wallet/util/WalletUtils;->getFirstToAddress(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Address;

    move-result-object v8

    :goto_3
    iput-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->address:Lcom/google/bitcoin/core/Address;

    .line 263
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 264
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    const v9, 0x7f0b0029

    invoke-virtual {v8, v9}, Lde/schildbach/wallet/ui/TransactionsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "label":Ljava/lang/String;
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    if-eqz v3, :cond_6

    const v8, 0x7f0b0109

    :goto_5
    invoke-virtual {v10, v8}, Lde/schildbach/wallet/ui/TransactionsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "prefix":Ljava/lang/String;
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->getPurpose()Lcom/google/bitcoin/core/Transaction$Purpose;

    move-result-object v8

    sget-object v9, Lcom/google/bitcoin/core/Transaction$Purpose;->KEY_ROTATION:Lcom/google/bitcoin/core/Transaction$Purpose;

    if-eq v8, v9, :cond_8

    .line 273
    if-eqz v1, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_6
    invoke-virtual {p1, v8}, Lcom/actionbarsherlock/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 278
    :goto_7
    const v8, 0x7f0600cb

    invoke-interface {p2, v8}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->address:Lcom/google/bitcoin/core/Address;

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    :goto_8
    invoke-interface {v9, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 280
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v8

    iput-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->serializedTx:[B

    .line 282
    const v8, 0x7f0600cc

    invoke-interface {p2, v8}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->serializedTx:[B

    array-length v8, v8

    const/16 v10, 0x9c4

    if-ge v8, v10, :cond_a

    const/4 v8, 0x1

    :goto_9
    invoke-interface {v9, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 284
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$300(Lde/schildbach/wallet/ui/TransactionsListFragment;)Landroid/nfc/NfcManager;

    move-result-object v8

    iget-object v9, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v9}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$100(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v9

    sget-object v10, Lde/schildbach/wallet/Constants;->MIMETYPE_TRANSACTION:Ljava/lang/String;

    iget-object v11, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->serializedTx:[B

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lde/schildbach/wallet/util/Nfc;->publishMimeObject(Landroid/nfc/NfcManager;Landroid/app/Activity;Ljava/lang/String;[BZ)Z

    .line 286
    const/4 v8, 0x1

    .line 290
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "sent":Z
    .end local v4    # "time":Ljava/util/Date;
    .end local v5    # "timeFormat":Ljava/text/DateFormat;
    .end local v6    # "value":Ljava/math/BigInteger;
    :goto_a
    return v8

    .line 254
    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    .restart local v4    # "time":Ljava/util/Date;
    .restart local v5    # "timeFormat":Ljava/text/DateFormat;
    :cond_0
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 258
    .restart local v6    # "value":Ljava/math/BigInteger;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 260
    .restart local v3    # "sent":Z
    :cond_3
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-static {v8}, Lde/schildbach/wallet/util/WalletUtils;->getFirstFromAddress(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Address;

    move-result-object v8

    goto/16 :goto_3

    .line 265
    :cond_4
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->address:Lcom/google/bitcoin/core/Address;

    if-eqz v8, :cond_5

    .line 266
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$100(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v8

    iget-object v9, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->address:Lcom/google/bitcoin/core/Address;

    invoke-virtual {v9}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lde/schildbach/wallet/AddressBookProvider;->resolveLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "label":Ljava/lang/String;
    goto/16 :goto_4

    .line 268
    .end local v1    # "label":Ljava/lang/String;
    :cond_5
    const-string v1, "?"

    .restart local v1    # "label":Ljava/lang/String;
    goto/16 :goto_4

    .line 270
    :cond_6
    const v8, 0x7f0b010a

    goto/16 :goto_5

    .line 273
    .restart local v2    # "prefix":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$2;->address:Lcom/google/bitcoin/core/Address;

    const/4 v9, 0x4

    const/16 v10, 0xc

    invoke-static {v2, v8, v9, v10}, Lde/schildbach/wallet/util/WalletUtils;->formatAddress(Ljava/lang/String;Lcom/google/bitcoin/core/Address;II)Landroid/text/Editable;

    move-result-object v8

    goto :goto_6

    .line 276
    :cond_8
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/actionbarsherlock/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 288
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "sent":Z
    .end local v4    # "time":Ljava/util/Date;
    .end local v5    # "timeFormat":Ljava/text/DateFormat;
    .end local v6    # "value":Ljava/math/BigInteger;
    :catch_0
    move-exception v7

    .line 290
    .local v7, "x":Lcom/google/bitcoin/core/ScriptException;
    const/4 v8, 0x0

    goto :goto_a

    .line 278
    .end local v7    # "x":Lcom/google/bitcoin/core/ScriptException;
    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    .restart local v1    # "label":Ljava/lang/String;
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v3    # "sent":Z
    .restart local v4    # "time":Ljava/util/Date;
    .restart local v5    # "timeFormat":Ljava/text/DateFormat;
    .restart local v6    # "value":Ljava/math/BigInteger;
    :cond_9
    const/4 v8, 0x0

    goto :goto_8

    .line 282
    :cond_a
    const/4 v8, 0x0

    goto :goto_9
.end method

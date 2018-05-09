.class public final Lde/schildbach/wallet/ui/SendingAddressesFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "SendingAddressesFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_SCAN:I


# instance fields
.field private activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

.field private adapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private clipboardManager:Landroid/text/ClipboardManager;

.field private final handler:Landroid/os/Handler;

.field private loaderManager:Landroid/support/v4/app/LoaderManager;

.field private walletAddressesSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/SendingAddressesFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendingAddressesFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/SendingAddressesFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendingAddressesFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/SendingAddressesFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendingAddressesFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->handleSend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lde/schildbach/wallet/ui/SendingAddressesFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendingAddressesFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->handleRemove(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/SendingAddressesFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendingAddressesFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->handleShowQr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lde/schildbach/wallet/ui/SendingAddressesFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendingAddressesFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->handleCopyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lde/schildbach/wallet/ui/SendingAddressesFragment;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendingAddressesFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->adapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method private handleCopyToClipboard(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    const v1, 0x7f0b0017

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->toast(I[Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method private handlePasteClipboard()V
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "input":Ljava/lang/String;
    new-instance v1, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;

    invoke-direct {v1, p0, v0, v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;-><init>(Lde/schildbach/wallet/ui/SendingAddressesFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/SendingAddressesFragment$3;->parse()V

    .line 240
    .end local v0    # "input":Ljava/lang/String;
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    const v2, 0x7f0b0070

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->toast(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleRemove(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/schildbach/wallet/AddressBookProvider;->contentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 344
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method private handleScan()V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    const-class v2, Lde/schildbach/wallet/ui/ScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 245
    return-void
.end method

.method private handleSend(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 332
    :try_start_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lde/schildbach/wallet/PaymentIntent;->fromAddress(Ljava/lang/String;Ljava/lang/String;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v2

    invoke-static {v1, v2}, Lde/schildbach/wallet/ui/SendCoinsActivity;->start(Landroid/content/Context;Lde/schildbach/wallet/PaymentIntent;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/AddressFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 337
    .local v0, "x":Lcom/google/bitcoin/core/AddressFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleShowQr(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 349
    invoke-static {p1, v2, v2, v2}, Lcom/google/bitcoin/uri/BitcoinURI;->convertToBitcoinURI(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "uri":Ljava/lang/String;
    const/high16 v2, 0x43800000    # 256.0f

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 351
    .local v0, "size":I
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {v1, v0}, Lde/schildbach/wallet/util/Qr;->bitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lde/schildbach/wallet/util/BitmapFragment;->show(Landroid/support/v4/app/FragmentManager;Landroid/graphics/Bitmap;)V

    .line 352
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 136
    const-string v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "input":Ljava/lang/String;
    new-instance v1, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;

    invoke-direct {v1, p0, v0, v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;-><init>(Lde/schildbach/wallet/ui/SendingAddressesFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/SendingAddressesFragment$2;->parse()V

    .line 170
    .end local v0    # "input":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 82
    check-cast v0, Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    .line 83
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->clipboardManager:Landroid/text/ClipboardManager;

    .line 84
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0, v7}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->setHasOptionsMenu(Z)V

    .line 94
    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    const v2, 0x7f030015

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "label"

    aput-object v5, v4, v6

    const-string v5, "address"

    aput-object v5, v4, v7

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->adapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 96
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->adapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    new-instance v1, Lde/schildbach/wallet/ui/SendingAddressesFragment$1;

    invoke-direct {v1, p0}, Lde/schildbach/wallet/ui/SendingAddressesFragment$1;-><init>(Lde/schildbach/wallet/ui/SendingAddressesFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 110
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->adapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {v0, v6, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 113
    return-void

    .line 94
    :array_0
    .array-data 4
        0x7f06002a
        0x7f06002c
    .end array-data
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/schildbach/wallet/AddressBookProvider;->contentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 364
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    const/4 v3, 0x0

    const-string v4, "notin"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v6, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->walletAddressesSelection:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->walletAddressesSelection:Ljava/lang/String;

    :goto_0
    aput-object v6, v5, v7

    const-string v6, "label COLLATE LOCALIZED ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v6, ""

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const v2, 0x7f0600b6

    .line 176
    const v1, 0x7f0600b5

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_1

    .line 178
    const v1, 0x7f0e0008

    invoke-virtual {p2, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 180
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 181
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 184
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 186
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-void

    .line 181
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 128
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroy()V

    .line 129
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 250
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    new-instance v1, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;

    invoke-direct {v1, p0, p3}, Lde/schildbach/wallet/ui/SendingAddressesFragment$4;-><init>(Lde/schildbach/wallet/ui/SendingAddressesFragment;I)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    .line 326
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->adapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 373
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->adapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 379
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 202
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 194
    :pswitch_0
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->handlePasteClipboard()V

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->handleScan()V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600b5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/SendingAddressesFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public setWalletAddresses(Ljava/util/ArrayList;)V
    .locals 5
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/bitcoin/core/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/bitcoin/core/Address;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Address;

    .line 385
    .local v0, "address":Lcom/google/bitcoin/core/Address;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 386
    .end local v0    # "address":Lcom/google/bitcoin/core/Address;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 389
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment;->walletAddressesSelection:Ljava/lang/String;

    .line 390
    return-void
.end method

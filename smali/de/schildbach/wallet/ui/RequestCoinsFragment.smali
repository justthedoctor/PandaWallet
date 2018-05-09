.class public final Lde/schildbach/wallet/ui/RequestCoinsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "RequestCoinsFragment.java"


# static fields
.field private static ENABLE_BLUETOOTH_LISTENING:Z

.field private static final ID_RATE_LOADER:I

.field private static final REQUEST_CODE_ENABLE_BLUETOOTH:I

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private acceptBluetoothPaymentView:Landroid/widget/CheckBox;

.field private activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

.field private amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

.field private application:Lde/schildbach/wallet/WalletApplication;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private bluetoothMac:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private bluetoothServiceIntent:Landroid/content/Intent;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private clipboardManager:Landroid/text/ClipboardManager;

.field private config:Lde/schildbach/wallet/Configuration;

.field private initiateRequestView:Landroid/widget/TextView;

.field private loaderManager:Landroid/support/v4/app/LoaderManager;

.field private nfcManager:Landroid/nfc/NfcManager;

.field private qrCodeBitmap:Landroid/graphics/Bitmap;

.field private qrView:Landroid/widget/ImageView;

.field private final rateLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->ENABLE_BLUETOOTH_LISTENING:Z

    .line 108
    const-class v0, Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->log:Lorg/slf4j/Logger;

    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 110
    new-instance v0, Lde/schildbach/wallet/ui/RequestCoinsFragment$1;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment$1;-><init>(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->rateLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/RequestCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/RequestCoinsFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/RequestCoinsFragment;)Lde/schildbach/wallet/Configuration;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/RequestCoinsFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    return-object v0
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/RequestCoinsFragment;)Lde/schildbach/wallet/ui/CurrencyCalculatorLink;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/RequestCoinsFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    return-object v0
.end method

.method static synthetic access$300(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/RequestCoinsFragment;

    .prologue
    .line 78
    invoke-direct {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->updateView()V

    return-void
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/RequestCoinsFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/RequestCoinsFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->qrCodeBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->ENABLE_BLUETOOTH_LISTENING:Z

    return v0
.end method

.method static synthetic access$600(Lde/schildbach/wallet/ui/RequestCoinsFragment;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/RequestCoinsFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/RequestCoinsFragment;

    .prologue
    .line 78
    invoke-direct {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->startBluetoothListening()V

    return-void
.end method

.method static synthetic access$800(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/RequestCoinsFragment;

    .prologue
    .line 78
    invoke-direct {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->stopBluetoothListening()V

    return-void
.end method

.method private determineBitcoinRequestStr(Z)Ljava/lang/String;
    .locals 5
    .param p1, "includeBluetoothMac"    # Z

    .prologue
    const/4 v4, 0x0

    .line 390
    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v3}, Lde/schildbach/wallet/WalletApplication;->determineSelectedAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v0

    .line 391
    .local v0, "address":Lcom/google/bitcoin/core/Address;
    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v3}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->getAmount()Ljava/math/BigInteger;

    move-result-object v1

    .line 393
    .local v1, "amount":Ljava/math/BigInteger;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v4, v4}, Lcom/google/bitcoin/uri/BitcoinURI;->convertToBitcoinURI(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .local v2, "uri":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothMac:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 396
    if-nez v1, :cond_1

    const/16 v3, 0x3f

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    const-string v3, "bt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 396
    :cond_1
    const/16 v3, 0x26

    goto :goto_0
.end method

.method private determinePaymentRequest(Z)[B
    .locals 5
    .param p1, "includeBluetoothMac"    # Z

    .prologue
    const/4 v3, 0x0

    .line 404
    iget-object v2, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v2}, Lde/schildbach/wallet/WalletApplication;->determineSelectedAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v0

    .line 405
    .local v0, "address":Lcom/google/bitcoin/core/Address;
    iget-object v2, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->getAmount()Ljava/math/BigInteger;

    move-result-object v1

    .line 407
    .local v1, "amount":Ljava/math/BigInteger;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothMac:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothMac:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v0, v3, v2}, Lde/schildbach/wallet/util/PaymentProtocol;->createPaymentRequest(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;Ljava/lang/String;Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->toByteArray()[B

    move-result-object v2

    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method private handleCopy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    invoke-direct {p0, v3}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->determineBitcoinRequestStr(Z)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "request":Ljava/lang/String;
    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    const v2, 0x7f0b0062

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->toast(I[Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method private handleLocalApp()V
    .locals 3

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->determineBitcoinRequestStr(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->startActivity(Landroid/content/Intent;)V

    .line 353
    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->finish()V

    .line 354
    return-void
.end method

.method private handleShare()V
    .locals 3

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v1, "android.intent.extra.TEXT"

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->determineBitcoinRequestStr(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const v1, 0x7f0b0063

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->startActivity(Landroid/content/Intent;)V

    .line 347
    return-void
.end method

.method private startBluetoothListening()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/schildbach/wallet/util/Bluetooth;->compressMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothMac:Ljava/lang/String;

    .line 290
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    const-class v2, Lde/schildbach/wallet/offline/AcceptBluetoothService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothServiceIntent:Landroid/content/Intent;

    .line 291
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 292
    return-void
.end method

.method private stopBluetoothListening()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->stopService(Landroid/content/Intent;)Z

    .line 299
    iput-object v2, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothServiceIntent:Landroid/content/Intent;

    .line 302
    :cond_0
    iput-object v2, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothMac:Ljava/lang/String;

    .line 303
    return-void
.end method

.method private updateView()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 358
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->isResumed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 386
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-direct {p0, v8}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->determineBitcoinRequestStr(Z)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "bitcoinRequest":Ljava/lang/String;
    invoke-direct {p0, v8}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->determinePaymentRequest(Z)[B

    move-result-object v4

    .line 365
    .local v4, "paymentRequest":[B
    const/high16 v7, 0x43800000    # 256.0f

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v6, v7

    .line 367
    .local v6, "size":I
    iget-object v7, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v7}, Lde/schildbach/wallet/Configuration;->getQrPaymentRequestEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pandacoin"

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lde/schildbach/wallet/util/Qr;->encodeBinary([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, "qrContent":Ljava/lang/String;
    :goto_1
    invoke-static {v5, v6}, Lde/schildbach/wallet/util/Qr;->bitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->qrCodeBitmap:Landroid/graphics/Bitmap;

    .line 372
    iget-object v7, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->qrView:Landroid/widget/ImageView;

    iget-object v8, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->qrCodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    iget-object v7, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->nfcManager:Landroid/nfc/NfcManager;

    iget-object v8, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    sget-object v9, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENTREQUEST:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v4, v10}, Lde/schildbach/wallet/util/Nfc;->publishMimeObject(Landroid/nfc/NfcManager;Landroid/app/Activity;Ljava/lang/String;[BZ)Z

    move-result v3

    .line 378
    .local v3, "nfcSuccess":Z
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const v7, 0x7f0b0060

    invoke-virtual {p0, v7}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 379
    .local v2, "initiateText":Landroid/text/SpannableStringBuilder;
    if-eqz v3, :cond_1

    .line 380
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    const v8, 0x7f0b0061

    invoke-virtual {p0, v8}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 381
    :cond_1
    iget-object v7, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->initiateRequestView:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v7, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v7}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->activeTextView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v0

    .line 385
    .local v0, "activeAmountViewId":I
    iget-object v7, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->acceptBluetoothPaymentView:Landroid/widget/CheckBox;

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setNextFocusUpId(I)V

    goto/16 :goto_0

    .line 370
    .end local v0    # "activeAmountViewId":I
    .end local v2    # "initiateText":Landroid/text/SpannableStringBuilder;
    .end local v3    # "nfcSuccess":Z
    .end local v5    # "qrContent":Ljava/lang/String;
    :cond_2
    move-object v5, v1

    .restart local v5    # "qrContent":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 274
    if-nez p1, :cond_1

    .line 276
    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->acceptBluetoothPaymentView:Landroid/widget/CheckBox;

    if-ne p2, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 278
    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->startBluetoothListening()V

    .line 281
    :cond_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-direct {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->updateView()V

    .line 284
    :cond_1
    return-void

    .line 276
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 142
    check-cast v0, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/WalletApplication;

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->application:Lde/schildbach/wallet/WalletApplication;

    .line 144
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getConfiguration()Lde/schildbach/wallet/Configuration;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    .line 145
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 146
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    .line 147
    const-string v0, "nfc"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->nfcManager:Landroid/nfc/NfcManager;

    .line 148
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->clipboardManager:Landroid/text/ClipboardManager;

    .line 149
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 150
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 308
    const v0, 0x7f0e0003

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 310
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 311
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 155
    const v3, 0x7f030028

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f060058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->qrView:Landroid/widget/ImageView;

    .line 158
    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->qrView:Landroid/widget/ImageView;

    new-instance v6, Lde/schildbach/wallet/ui/RequestCoinsFragment$2;

    invoke-direct {v6, p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment$2;-><init>(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v3, 0x7f060052

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/ui/CurrencyAmountView;

    .line 168
    .local v0, "btcAmountView":Lde/schildbach/wallet/ui/CurrencyAmountView;
    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getBtcPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setCurrencySymbol(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getBtcMaxPrecision()I

    move-result v3

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setInputPrecision(I)V

    .line 170
    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getBtcPrecision()I

    move-result v3

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHintPrecision(I)V

    .line 171
    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v3

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setShift(I)V

    .line 173
    const v3, 0x7f060054

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/schildbach/wallet/ui/CurrencyAmountView;

    .line 174
    .local v1, "localAmountView":Lde/schildbach/wallet/ui/CurrencyAmountView;
    invoke-virtual {v1, v5}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setInputPrecision(I)V

    .line 175
    invoke-virtual {v1, v5}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHintPrecision(I)V

    .line 176
    new-instance v3, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-direct {v3, v0, v1}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;-><init>(Lde/schildbach/wallet/ui/CurrencyAmountView;Lde/schildbach/wallet/ui/CurrencyAmountView;)V

    iput-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    .line 178
    const v3, 0x7f060056

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->acceptBluetoothPaymentView:Landroid/widget/CheckBox;

    .line 179
    iget-object v6, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->acceptBluetoothPaymentView:Landroid/widget/CheckBox;

    sget-boolean v3, Lde/schildbach/wallet/ui/RequestCoinsFragment;->ENABLE_BLUETOOTH_LISTENING:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 180
    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->acceptBluetoothPaymentView:Landroid/widget/CheckBox;

    sget-boolean v5, Lde/schildbach/wallet/ui/RequestCoinsFragment;->ENABLE_BLUETOOTH_LISTENING:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->acceptBluetoothPaymentView:Landroid/widget/CheckBox;

    new-instance v4, Lde/schildbach/wallet/ui/RequestCoinsFragment$3;

    invoke-direct {v4, p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment$3;-><init>(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    const v3, 0x7f060057

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->initiateRequestView:Landroid/widget/TextView;

    .line 209
    return-object v2

    :cond_1
    move v3, v5

    .line 179
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 256
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->getExchangeDirection()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/Configuration;->setLastExchangeDirection(Z)V

    .line 257
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 316
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 331
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 319
    :pswitch_0
    invoke-direct {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->handleCopy()V

    goto :goto_0

    .line 323
    :pswitch_1
    invoke-direct {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->handleShare()V

    goto :goto_0

    .line 327
    :pswitch_2
    invoke-direct {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->handleLocalApp()V

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600a8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 264
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->nfcManager:Landroid/nfc/NfcManager;

    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/Nfc;->unpublish(Landroid/nfc/NfcManager;Landroid/app/Activity;)V

    .line 266
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setListener(Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;)V

    .line 268
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 269
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 227
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 229
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    new-instance v1, Lde/schildbach/wallet/ui/RequestCoinsFragment$4;

    invoke-direct {v1, p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment$4;-><init>(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setListener(Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;)V

    .line 243
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->rateLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 245
    sget-boolean v0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->ENABLE_BLUETOOTH_LISTENING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->acceptBluetoothPaymentView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->startBluetoothListening()V

    .line 248
    :cond_0
    invoke-direct {p0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->updateView()V

    .line 249
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->setHasOptionsMenu(Z)V

    .line 220
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v1}, Lde/schildbach/wallet/Configuration;->getLastExchangeDirection()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setExchangeDirection(Z)V

    .line 221
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->requestFocus()V

    .line 222
    return-void
.end method

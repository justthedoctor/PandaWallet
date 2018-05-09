.class public final Lde/schildbach/wallet/ui/SendCoinsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "SendCoinsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/SendCoinsFragment$AutoCompleteAddressAdapter;,
        Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressActionMode;,
        Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;,
        Lde/schildbach/wallet/ui/SendCoinsFragment$State;
    }
.end annotation


# static fields
.field private static final ID_RATE_LOADER:I = 0x0

.field private static final REQUEST_CODE_ENABLE_BLUETOOTH_FOR_DIRECT_PAYMENT:I = 0x2

.field private static final REQUEST_CODE_ENABLE_BLUETOOTH_FOR_PAYMENT_REQUEST:I = 0x1

.field private static final REQUEST_CODE_SCAN:I

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

.field private final activityDismissListener:Landroid/content/DialogInterface$OnClickListener;

.field private amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

.field private final amountsListener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

.field private application:Lde/schildbach/wallet/WalletApplication;

.field private backgroundHandler:Landroid/os/Handler;

.field private backgroundThread:Landroid/os/HandlerThread;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private config:Lde/schildbach/wallet/Configuration;

.field private final contentObserver:Landroid/database/ContentObserver;

.field private contentResolver:Landroid/content/ContentResolver;

.field private directPaymentAck:Ljava/lang/Boolean;

.field private directPaymentEnableView:Landroid/widget/CheckBox;

.field private directPaymentMessageView:Landroid/widget/TextView;

.field private emptyAction:Lcom/actionbarsherlock/view/MenuItem;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private final handler:Landroid/os/Handler;

.field private loaderManager:Landroid/support/v4/app/LoaderManager;

.field private payeeNameView:Landroid/widget/TextView;

.field private payeeOrganizationView:Landroid/widget/TextView;

.field private payeeVerifiedByView:Landroid/widget/TextView;

.field private paymentIntent:Lde/schildbach/wallet/PaymentIntent;

.field private popupMessageView:Landroid/widget/TextView;

.field private popupWindow:Landroid/widget/PopupWindow;

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

.field private final receivingAddressListener:Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;

.field private receivingAddressView:Landroid/widget/AutoCompleteTextView;

.field private receivingStaticAddressView:Landroid/widget/TextView;

.field private receivingStaticLabelView:Landroid/widget/TextView;

.field private receivingStaticView:Landroid/view/View;

.field private scanAction:Lcom/actionbarsherlock/view/MenuItem;

.field private sentTransaction:Lcom/google/bitcoin/core/Transaction;

.field private final sentTransactionConfidenceListener:Lcom/google/bitcoin/core/TransactionConfidence$Listener;

.field private sentTransactionListAdapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

.field private sentTransactionView:Landroid/widget/ListView;

.field private state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

.field private txFeeView:Landroid/widget/TextView;

.field private validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

.field private viewCancel:Landroid/widget/Button;

.field private viewGo:Landroid/widget/Button;

.field private wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const-class v0, Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->handler:Landroid/os/Handler;

    .line 156
    iput-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    .line 158
    iput-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentAck:Ljava/lang/Boolean;

    .line 160
    sget-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    .line 161
    iput-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 204
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;

    invoke-direct {v0, p0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/ui/SendCoinsFragment$1;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressListener:Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;

    .line 278
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$1;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$1;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountsListener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    .line 292
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$2;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment$2;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->contentObserver:Landroid/database/ContentObserver;

    .line 301
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$3;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$3;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionConfidenceListener:Lcom/google/bitcoin/core/TransactionConfidence$Listener;

    .line 341
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$4;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$4;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->rateLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 368
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$5;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$5;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activityDismissListener:Landroid/content/DialogInterface$OnClickListener;

    .line 994
    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/SendCoinsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->validateReceivingAddress(Z)V

    return-void
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/SendCoinsFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->dismissPopup()V

    return-void
.end method

.method static synthetic access$1000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->updateView()V

    return-void
.end method

.method static synthetic access$1100(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/TransactionsListAdapter;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionListAdapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransaction:Lcom/google/bitcoin/core/Transaction;

    return-object v0
.end method

.method static synthetic access$1202(Lde/schildbach/wallet/ui/SendCoinsFragment;Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Transaction;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;
    .param p1, "x1"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 114
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransaction:Lcom/google/bitcoin/core/Transaction;

    return-object p1
.end method

.method static synthetic access$1300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    return-object v0
.end method

.method static synthetic access$1302(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/ui/SendCoinsFragment$State;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;
    .param p1, "x1"    # Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    .prologue
    .line 114
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    return-object p1
.end method

.method static synthetic access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/Configuration;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    return-object v0
.end method

.method static synthetic access$1600(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/CurrencyCalculatorLink;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    return-object v0
.end method

.method static synthetic access$1700(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lde/schildbach/wallet/ui/SendCoinsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->isAmountValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lde/schildbach/wallet/ui/SendCoinsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->everythingValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->handleGo()V

    return-void
.end method

.method static synthetic access$2100(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/PaymentIntent;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;
    .param p1, "x1"    # Lde/schildbach/wallet/PaymentIntent;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->updateStateFrom(Lde/schildbach/wallet/PaymentIntent;)V

    return-void
.end method

.method static synthetic access$2200(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lcom/google/bitcoin/core/TransactionConfidence$Listener;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionConfidenceListener:Lcom/google/bitcoin/core/TransactionConfidence$Listener;

    return-object v0
.end method

.method static synthetic access$2300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/WalletApplication;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->application:Lde/schildbach/wallet/WalletApplication;

    return-object v0
.end method

.method static synthetic access$2400()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$2500(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentEnableView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2602(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 114
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentAck:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$2800(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->backgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lcom/google/bitcoin/core/Wallet;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0
.end method

.method static synthetic access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    return-object v0
.end method

.method static synthetic access$3000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->handleEmpty()V

    return-void
.end method

.method static synthetic access$3100(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activityDismissListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3200(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->requestPaymentRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lde/schildbach/wallet/ui/SendCoinsFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->requestFocusFirst()V

    return-void
.end method

.method static synthetic access$600(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/support/v4/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$700(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AddressAndLabel;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    return-object v0
.end method

.method static synthetic access$702(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/ui/AddressAndLabel;)Lde/schildbach/wallet/ui/AddressAndLabel;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;
    .param p1, "x1"    # Lde/schildbach/wallet/ui/AddressAndLabel;

    .prologue
    .line 114
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    return-object p1
.end method

.method static synthetic access$800(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$900(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/SendCoinsFragment;

    .prologue
    .line 114
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticAddressView:Landroid/widget/TextView;

    return-object v0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 833
    const/4 v0, 0x0

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 835
    :cond_0
    return-void
.end method

.method private everythingValid()Z
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v1, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->isOutputsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->isAmountValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEmpty()V
    .locals 3

    .prologue
    .line 989
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    sget-object v2, Lcom/google/bitcoin/core/Wallet$BalanceType;->AVAILABLE:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v0

    .line 991
    .local v0, "available":Ljava/math/BigInteger;
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v1, v0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setBtcAmount(Ljava/math/BigInteger;)V

    .line 992
    return-void
.end method

.method private handleGo()V
    .locals 8

    .prologue
    .line 839
    sget-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->PREPARATION:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    .line 840
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->updateView()V

    .line 843
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->getAmount()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    iget-object v0, v0, Lde/schildbach/wallet/ui/AddressAndLabel;->address:Lcom/google/bitcoin/core/Address;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lde/schildbach/wallet/PaymentIntent;->mergeWithEditedValues(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v6

    .line 845
    .local v6, "finalPaymentIntent":Lde/schildbach/wallet/PaymentIntent;
    invoke-virtual {v6}, Lde/schildbach/wallet/PaymentIntent;->getAmount()Ljava/math/BigInteger;

    move-result-object v5

    .line 848
    .local v5, "finalAmount":Ljava/math/BigInteger;
    invoke-virtual {v6}, Lde/schildbach/wallet/PaymentIntent;->toSendRequest()Lcom/google/bitcoin/core/Wallet$SendRequest;

    move-result-object v7

    .line 849
    .local v7, "sendRequest":Lcom/google/bitcoin/core/Wallet$SendRequest;
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-static {v0}, Lde/schildbach/wallet/util/WalletUtils;->pickOldestKey(Lcom/google/bitcoin/core/Wallet;)Lcom/google/bitcoin/core/ECKey;

    move-result-object v0

    sget-object v1, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v4

    .line 850
    .local v4, "returnAddress":Lcom/google/bitcoin/core/Address;
    iput-object v4, v7, Lcom/google/bitcoin/core/Wallet$SendRequest;->changeAddress:Lcom/google/bitcoin/core/Address;

    .line 851
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v0}, Lde/schildbach/wallet/PaymentIntent;->mayEditAmount()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    sget-object v1, Lcom/google/bitcoin/core/Wallet$BalanceType;->AVAILABLE:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v7, Lcom/google/bitcoin/core/Wallet$SendRequest;->emptyWallet:Z

    .line 853
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->backgroundHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lde/schildbach/wallet/ui/SendCoinsFragment$11;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Lcom/google/bitcoin/core/Wallet;Landroid/os/Handler;Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v7}, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->sendCoinsOffline(Lcom/google/bitcoin/core/Wallet$SendRequest;)V

    .line 980
    return-void

    .line 843
    .end local v4    # "returnAddress":Lcom/google/bitcoin/core/Address;
    .end local v5    # "finalAmount":Ljava/math/BigInteger;
    .end local v6    # "finalPaymentIntent":Lde/schildbach/wallet/PaymentIntent;
    .end local v7    # "sendRequest":Lcom/google/bitcoin/core/Wallet$SendRequest;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 851
    .restart local v4    # "returnAddress":Lcom/google/bitcoin/core/Address;
    .restart local v5    # "finalAmount":Ljava/math/BigInteger;
    .restart local v6    # "finalPaymentIntent":Lde/schildbach/wallet/PaymentIntent;
    .restart local v7    # "sendRequest":Lcom/google/bitcoin/core/Wallet$SendRequest;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleScan()V
    .locals 3

    .prologue
    .line 984
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    const-class v2, Lde/schildbach/wallet/ui/ScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 985
    return-void
.end method

.method private initStateFromBitcoinUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "bitcoinUri"    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1217
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, "input":Ljava/lang/String;
    new-instance v1, Lde/schildbach/wallet/ui/SendCoinsFragment$12;

    invoke-direct {v1, p0, v0, v0}, Lde/schildbach/wallet/ui/SendCoinsFragment$12;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment$12;->parse()V

    .line 1239
    return-void
.end method

.method private initStateFromIntentExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1210
    const-string v1, "payment_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/PaymentIntent;

    .line 1212
    .local v0, "paymentIntent":Lde/schildbach/wallet/PaymentIntent;
    invoke-direct {p0, v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->updateStateFrom(Lde/schildbach/wallet/PaymentIntent;)V

    .line 1213
    return-void
.end method

.method private initStateFromIntentUri(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "bitcoinUri"    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1269
    :try_start_0
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1271
    .local v0, "is":Ljava/io/InputStream;
    new-instance v2, Lde/schildbach/wallet/ui/SendCoinsFragment$14;

    invoke-direct {v2, p0, p1, v0}, Lde/schildbach/wallet/ui/SendCoinsFragment$14;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/SendCoinsFragment$14;->parse()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    return-void

    .line 1292
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 1294
    .local v1, "x":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private initStateFromPaymentRequest(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "input"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1243
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$13;

    invoke-direct {v0, p0, p1, p2}, Lde/schildbach/wallet/ui/SendCoinsFragment$13;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment$13;->parse()V

    .line 1263
    return-void
.end method

.method private isAmountValid()Z
    .locals 2

    .prologue
    .line 785
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v1}, Lde/schildbach/wallet/PaymentIntent;->mayEditAmount()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->getAmount()Ljava/math/BigInteger;

    move-result-object v0

    .line 787
    .local v0, "amount":Ljava/math/BigInteger;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 785
    .end local v0    # "amount":Ljava/math/BigInteger;
    :cond_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v1}, Lde/schildbach/wallet/PaymentIntent;->getAmount()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 787
    .restart local v0    # "amount":Ljava/math/BigInteger;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isOutputsValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 774
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v1}, Lde/schildbach/wallet/PaymentIntent;->hasOutputs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 780
    :cond_0
    :goto_0
    return v0

    .line 777
    :cond_1
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    if-nez v1, :cond_0

    .line 780
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private popup(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "contentView"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 819
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 821
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, p2, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 822
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 825
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02009c

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 826
    return-void

    .line 825
    :cond_0
    const v0, 0x7f02009d

    goto :goto_0
.end method

.method private popupMessage(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 809
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->dismissPopup()V

    .line 811
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 814
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupMessageView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->popup(Landroid/view/View;Landroid/view/View;)V

    .line 815
    return-void
.end method

.method private requestFocusFirst()V
    .locals 2

    .prologue
    .line 797
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->isOutputsValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 805
    :goto_0
    return-void

    .line 799
    :cond_0
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->isAmountValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 800
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->requestFocus()V

    goto :goto_0

    .line 801
    :cond_1
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->everythingValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewGo:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 804
    :cond_2
    sget-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment;->log:Lorg/slf4j/Logger;

    const-string v1, "unclear focus"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestPaymentRequest(Ljava/lang/String;)V
    .locals 6
    .param p1, "paymentRequestUrl"    # Ljava/lang/String;

    .prologue
    .line 1348
    invoke-static {p1}, Lde/schildbach/wallet/util/Bluetooth;->isBluetoothUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1349
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1353
    .local v1, "host":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const v3, 0x7f0b003f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lde/schildbach/wallet/ui/ProgressDialogFragment;->showProgress(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1355
    new-instance v0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;

    invoke-direct {v0, p0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment$16;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;)V

    .line 1396
    .local v0, "callback":Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;
    invoke-static {p1}, Lde/schildbach/wallet/util/Bluetooth;->isBluetoothUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1397
    new-instance v2, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->backgroundHandler:Landroid/os/Handler;

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v4}, Lde/schildbach/wallet/WalletApplication;->httpUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;-><init>(Landroid/os/Handler;Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;->requestPaymentRequest(Ljava/lang/String;)V

    .line 1402
    :goto_1
    return-void

    .line 1351
    .end local v0    # "callback":Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;
    .end local v1    # "host":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lde/schildbach/wallet/util/Bluetooth;->getBluetoothMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/schildbach/wallet/util/Bluetooth;->decompressMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "host":Ljava/lang/String;
    goto :goto_0

    .line 1400
    .restart local v0    # "callback":Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;
    :cond_1
    new-instance v2, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->backgroundHandler:Landroid/os/Handler;

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v3, v0, v4}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;-><init>(Landroid/os/Handler;Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-virtual {v2, p1}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;->requestPaymentRequest(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 638
    const-string v0, "payment_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/PaymentIntent;

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    .line 640
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    .line 642
    const-string v0, "validated_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/ui/AddressAndLabel;

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    .line 644
    const-string v0, "sent_transaction_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    const-string v0, "sent_transaction_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v1, v0}, Lcom/google/bitcoin/core/Wallet;->getTransaction(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransaction:Lcom/google/bitcoin/core/Transaction;

    .line 647
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransaction:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionConfidenceListener:Lcom/google/bitcoin/core/TransactionConfidence$Listener;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/TransactionConfidence;->addEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;)V

    .line 650
    :cond_0
    const-string v0, "direct_payment_ack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    const-string v0, "direct_payment_ack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentAck:Ljava/lang/Boolean;

    .line 652
    :cond_1
    return-void
.end method

.method private saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 622
    const-string v0, "payment_intent"

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 624
    const-string v0, "state"

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 626
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    if-eqz v0, :cond_0

    .line 627
    const-string v0, "validated_address"

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 629
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransaction:Lcom/google/bitcoin/core/Transaction;

    if-eqz v0, :cond_1

    .line 630
    const-string v0, "sent_transaction_hash"

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransaction:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 632
    :cond_1
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentAck:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 633
    const-string v0, "direct_payment_ack"

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentAck:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 634
    :cond_2
    return-void
.end method

.method private updateStateFrom(Lde/schildbach/wallet/PaymentIntent;)V
    .locals 2
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 1300
    sget-object v0, Lde/schildbach/wallet/ui/SendCoinsFragment;->log:Lorg/slf4j/Logger;

    const-string v1, "got {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1302
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    .line 1304
    const/4 v0, 0x0

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentAck:Ljava/lang/Boolean;

    .line 1307
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lde/schildbach/wallet/ui/SendCoinsFragment$15;

    invoke-direct {v1, p0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment$15;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Lde/schildbach/wallet/PaymentIntent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1343
    return-void
.end method

.method private updateView()V
    .locals 15

    .prologue
    .line 1038
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    if-eqz v8, :cond_20

    .line 1040
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getView()Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v8}, Lde/schildbach/wallet/PaymentIntent;->hasPayee()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1044
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeNameView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeNameView:Landroid/widget/TextView;

    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    iget-object v9, v9, Lde/schildbach/wallet/PaymentIntent;->payeeName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    iget-object v8, v8, Lde/schildbach/wallet/PaymentIntent;->payeeOrganization:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 1049
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeOrganizationView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1050
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeOrganizationView:Landroid/widget/TextView;

    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    iget-object v9, v9, Lde/schildbach/wallet/PaymentIntent;->payeeOrganization:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    :goto_0
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeVerifiedByView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1058
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    iget-object v8, v8, Lde/schildbach/wallet/PaymentIntent;->payeeVerifiedBy:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    iget-object v7, v8, Lde/schildbach/wallet/PaymentIntent;->payeeVerifiedBy:Ljava/lang/String;

    .line 1060
    .local v7, "verifiedBy":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeVerifiedByView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x2713

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0b0042

    invoke-virtual {p0, v10}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    .end local v7    # "verifiedBy":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v8}, Lde/schildbach/wallet/PaymentIntent;->hasOutputs()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1072
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 1073
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticLabelView:Landroid/widget/TextView;

    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    iget-object v9, v9, Lde/schildbach/wallet/PaymentIntent;->memo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v8}, Lde/schildbach/wallet/PaymentIntent;->hasAddress()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1078
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticAddressView:Landroid/widget/TextView;

    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v9}, Lde/schildbach/wallet/PaymentIntent;->getAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v9

    const/4 v10, 0x4

    const/16 v11, 0xc

    invoke-static {v9, v10, v11}, Lde/schildbach/wallet/util/WalletUtils;->formatAddress(Lcom/google/bitcoin/core/Address;II)Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    :goto_3
    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v10, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v8, v10, :cond_c

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 1111
    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticView:Landroid/view/View;

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v10, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v8, v10, :cond_d

    const/4 v8, 0x1

    :goto_5
    invoke-virtual {v9, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1113
    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v10, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v8, v10, :cond_e

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v8}, Lde/schildbach/wallet/PaymentIntent;->mayEditAmount()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9, v8}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setEnabled(Z)V

    .line 1116
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v8}, Lde/schildbach/wallet/PaymentIntent;->hasPaymentUrl()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1118
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v8}, Lde/schildbach/wallet/PaymentIntent;->isBluetoothPaymentUrl()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1119
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v8, :cond_f

    const/4 v4, 0x1

    .line 1127
    .local v4, "directPaymentVisible":Z
    :goto_7
    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentEnableView:Landroid/widget/CheckBox;

    if-eqz v4, :cond_13

    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v9, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1128
    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentEnableView:Landroid/widget/CheckBox;

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v10, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v8, v10, :cond_14

    const/4 v8, 0x1

    :goto_9
    invoke-virtual {v9, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1130
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransaction:Lcom/google/bitcoin/core/Transaction;

    if-eqz v8, :cond_15

    .line 1132
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v8}, Lde/schildbach/wallet/Configuration;->getBtcPrecision()I

    move-result v2

    .line 1133
    .local v2, "btcPrecision":I
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v8}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v3

    .line 1135
    .local v3, "btcShift":I
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionView:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1136
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionListAdapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    invoke-virtual {v8, v2, v3}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->setPrecision(II)V

    .line 1137
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionListAdapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransaction:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v8, v9}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->replace(Lcom/google/bitcoin/core/Transaction;)V

    .line 1145
    .end local v2    # "btcPrecision":I
    .end local v3    # "btcShift":I
    :goto_a
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentAck:Ljava/lang/Boolean;

    if-eqz v8, :cond_17

    .line 1147
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentMessageView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1148
    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentMessageView:Landroid/widget/TextView;

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentAck:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_16

    const v8, 0x7f0b004d

    :goto_b
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1156
    :goto_c
    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewCancel:Landroid/widget/Button;

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v10, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->PREPARATION:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-eq v8, v10, :cond_18

    const/4 v8, 0x1

    :goto_d
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1157
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewGo:Landroid/widget/Button;

    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->everythingValid()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1159
    const-string v9, "%s %s"

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v8}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->hasAmount()Z

    move-result v8

    if-eqz v8, :cond_19

    sget-object v8, Lcom/google/bitcoin/core/CoinDefinition;->DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-static {v8, v12, v13}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v8

    :goto_e
    aput-object v8, v10, v11

    const/4 v8, 0x1

    const-string v11, "PND"

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1161
    .local v6, "str":Ljava/lang/String;
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->txFeeView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1163
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v9, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v8, v9, :cond_1a

    .line 1165
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewCancel:Landroid/widget/Button;

    const v9, 0x7f0b00ed

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 1166
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewGo:Landroid/widget/Button;

    const v9, 0x7f0b0051

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 1190
    :cond_0
    :goto_f
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->scanAction:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v8, :cond_1

    .line 1191
    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->scanAction:Lcom/actionbarsherlock/view/MenuItem;

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v10, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v8, v10, :cond_1e

    const/4 v8, 0x1

    :goto_10
    invoke-interface {v9, v8}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1192
    :cond_1
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->emptyAction:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v8, :cond_2

    .line 1193
    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->emptyAction:Lcom/actionbarsherlock/view/MenuItem;

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v10, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v8, v10, :cond_1f

    const/4 v8, 0x1

    :goto_11
    invoke-interface {v9, v8}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1196
    :cond_2
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v8}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->activeTextView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v0

    .line 1197
    .local v0, "activeAmountViewId":I
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v8, v0}, Landroid/widget/AutoCompleteTextView;->setNextFocusDownId(I)V

    .line 1198
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1199
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    invoke-static {v8, v0}, Lde/schildbach/wallet/util/GenericUtils;->setNextFocusForwardId(Landroid/view/View;I)V

    .line 1200
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewGo:Landroid/widget/Button;

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 1206
    .end local v0    # "activeAmountViewId":I
    .end local v4    # "directPaymentVisible":Z
    .end local v6    # "str":Ljava/lang/String;
    :goto_12
    return-void

    .line 1054
    :cond_3
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeOrganizationView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1058
    :cond_4
    const v8, 0x7f0b0043

    invoke-virtual {p0, v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1065
    :cond_5
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeNameView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1066
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeOrganizationView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1067
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeVerifiedByView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1081
    :cond_6
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticAddressView:Landroid/widget/TextView;

    const v9, 0x7f0b0049

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 1083
    :cond_7
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    if-eqz v8, :cond_b

    .line 1085
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 1087
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticAddressView:Landroid/widget/TextView;

    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    iget-object v9, v9, Lde/schildbach/wallet/ui/AddressAndLabel;->address:Lcom/google/bitcoin/core/Address;

    const/4 v10, 0x4

    const/16 v11, 0xc

    invoke-static {v9, v10, v11}, Lde/schildbach/wallet/util/WalletUtils;->formatAddress(Lcom/google/bitcoin/core/Address;II)Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    iget-object v9, v9, Lde/schildbach/wallet/ui/AddressAndLabel;->address:Lcom/google/bitcoin/core/Address;

    invoke-virtual {v9}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lde/schildbach/wallet/AddressBookProvider;->resolveLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1092
    .local v1, "addressBookLabel":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 1093
    move-object v5, v1

    .line 1098
    .local v5, "staticLabel":Ljava/lang/String;
    :goto_13
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticLabelView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    iget-object v8, v8, Lde/schildbach/wallet/ui/AddressAndLabel;->label:Ljava/lang/String;

    if-eqz v8, :cond_a

    const v8, 0x7f08000b

    :goto_14
    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 1094
    .end local v5    # "staticLabel":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    iget-object v8, v8, Lde/schildbach/wallet/ui/AddressAndLabel;->label:Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 1095
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    iget-object v5, v8, Lde/schildbach/wallet/ui/AddressAndLabel;->label:Ljava/lang/String;

    .restart local v5    # "staticLabel":Ljava/lang/String;
    goto :goto_13

    .line 1097
    .end local v5    # "staticLabel":Ljava/lang/String;
    :cond_9
    const v8, 0x7f0b00fe

    invoke-virtual {p0, v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "staticLabel":Ljava/lang/String;
    goto :goto_13

    .line 1099
    :cond_a
    const v8, 0x7f08000d

    goto :goto_14

    .line 1104
    .end local v1    # "addressBookLabel":Ljava/lang/String;
    .end local v5    # "staticLabel":Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1109
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1111
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 1113
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 1119
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1121
    :cond_10
    sget-boolean v8, Lde/schildbach/wallet/Constants;->BUG_OPENSSL_HEARTBLEED:Z

    if-nez v8, :cond_11

    const/4 v4, 0x1

    .restart local v4    # "directPaymentVisible":Z
    :goto_15
    goto/16 :goto_7

    .end local v4    # "directPaymentVisible":Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_15

    .line 1125
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "directPaymentVisible":Z
    goto/16 :goto_7

    .line 1127
    :cond_13
    const/16 v8, 0x8

    goto/16 :goto_8

    .line 1128
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 1141
    :cond_15
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionView:Landroid/widget/ListView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1142
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionListAdapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    invoke-virtual {v8}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->clear()V

    goto/16 :goto_a

    .line 1148
    :cond_16
    const v8, 0x7f0b004e

    goto/16 :goto_b

    .line 1153
    :cond_17
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentMessageView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 1156
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_d

    .line 1159
    :cond_19
    const-string v8, "%.1f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_e

    .line 1168
    .restart local v6    # "str":Ljava/lang/String;
    :cond_1a
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v9, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->PREPARATION:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v8, v9, :cond_1b

    .line 1170
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewCancel:Landroid/widget/Button;

    const v9, 0x7f0b00ed

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 1171
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewGo:Landroid/widget/Button;

    const v9, 0x7f0b0056

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_f

    .line 1173
    :cond_1b
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v9, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->SENDING:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v8, v9, :cond_1c

    .line 1175
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewCancel:Landroid/widget/Button;

    const v9, 0x7f0b0052

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 1176
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewGo:Landroid/widget/Button;

    const v9, 0x7f0b0057

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_f

    .line 1178
    :cond_1c
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v9, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->SENT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v8, v9, :cond_1d

    .line 1180
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewCancel:Landroid/widget/Button;

    const v9, 0x7f0b0052

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 1181
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewGo:Landroid/widget/Button;

    const v9, 0x7f0b0058

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_f

    .line 1183
    :cond_1d
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->state:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    sget-object v9, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->FAILED:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v8, v9, :cond_0

    .line 1185
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewCancel:Landroid/widget/Button;

    const v9, 0x7f0b0052

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 1186
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewGo:Landroid/widget/Button;

    const v9, 0x7f0b0059

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_f

    .line 1191
    :cond_1e
    const/4 v8, 0x0

    goto/16 :goto_10

    .line 1193
    :cond_1f
    const/4 v8, 0x0

    goto/16 :goto_11

    .line 1204
    .end local v4    # "directPaymentVisible":Z
    .end local v6    # "str":Ljava/lang/String;
    :cond_20
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getView()Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12
.end method

.method private validateReceivingAddress(Z)V
    .locals 9
    .param p1, "popups"    # Z

    .prologue
    .line 732
    :try_start_0
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "addressStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 735
    invoke-static {v1}, Lcom/google/bitcoin/core/Address;->getParametersFromAddress(Ljava/lang/String;)Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v0

    .line 736
    .local v0, "addressParams":Lcom/google/bitcoin/core/NetworkParameters;
    if-eqz v0, :cond_1

    sget-object v4, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0, v4}, Lcom/google/bitcoin/core/NetworkParameters;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 739
    if-eqz p1, :cond_0

    .line 740
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    const v5, 0x7f0b0047

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupMessage(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/AddressFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .end local v0    # "addressParams":Lcom/google/bitcoin/core/NetworkParameters;
    .end local v1    # "addressStr":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->updateView()V

    .line 770
    return-void

    .line 743
    .restart local v0    # "addressParams":Lcom/google/bitcoin/core/NetworkParameters;
    .restart local v1    # "addressStr":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 746
    if-eqz p1, :cond_0

    .line 747
    :try_start_1
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    const v5, 0x7f0b0048

    invoke-virtual {p0, v5}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupMessage(Landroid/view/View;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/bitcoin/core/AddressFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 762
    .end local v0    # "addressParams":Lcom/google/bitcoin/core/NetworkParameters;
    .end local v1    # "addressStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 765
    .local v3, "x":Lcom/google/bitcoin/core/AddressFormatException;
    if-eqz p1, :cond_0

    .line 766
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    const v5, 0x7f0b0046

    invoke-virtual {p0, v5}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupMessage(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 752
    .end local v3    # "x":Lcom/google/bitcoin/core/AddressFormatException;
    .restart local v0    # "addressParams":Lcom/google/bitcoin/core/NetworkParameters;
    .restart local v1    # "addressStr":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    invoke-static {v4, v1}, Lde/schildbach/wallet/AddressBookProvider;->resolveLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "label":Ljava/lang/String;
    new-instance v4, Lde/schildbach/wallet/ui/AddressAndLabel;

    sget-object v5, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v4, v5, v1, v2}, Lde/schildbach/wallet/ui/AddressAndLabel;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->validatedAddress:Lde/schildbach/wallet/ui/AddressAndLabel;

    .line 754
    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Lcom/google/bitcoin/core/AddressFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 657
    if-nez p1, :cond_1

    .line 659
    if-ne p2, v3, :cond_0

    .line 661
    const-string v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "input":Ljava/lang/String;
    new-instance v1, Lde/schildbach/wallet/ui/SendCoinsFragment$10;

    invoke-direct {v1, p0, v0, v0}, Lde/schildbach/wallet/ui/SendCoinsFragment$10;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment$10;->parse()V

    .line 695
    .end local v0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    if-ne p1, v1, :cond_2

    .line 687
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v1}, Lde/schildbach/wallet/PaymentIntent;->isBluetoothPaymentRequestUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    iget-object v1, v1, Lde/schildbach/wallet/PaymentIntent;->paymentRequestUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->requestPaymentRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 692
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-virtual {v2}, Lde/schildbach/wallet/PaymentIntent;->isBluetoothPaymentUrl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentEnableView:Landroid/widget/CheckBox;

    if-ne p2, v3, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 382
    check-cast v0, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    .line 383
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/WalletApplication;

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->application:Lde/schildbach/wallet/WalletApplication;

    .line 384
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getConfiguration()Lde/schildbach/wallet/Configuration;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    .line 385
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 386
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->contentResolver:Landroid/content/ContentResolver;

    .line 387
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    .line 388
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 389
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 394
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 396
    invoke-virtual {p0, v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->setRetainInstance(Z)V

    .line 397
    invoke-virtual {p0, v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->setHasOptionsMenu(Z)V

    .line 399
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    iput-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 401
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "backgroundThread"

    const/16 v10, 0xa

    invoke-direct {v8, v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->backgroundThread:Landroid/os/HandlerThread;

    .line 402
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->backgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 403
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->backgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->backgroundHandler:Landroid/os/Handler;

    .line 405
    if-eqz p1, :cond_0

    .line 407
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 448
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v8, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    invoke-virtual {v8}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 412
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 414
    .local v2, "intentUri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, "scheme":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "mimeType":Ljava/lang/String;
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    if-eqz v2, :cond_3

    const-string v8, "pandacoin"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 420
    invoke-direct {p0, v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->initStateFromBitcoinUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 414
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v7    # "scheme":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 422
    .restart local v3    # "mimeType":Ljava/lang/String;
    .restart local v7    # "scheme":Ljava/lang/String;
    :cond_3
    const-string v8, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENTREQUEST:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 424
    const-string v8, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v4, v8, v9

    check-cast v4, Landroid/nfc/NdefMessage;

    .line 425
    .local v4, "ndefMessage":Landroid/nfc/NdefMessage;
    sget-object v8, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENTREQUEST:Ljava/lang/String;

    invoke-static {v8, v4}, Lde/schildbach/wallet/util/Nfc;->extractMimePayload(Ljava/lang/String;Landroid/nfc/NdefMessage;)[B

    move-result-object v5

    .line 426
    .local v5, "ndefMessagePayload":[B
    invoke-direct {p0, v3, v5}, Lde/schildbach/wallet/ui/SendCoinsFragment;->initStateFromPaymentRequest(Ljava/lang/String;[B)V

    goto :goto_0

    .line 428
    .end local v4    # "ndefMessage":Landroid/nfc/NdefMessage;
    .end local v5    # "ndefMessagePayload":[B
    :cond_4
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENTREQUEST:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 430
    invoke-static {v1}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->paymentRequestFromIntent(Landroid/content/Intent;)[B

    move-result-object v6

    .line 432
    .local v6, "paymentRequest":[B
    if-eqz v2, :cond_5

    .line 433
    invoke-direct {p0, v3, v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->initStateFromIntentUri(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 434
    :cond_5
    if-eqz v6, :cond_6

    .line 435
    invoke-direct {p0, v3, v6}, Lde/schildbach/wallet/ui/SendCoinsFragment;->initStateFromPaymentRequest(Ljava/lang/String;[B)V

    goto :goto_0

    .line 437
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 439
    .end local v6    # "paymentRequest":[B
    :cond_7
    const-string v8, "payment_intent"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 441
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {p0, v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->initStateFromIntentExtras(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 445
    :cond_8
    invoke-static {}, Lde/schildbach/wallet/PaymentIntent;->blank()Lde/schildbach/wallet/PaymentIntent;

    move-result-object v8

    invoke-direct {p0, v8}, Lde/schildbach/wallet/ui/SendCoinsFragment;->updateStateFrom(Lde/schildbach/wallet/PaymentIntent;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 700
    const v1, 0x7f0e0006

    invoke-virtual {p2, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 702
    const v1, 0x7f0600ae

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->scanAction:Lcom/actionbarsherlock/view/MenuItem;

    .line 703
    const v1, 0x7f0600af

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->emptyAction:Lcom/actionbarsherlock/view/MenuItem;

    .line 705
    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 706
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->scanAction:Lcom/actionbarsherlock/view/MenuItem;

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 708
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 709
    return-void

    .line 706
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x8

    .line 453
    const v3, 0x7f03002c

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 455
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f06005e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeNameView:Landroid/widget/TextView;

    .line 456
    const v3, 0x7f06005f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeOrganizationView:Landroid/widget/TextView;

    .line 457
    const v3, 0x7f060060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->payeeVerifiedByView:Landroid/widget/TextView;

    .line 459
    const v3, 0x7f060061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    .line 460
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lde/schildbach/wallet/ui/SendCoinsFragment$AutoCompleteAddressAdapter;

    iget-object v5, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lde/schildbach/wallet/ui/SendCoinsFragment$AutoCompleteAddressAdapter;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressListener:Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 462
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressView:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingAddressListener:Lde/schildbach/wallet/ui/SendCoinsFragment$ReceivingAddressListener;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 464
    const v3, 0x7f060062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticView:Landroid/view/View;

    .line 465
    const v3, 0x7f060064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticAddressView:Landroid/widget/TextView;

    .line 466
    const v3, 0x7f060063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticLabelView:Landroid/widget/TextView;

    .line 468
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->receivingStaticView:Landroid/view/View;

    new-instance v4, Lde/schildbach/wallet/ui/SendCoinsFragment$6;

    invoke-direct {v4, p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$6;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 489
    const v3, 0x7f060065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/ui/CurrencyAmountView;

    .line 490
    .local v0, "btcAmountView":Lde/schildbach/wallet/ui/CurrencyAmountView;
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getBtcPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setCurrencySymbol(Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getBtcMaxPrecision()I

    move-result v3

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setInputPrecision(I)V

    .line 492
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getBtcPrecision()I

    move-result v3

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHintPrecision(I)V

    .line 493
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v3

    invoke-virtual {v0, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setShift(I)V

    .line 495
    const v3, 0x7f060067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/schildbach/wallet/ui/CurrencyAmountView;

    .line 496
    .local v1, "localAmountView":Lde/schildbach/wallet/ui/CurrencyAmountView;
    invoke-virtual {v1, v7}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setInputPrecision(I)V

    .line 497
    invoke-virtual {v1, v7}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHintPrecision(I)V

    .line 498
    new-instance v3, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-direct {v3, v0, v1}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;-><init>(Lde/schildbach/wallet/ui/CurrencyAmountView;Lde/schildbach/wallet/ui/CurrencyAmountView;)V

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    .line 499
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v4}, Lde/schildbach/wallet/Configuration;->getLastExchangeDirection()Z

    move-result v4

    invoke-virtual {v3, v4}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setExchangeDirection(Z)V

    .line 501
    const v3, 0x7f060069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->txFeeView:Landroid/widget/TextView;

    .line 503
    const v3, 0x7f06006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentEnableView:Landroid/widget/CheckBox;

    .line 504
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentEnableView:Landroid/widget/CheckBox;

    new-instance v4, Lde/schildbach/wallet/ui/SendCoinsFragment$7;

    invoke-direct {v4, p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$7;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 517
    const v3, 0x7f06006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->directPaymentMessageView:Landroid/widget/TextView;

    .line 519
    const v3, 0x7f06006c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionView:Landroid/widget/ListView;

    .line 520
    new-instance v3, Lde/schildbach/wallet/ui/TransactionsListAdapter;

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    iget-object v5, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    iget-object v6, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v6}, Lde/schildbach/wallet/WalletApplication;->maxConnectedPeers()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lde/schildbach/wallet/ui/TransactionsListAdapter;-><init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;IZ)V

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionListAdapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    .line 521
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionView:Landroid/widget/ListView;

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionListAdapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    const v3, 0x7f06005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewGo:Landroid/widget/Button;

    .line 524
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewGo:Landroid/widget/Button;

    new-instance v4, Lde/schildbach/wallet/ui/SendCoinsFragment$8;

    invoke-direct {v4, p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$8;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    iget-object v4, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewGo:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setNextFocusId(I)V

    .line 541
    const v3, 0x7f06005c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewCancel:Landroid/widget/Button;

    .line 542
    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->viewCancel:Landroid/widget/Button;

    new-instance v4, Lde/schildbach/wallet/ui/SendCoinsFragment$9;

    invoke-direct {v4, p0}, Lde/schildbach/wallet/ui/SendCoinsFragment$9;-><init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    const v3, 0x7f03002d

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->popupMessageView:Landroid/widget/TextView;

    .line 556
    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->backgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 606
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransaction:Lcom/google/bitcoin/core/Transaction;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransaction:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->sentTransactionConfidenceListener:Lcom/google/bitcoin/core/TransactionConfidence$Listener;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/TransactionConfidence;->removeEventListener(Lcom/google/bitcoin/core/TransactionConfidence$Listener;)Z

    .line 609
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 610
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 562
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 564
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->config:Lde/schildbach/wallet/Configuration;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->getExchangeDirection()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/Configuration;->setLastExchangeDirection(Z)V

    .line 565
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 598
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 599
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 714
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 725
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 717
    :pswitch_0
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->handleScan()V

    goto :goto_0

    .line 721
    :pswitch_1
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->handleEmpty()V

    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600ae
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 586
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setListener(Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;)V

    .line 588
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 590
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 591
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 570
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 572
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->activity:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/schildbach/wallet/AddressBookProvider;->contentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 574
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountCalculatorLink:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->amountsListener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setListener(Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;)V

    .line 576
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lde/schildbach/wallet/ui/SendCoinsFragment;->rateLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 578
    invoke-direct {p0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->updateView()V

    .line 579
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 615
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 617
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->saveInstanceState(Landroid/os/Bundle;)V

    .line 618
    return-void
.end method

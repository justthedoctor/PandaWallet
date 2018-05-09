.class public final Lde/schildbach/wallet/ui/WalletAddressFragment;
.super Landroid/support/v4/app/Fragment;
.source "WalletAddressFragment.java"


# instance fields
.field private activity:Landroid/support/v4/app/FragmentActivity;

.field private application:Lde/schildbach/wallet/WalletApplication;

.field private bitcoinAddressButton:Landroid/view/View;

.field private bitcoinAddressLabel:Landroid/widget/TextView;

.field private bitcoinAddressQrView:Landroid/widget/ImageView;

.field private config:Lde/schildbach/wallet/Configuration;

.field private lastSelectedAddress:Lcom/google/bitcoin/core/Address;

.field private nfcManager:Landroid/nfc/NfcManager;

.field private final prefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private qrCodeBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 152
    new-instance v0, Lde/schildbach/wallet/ui/WalletAddressFragment$3;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/WalletAddressFragment$3;-><init>(Lde/schildbach/wallet/ui/WalletAddressFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->prefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/WalletAddressFragment;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletAddressFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->activity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/WalletAddressFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletAddressFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletAddressFragment;->handleShowQRCode()V

    return-void
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/WalletAddressFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletAddressFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletAddressFragment;->updateView()V

    return-void
.end method

.method private handleShowQRCode()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->qrCodeBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/BitmapFragment;->show(Landroid/support/v4/app/FragmentManager;Landroid/graphics/Bitmap;)V

    .line 150
    return-void
.end method

.method private updateView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 128
    iget-object v3, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v3}, Lde/schildbach/wallet/WalletApplication;->determineSelectedAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v1

    .line 130
    .local v1, "selectedAddress":Lcom/google/bitcoin/core/Address;
    iget-object v3, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->lastSelectedAddress:Lcom/google/bitcoin/core/Address;

    invoke-virtual {v1, v3}, Lcom/google/bitcoin/core/Address;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->lastSelectedAddress:Lcom/google/bitcoin/core/Address;

    .line 134
    iget-object v3, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->bitcoinAddressLabel:Landroid/widget/TextView;

    const/4 v4, 0x4

    const/16 v5, 0xc

    invoke-static {v1, v4, v5}, Lde/schildbach/wallet/util/WalletUtils;->formatAddress(Lcom/google/bitcoin/core/Address;II)Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {v1, v6, v6, v6}, Lcom/google/bitcoin/uri/BitcoinURI;->convertToBitcoinURI(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "addressStr":Ljava/lang/String;
    const/high16 v3, 0x43800000    # 256.0f

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 140
    .local v2, "size":I
    invoke-static {v0, v2}, Lde/schildbach/wallet/util/Qr;->bitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->qrCodeBitmap:Landroid/graphics/Bitmap;

    .line 141
    iget-object v3, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->bitcoinAddressQrView:Landroid/widget/ImageView;

    iget-object v4, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->qrCodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v3, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->nfcManager:Landroid/nfc/NfcManager;

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lde/schildbach/wallet/util/Nfc;->publishUri(Landroid/nfc/NfcManager;Landroid/app/Activity;Ljava/lang/String;)Z

    .line 145
    .end local v0    # "addressStr":Ljava/lang/String;
    .end local v2    # "size":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 71
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/WalletApplication;

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->application:Lde/schildbach/wallet/WalletApplication;

    .line 73
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getConfiguration()Lde/schildbach/wallet/Configuration;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->config:Lde/schildbach/wallet/Configuration;

    .line 74
    const-string v0, "nfc"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->nfcManager:Landroid/nfc/NfcManager;

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v1, 0x7f030044

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->bitcoinAddressButton:Landroid/view/View;

    .line 82
    const v1, 0x7f060093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->bitcoinAddressLabel:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f060094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->bitcoinAddressQrView:Landroid/widget/ImageView;

    .line 85
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->bitcoinAddressButton:Landroid/view/View;

    new-instance v2, Lde/schildbach/wallet/ui/WalletAddressFragment$1;

    invoke-direct {v2, p0}, Lde/schildbach/wallet/ui/WalletAddressFragment$1;-><init>(Lde/schildbach/wallet/ui/WalletAddressFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->bitcoinAddressQrView:Landroid/widget/ImageView;

    new-instance v2, Lde/schildbach/wallet/ui/WalletAddressFragment$2;

    invoke-direct {v2, p0}, Lde/schildbach/wallet/ui/WalletAddressFragment$2;-><init>(Lde/schildbach/wallet/ui/WalletAddressFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->config:Lde/schildbach/wallet/Configuration;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->prefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/Configuration;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 121
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->nfcManager:Landroid/nfc/NfcManager;

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/Nfc;->unpublish(Landroid/nfc/NfcManager;Landroid/app/Activity;)V

    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 111
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->config:Lde/schildbach/wallet/Configuration;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment;->prefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/Configuration;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 113
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletAddressFragment;->updateView()V

    .line 114
    return-void
.end method

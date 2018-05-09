.class public Lde/schildbach/wallet/WalletBalanceWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WalletBalanceWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/math/BigInteger;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "appWidgetIds"    # [I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "balance"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x0

    .line 64
    new-instance v3, Lde/schildbach/wallet/Configuration;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-direct {v3, v7}, Lde/schildbach/wallet/Configuration;-><init>(Landroid/content/SharedPreferences;)V

    .line 65
    .local v3, "config":Lde/schildbach/wallet/Configuration;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getBtcPrecision()I

    move-result v7

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v8

    invoke-static {p3, v7, v8}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    .local v2, "balanceStr":Landroid/text/Editable;
    sget-object v7, Lde/schildbach/wallet/util/WalletUtils;->SMALLER_SPAN:Landroid/text/style/RelativeSizeSpan;

    invoke-static {v2, v7}, Lde/schildbach/wallet/util/WalletUtils;->formatSignificant(Landroid/text/Editable;Landroid/text/style/RelativeSizeSpan;)V

    .line 68
    move-object v1, p2

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v0, v1, v4

    .line 70
    .local v0, "appWidgetId":I
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f03003f

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 71
    .local v6, "views":Landroid/widget/RemoteViews;
    const v7, 0x7f06009b

    invoke-virtual {v3}, Lde/schildbach/wallet/Configuration;->getBtcPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 72
    const v7, 0x7f06009c

    invoke-virtual {v6, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 73
    const v7, 0x7f06009a

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lde/schildbach/wallet/ui/WalletActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v10, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 75
    const v7, 0x7f06009d

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lde/schildbach/wallet/ui/RequestCoinsActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v10, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 77
    const v7, 0x7f06009e

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lde/schildbach/wallet/ui/SendCoinsActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v10, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 79
    const v7, 0x7f06009f

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lde/schildbach/wallet/ui/SendCoinsQrActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v10, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 82
    invoke-virtual {p1, v0, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "appWidgetId":I
    .end local v6    # "views":Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/WalletApplication;

    .line 55
    .local v0, "application":Lde/schildbach/wallet/WalletApplication;
    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v2

    .line 56
    .local v2, "wallet":Lcom/google/bitcoin/core/Wallet;
    sget-object v3, Lcom/google/bitcoin/core/Wallet$BalanceType;->ESTIMATED:Lcom/google/bitcoin/core/Wallet$BalanceType;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Wallet;->getBalance(Lcom/google/bitcoin/core/Wallet$BalanceType;)Ljava/math/BigInteger;

    move-result-object v1

    .line 58
    .local v1, "balance":Ljava/math/BigInteger;
    invoke-static {p1, p2, p3, v1}, Lde/schildbach/wallet/WalletBalanceWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/math/BigInteger;)V

    .line 59
    return-void
.end method

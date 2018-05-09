.class public final Lde/schildbach/wallet/integration/android/BitcoinIntegration;
.super Ljava/lang/Object;
.source "BitcoinIntegration.java"


# static fields
.field private static final INTENT_EXTRA_PAYMENT:Ljava/lang/String; = "payment"

.field private static final INTENT_EXTRA_PAYMENTREQUEST:Ljava/lang/String; = "paymentrequest"

.field private static final INTENT_EXTRA_TRANSACTION_HASH:Ljava/lang/String; = "transaction_hash"

.field private static final MIMETYPE_PAYMENTREQUEST:Ljava/lang/String; = "application/pandacoin-paymentrequest"

.field private static final NANOCOINS_PER_COIN:I = 0x5f5e100


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeBitcoinUriIntent(Ljava/lang/String;Ljava/lang/Long;)Landroid/content/Intent;
    .locals 10
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/Long;

    .prologue
    const-wide/32 v8, 0x5f5e100

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pandacoin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .local v1, "uri":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    if-eqz p1, :cond_1

    .line 236
    const-string v2, "?amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d.%08d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    rem-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method private static makePaymentRequestIntent([B)Landroid/content/Intent;
    .locals 2
    .param p0, "paymentRequest"    # [B

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "application/pandacoin-paymentrequest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v1, "paymentrequest"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 249
    return-object v0
.end method

.method public static paymentFromResult(Landroid/content/Intent;)[B
    .locals 2
    .param p0, "result"    # Landroid/content/Intent;

    .prologue
    .line 192
    const-string v1, "payment"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 194
    .local v0, "payment":[B
    return-object v0
.end method

.method public static paymentRequestFromIntent(Landroid/content/Intent;)[B
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    const-string v1, "paymentrequest"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 164
    .local v0, "paymentRequest":[B
    return-object v0
.end method

.method public static paymentToResult(Landroid/content/Intent;[B)V
    .locals 1
    .param p0, "result"    # Landroid/content/Intent;
    .param p1, "payment"    # [B

    .prologue
    .line 177
    const-string v0, "payment"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 178
    return-void
.end method

.method private static redirectToDownload(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 272
    const-string v3, "No pandacoin application found.\nPlease install pandacoin Wallet."

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 274
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://details?id=cc.pandacoin.wallet"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .local v1, "marketIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "https://github.com/pandacoin-official/pandacoin-wallet/releases"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 278
    .local v0, "binaryIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 279
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 280
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static request(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->makeBitcoinUriIntent(Ljava/lang/String;Ljava/lang/Long;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->start(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public static request(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "amount"    # J

    .prologue
    .line 64
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->makeBitcoinUriIntent(Ljava/lang/String;Ljava/lang/Long;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->start(Landroid/content/Context;Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public static request(Landroid/content/Context;[B)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paymentRequest"    # [B

    .prologue
    .line 79
    invoke-static {p1}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->makePaymentRequestIntent([B)Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->start(Landroid/content/Context;Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public static requestForResult(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->makeBitcoinUriIntent(Ljava/lang/String;Ljava/lang/Long;)Landroid/content/Intent;

    move-result-object v0

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, p1, v0}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->startForResult(Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public static requestForResult(Landroid/app/Activity;ILjava/lang/String;J)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "amount"    # J

    .prologue
    .line 125
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, v1}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->makeBitcoinUriIntent(Ljava/lang/String;Ljava/lang/Long;)Landroid/content/Intent;

    move-result-object v0

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, p1, v0}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->startForResult(Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public static requestForResult(Landroid/app/Activity;I[B)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "paymentRequest"    # [B

    .prologue
    .line 148
    invoke-static {p2}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->makePaymentRequestIntent([B)Landroid/content/Intent;

    move-result-object v0

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, p1, v0}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->startForResult(Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 151
    return-void
.end method

.method private static start(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 255
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {p0}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->redirectToDownload(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static startForResult(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 264
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {p0}, Lde/schildbach/wallet/integration/android/BitcoinIntegration;->redirectToDownload(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static transactionHashFromResult(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "result"    # Landroid/content/Intent;

    .prologue
    .line 223
    const-string v1, "transaction_hash"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "txHash":Ljava/lang/String;
    return-object v0
.end method

.method public static transactionHashToResult(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p0, "result"    # Landroid/content/Intent;
    .param p1, "txHash"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v0, "transaction_hash"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    return-void
.end method

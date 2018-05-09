.class public final Lde/schildbach/wallet/ui/SendCoinsQrActivity;
.super Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;
.source "SendCoinsQrActivity.java"


# static fields
.field private static final REQUEST_CODE_SCAN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 51
    const-string v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "input":Ljava/lang/String;
    new-instance v1, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;

    invoke-direct {v1, p0, v0}, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;-><init>(Lde/schildbach/wallet/ui/SendCoinsQrActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/SendCoinsQrActivity$1;->parse()V

    .line 91
    .end local v0    # "input":Ljava/lang/String;
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/SendCoinsQrActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lde/schildbach/wallet/ui/AbstractOnDemandServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/schildbach/wallet/ui/ScanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/schildbach/wallet/ui/SendCoinsQrActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    return-void
.end method

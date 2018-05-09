.class public abstract Lde/schildbach/wallet/ui/AbstractBindServiceActivity;
.super Lde/schildbach/wallet/ui/AbstractWalletActivity;
.source "AbstractBindServiceActivity.java"


# instance fields
.field private blockchainService:Lde/schildbach/wallet/service/BlockchainService;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;-><init>()V

    .line 38
    new-instance v0, Lde/schildbach/wallet/ui/AbstractBindServiceActivity$1;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity$1;-><init>(Lde/schildbach/wallet/ui/AbstractBindServiceActivity;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lde/schildbach/wallet/ui/AbstractBindServiceActivity;Lde/schildbach/wallet/service/BlockchainService;)Lde/schildbach/wallet/service/BlockchainService;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/AbstractBindServiceActivity;
    .param p1, "x1"    # Lde/schildbach/wallet/service/BlockchainService;

    .prologue
    .line 33
    iput-object p1, p0, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->blockchainService:Lde/schildbach/wallet/service/BlockchainService;

    return-object p1
.end method


# virtual methods
.method protected getBlockchainService()Lde/schildbach/wallet/service/BlockchainService;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->blockchainService:Lde/schildbach/wallet/service/BlockchainService;

    return-object v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 66
    invoke-super {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onPause()V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->onResume()V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 59
    return-void
.end method

.class Lde/schildbach/wallet/ui/AbstractBindServiceActivity$1;
.super Ljava/lang/Object;
.source "AbstractBindServiceActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/AbstractBindServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/AbstractBindServiceActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lde/schildbach/wallet/ui/AbstractBindServiceActivity$1;->this$0:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 43
    iget-object v0, p0, Lde/schildbach/wallet/ui/AbstractBindServiceActivity$1;->this$0:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    check-cast p2, Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;->getService()Lde/schildbach/wallet/service/BlockchainService;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->access$002(Lde/schildbach/wallet/ui/AbstractBindServiceActivity;Lde/schildbach/wallet/service/BlockchainService;)Lde/schildbach/wallet/service/BlockchainService;

    .line 44
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 49
    iget-object v0, p0, Lde/schildbach/wallet/ui/AbstractBindServiceActivity$1;->this$0:Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->access$002(Lde/schildbach/wallet/ui/AbstractBindServiceActivity;Lde/schildbach/wallet/service/BlockchainService;)Lde/schildbach/wallet/service/BlockchainService;

    .line 50
    return-void
.end method

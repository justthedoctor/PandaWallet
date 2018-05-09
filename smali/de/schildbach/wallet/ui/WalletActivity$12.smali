.class Lde/schildbach/wallet/ui/WalletActivity$12;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->createLowStorageAlertDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActivity;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$12;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 570
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$12;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->startActivity(Landroid/content/Intent;)V

    .line 571
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$12;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/WalletActivity;->finish()V

    .line 572
    return-void
.end method

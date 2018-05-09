.class Lde/schildbach/wallet/ui/WalletActivity$10;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->createExportKeysDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActivity;

.field final synthetic val$passwordView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$10;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    iput-object p2, p0, Lde/schildbach/wallet/ui/WalletActivity$10;->val$passwordView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$10;->val$passwordView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 527
    return-void
.end method

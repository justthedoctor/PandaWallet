.class Lde/schildbach/wallet/ui/WalletActivity$18;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->importPrivateKeys(Ljava/io/File;Ljava/lang/String;)V
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
    .line 854
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$18;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 858
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$18;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->showDialog(I)V

    .line 859
    return-void
.end method

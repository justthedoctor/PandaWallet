.class Lde/schildbach/wallet/ui/WalletActivity$19;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->exportPrivateKeys(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActivity;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$19;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    iput-object p2, p0, Lde/schildbach/wallet/ui/WalletActivity$19;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 900
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActivity$19;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletActivity$19;->val$file:Ljava/io/File;

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/WalletActivity;->access$500(Lde/schildbach/wallet/ui/WalletActivity;Ljava/io/File;)V

    .line 901
    return-void
.end method

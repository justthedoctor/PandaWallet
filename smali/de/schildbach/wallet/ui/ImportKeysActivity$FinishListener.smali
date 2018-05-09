.class Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;
.super Ljava/lang/Object;
.source "ImportKeysActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/ImportKeysActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinishListener"
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/ImportKeysActivity;


# direct methods
.method private constructor <init>(Lde/schildbach/wallet/ui/ImportKeysActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;->this$0:Lde/schildbach/wallet/ui/ImportKeysActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/schildbach/wallet/ui/ImportKeysActivity;Lde/schildbach/wallet/ui/ImportKeysActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lde/schildbach/wallet/ui/ImportKeysActivity;
    .param p2, "x1"    # Lde/schildbach/wallet/ui/ImportKeysActivity$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;-><init>(Lde/schildbach/wallet/ui/ImportKeysActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 256
    iget-object v0, p0, Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;->this$0:Lde/schildbach/wallet/ui/ImportKeysActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/ImportKeysActivity;->finish()V

    .line 257
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lde/schildbach/wallet/ui/ImportKeysActivity$FinishListener;->this$0:Lde/schildbach/wallet/ui/ImportKeysActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/ImportKeysActivity;->finish()V

    .line 251
    return-void
.end method

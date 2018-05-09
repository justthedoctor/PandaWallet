.class Lde/schildbach/wallet/ui/ImportKeysActivity$4;
.super Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;
.source "ImportKeysActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/ImportKeysActivity;->prepareImportKeysDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/ImportKeysActivity;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ImportKeysActivity;Landroid/widget/TextView;Landroid/app/AlertDialog;)V
    .locals 0
    .param p2, "x0"    # Landroid/widget/TextView;
    .param p3, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 148
    iput-object p1, p0, Lde/schildbach/wallet/ui/ImportKeysActivity$4;->this$0:Lde/schildbach/wallet/ui/ImportKeysActivity;

    invoke-direct {p0, p2, p3}, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;-><init>(Landroid/widget/TextView;Landroid/app/AlertDialog;)V

    return-void
.end method


# virtual methods
.method protected hasFile()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

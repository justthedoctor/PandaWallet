.class Lde/schildbach/wallet/util/BitmapFragment$1;
.super Ljava/lang/Object;
.source "BitmapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/util/BitmapFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/util/BitmapFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/util/BitmapFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lde/schildbach/wallet/util/BitmapFragment$1;->this$0:Lde/schildbach/wallet/util/BitmapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lde/schildbach/wallet/util/BitmapFragment$1;->this$0:Lde/schildbach/wallet/util/BitmapFragment;

    invoke-virtual {v0}, Lde/schildbach/wallet/util/BitmapFragment;->dismiss()V

    .line 88
    return-void
.end method

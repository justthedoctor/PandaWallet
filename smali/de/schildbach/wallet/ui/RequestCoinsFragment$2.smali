.class Lde/schildbach/wallet/ui/RequestCoinsFragment$2;
.super Ljava/lang/Object;
.source "RequestCoinsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/RequestCoinsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$2;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$2;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$2;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->access$400(Lde/schildbach/wallet/ui/RequestCoinsFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/BitmapFragment;->show(Landroid/support/v4/app/FragmentManager;Landroid/graphics/Bitmap;)V

    .line 164
    return-void
.end method

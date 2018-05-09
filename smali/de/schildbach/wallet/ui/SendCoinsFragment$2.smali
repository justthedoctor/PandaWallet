.class Lde/schildbach/wallet/ui/SendCoinsFragment$2;
.super Landroid/database/ContentObserver;
.source "SendCoinsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 293
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$2;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$2;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 298
    return-void
.end method

.class Lde/schildbach/wallet/ui/ScanActivity$3$1;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/ScanActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/ScanActivity$3;

.field final synthetic val$framingRect:Landroid/graphics/Rect;

.field final synthetic val$framingRectInPreview:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ScanActivity$3;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$3$1;->this$1:Lde/schildbach/wallet/ui/ScanActivity$3;

    iput-object p2, p0, Lde/schildbach/wallet/ui/ScanActivity$3$1;->val$framingRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lde/schildbach/wallet/ui/ScanActivity$3$1;->val$framingRectInPreview:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$3$1;->this$1:Lde/schildbach/wallet/ui/ScanActivity$3;

    iget-object v0, v0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/ScanActivity;->access$300(Lde/schildbach/wallet/ui/ScanActivity;)Lde/schildbach/wallet/ui/ScannerView;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity$3$1;->val$framingRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lde/schildbach/wallet/ui/ScanActivity$3$1;->val$framingRectInPreview:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/ScannerView;->setFraming(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 229
    return-void
.end method

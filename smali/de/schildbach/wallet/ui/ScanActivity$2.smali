.class Lde/schildbach/wallet/ui/ScanActivity$2;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/ScanActivity;->handleResult(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/ScanActivity;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ScanActivity;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$2;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$2;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/ScanActivity;->finish()V

    .line 207
    return-void
.end method

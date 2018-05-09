.class Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$3;
.super Ljava/lang/Object;
.source "SendCoinsOfflineTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$3;->this$1:Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1$3;->this$1:Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;

    iget-object v0, v0, Lde/schildbach/wallet/ui/SendCoinsOfflineTask$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsOfflineTask;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/SendCoinsOfflineTask;->onFailure()V

    .line 90
    return-void
.end method

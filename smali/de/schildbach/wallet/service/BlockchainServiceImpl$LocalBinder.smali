.class public Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;
.super Landroid/os/Binder;
.source "BlockchainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/service/BlockchainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;


# direct methods
.method public constructor <init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lde/schildbach/wallet/service/BlockchainService;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$LocalBinder;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    return-object v0
.end method

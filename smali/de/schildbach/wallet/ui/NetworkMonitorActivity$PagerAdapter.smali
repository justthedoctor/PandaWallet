.class Lde/schildbach/wallet/ui/NetworkMonitorActivity$PagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "NetworkMonitorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/NetworkMonitorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/NetworkMonitorActivity;


# direct methods
.method public constructor <init>(Lde/schildbach/wallet/ui/NetworkMonitorActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 92
    iput-object p1, p0, Lde/schildbach/wallet/ui/NetworkMonitorActivity$PagerAdapter;->this$0:Lde/schildbach/wallet/ui/NetworkMonitorActivity;

    .line 93
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    iget-object v0, p0, Lde/schildbach/wallet/ui/NetworkMonitorActivity$PagerAdapter;->this$0:Lde/schildbach/wallet/ui/NetworkMonitorActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->access$000(Lde/schildbach/wallet/ui/NetworkMonitorActivity;)Lde/schildbach/wallet/ui/PeerListFragment;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/NetworkMonitorActivity$PagerAdapter;->this$0:Lde/schildbach/wallet/ui/NetworkMonitorActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/NetworkMonitorActivity;->access$100(Lde/schildbach/wallet/ui/NetworkMonitorActivity;)Lde/schildbach/wallet/ui/BlockListFragment;

    move-result-object v0

    goto :goto_0
.end method

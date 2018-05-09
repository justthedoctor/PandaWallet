.class Lde/schildbach/wallet/ui/PeerListFragment$ReverseDnsLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "PeerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/PeerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseDnsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/net/InetAddress;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 317
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 319
    iput-object p2, p0, Lde/schildbach/wallet/ui/PeerListFragment$ReverseDnsLoader;->address:Ljava/net/InetAddress;

    .line 320
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/PeerListFragment$ReverseDnsLoader;->loadInBackground()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lde/schildbach/wallet/ui/PeerListFragment$ReverseDnsLoader;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

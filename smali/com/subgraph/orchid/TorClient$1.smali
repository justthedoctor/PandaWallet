.class Lcom/subgraph/orchid/TorClient$1;
.super Ljava/lang/Object;
.source "TorClient.java"

# interfaces
.implements Lcom/subgraph/orchid/TorInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/TorClient;->createReadyFlagInitializationListener()Lcom/subgraph/orchid/TorInitializationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/TorClient;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorClient;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/subgraph/orchid/TorClient$1;->this$0:Lcom/subgraph/orchid/TorClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initializationCompleted()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/subgraph/orchid/TorClient$1;->this$0:Lcom/subgraph/orchid/TorClient;

    invoke-static {v0}, Lcom/subgraph/orchid/TorClient;->access$000(Lcom/subgraph/orchid/TorClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 179
    return-void
.end method

.method public initializationProgress(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "percent"    # I

    .prologue
    .line 176
    return-void
.end method

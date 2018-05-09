.class Lcom/subgraph/orchid/dashboard/Dashboard$1;
.super Ljava/lang/Object;
.source "Dashboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/dashboard/Dashboard;->createAcceptLoopRunnable(Ljava/net/ServerSocket;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/dashboard/Dashboard;

.field final synthetic val$ss:Ljava/net/ServerSocket;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/dashboard/Dashboard;Ljava/net/ServerSocket;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/subgraph/orchid/dashboard/Dashboard$1;->this$0:Lcom/subgraph/orchid/dashboard/Dashboard;

    iput-object p2, p0, Lcom/subgraph/orchid/dashboard/Dashboard$1;->val$ss:Ljava/net/ServerSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard$1;->this$0:Lcom/subgraph/orchid/dashboard/Dashboard;

    iget-object v1, p0, Lcom/subgraph/orchid/dashboard/Dashboard$1;->val$ss:Ljava/net/ServerSocket;

    invoke-static {v0, v1}, Lcom/subgraph/orchid/dashboard/Dashboard;->access$000(Lcom/subgraph/orchid/dashboard/Dashboard;Ljava/net/ServerSocket;)V

    .line 138
    return-void
.end method

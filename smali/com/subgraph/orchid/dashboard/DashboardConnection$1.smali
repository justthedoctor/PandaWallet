.class Lcom/subgraph/orchid/dashboard/DashboardConnection$1;
.super Ljava/lang/Object;
.source "DashboardConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/dashboard/DashboardConnection;->createRefreshRunnable(Ljava/io/PrintWriter;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/dashboard/DashboardConnection;

.field final synthetic val$writer:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/dashboard/DashboardConnection;Ljava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection$1;->this$0:Lcom/subgraph/orchid/dashboard/DashboardConnection;

    iput-object p2, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection$1;->val$writer:Ljava/io/PrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection$1;->this$0:Lcom/subgraph/orchid/dashboard/DashboardConnection;

    iget-object v1, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection$1;->val$writer:Ljava/io/PrintWriter;

    invoke-static {v0, v1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->access$000(Lcom/subgraph/orchid/dashboard/DashboardConnection;Ljava/io/PrintWriter;)V

    .line 127
    return-void
.end method

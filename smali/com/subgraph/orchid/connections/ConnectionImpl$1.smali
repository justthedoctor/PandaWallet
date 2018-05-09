.class Lcom/subgraph/orchid/connections/ConnectionImpl$1;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/connections/ConnectionImpl;->createReadCellsRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/connections/ConnectionImpl;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/connections/ConnectionImpl;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl$1;->this$0:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionImpl$1;->this$0:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-static {v1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->access$000(Lcom/subgraph/orchid/connections/ConnectionImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/subgraph/orchid/connections/ConnectionImpl;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception processing incoming cells on connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.class Lcom/subgraph/orchid/sockets/OrchidSocketFactory$1;
.super Ljava/net/Socket;
.source "OrchidSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->createSocketInstance()Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/sockets/OrchidSocketFactory;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/sockets/OrchidSocketFactory;Ljava/net/SocketImpl;)V
    .locals 0
    .param p2, "x0"    # Ljava/net/SocketImpl;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory$1;->this$0:Lcom/subgraph/orchid/sockets/OrchidSocketFactory;

    invoke-direct {p0, p2}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    return-void
.end method

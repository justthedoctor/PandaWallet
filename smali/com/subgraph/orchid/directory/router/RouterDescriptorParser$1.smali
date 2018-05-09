.class Lcom/subgraph/orchid/directory/router/RouterDescriptorParser$1;
.super Ljava/lang/Object;
.source "RouterDescriptorParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser$1;->this$0:Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endOfDocument()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public parseKeywordLine()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser$1;->this$0:Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->access$000(Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;)V

    .line 35
    return-void
.end method

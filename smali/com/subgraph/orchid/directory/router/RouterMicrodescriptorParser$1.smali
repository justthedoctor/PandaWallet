.class Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser$1;
.super Ljava/lang/Object;
.source "RouterMicrodescriptorParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser$1;->this$0:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endOfDocument()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser$1;->this$0:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->access$100(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;)Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser$1;->this$0:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser$1;->this$0:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;

    invoke-static {v1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->access$100(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;)Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->access$200(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;)V

    .line 35
    :cond_0
    return-void
.end method

.method public parseKeywordLine()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser$1;->this$0:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;->access$000(Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;)V

    .line 30
    return-void
.end method

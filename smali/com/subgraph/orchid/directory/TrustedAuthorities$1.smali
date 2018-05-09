.class Lcom/subgraph/orchid/directory/TrustedAuthorities$1;
.super Ljava/lang/Object;
.source "TrustedAuthorities.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/directory/TrustedAuthorities;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/directory/TrustedAuthorities;

.field final synthetic val$parser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/TrustedAuthorities;Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/subgraph/orchid/directory/TrustedAuthorities$1;->this$0:Lcom/subgraph/orchid/directory/TrustedAuthorities;

    iput-object p2, p0, Lcom/subgraph/orchid/directory/TrustedAuthorities$1;->val$parser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endOfDocument()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public parseKeywordLine()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/subgraph/orchid/directory/TrustedAuthorities$1;->this$0:Lcom/subgraph/orchid/directory/TrustedAuthorities;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/TrustedAuthorities$1;->val$parser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-static {v0, v1}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->access$000(Lcom/subgraph/orchid/directory/TrustedAuthorities;Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V

    return-void
.end method

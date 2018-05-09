.class Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$CountryCodeFilter;
.super Ljava/lang/Object;
.source "ConfigNodeFilter.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/path/RouterFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CountryCodeFilter"
.end annotation


# instance fields
.field private final countryCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$CountryCodeFilter;->countryCode:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Router;)Z
    .locals 2
    .param p1, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$CountryCodeFilter;->countryCode:Ljava/lang/String;

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

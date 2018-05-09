.class public Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
.super Ljava/lang/Object;
.source "ExchangeRatesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ExchangeRatesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExchangeRate"
.end annotation


# instance fields
.field public final currencyCode:Ljava/lang/String;

.field public final rate:Ljava/math/BigInteger;

.field public final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyCode"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "rate"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->rate:Ljava/math/BigInteger;

    .line 71
    iput-object p3, p0, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->source:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->rate:Ljava/math/BigInteger;

    invoke-static {v1}, Lde/schildbach/wallet/util/GenericUtils;->formatDebugValue(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

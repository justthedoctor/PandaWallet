.class public Lcom/google/bitcoin/uri/OptionalFieldValidationException;
.super Lcom/google/bitcoin/uri/BitcoinURIParseException;
.source "OptionalFieldValidationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method

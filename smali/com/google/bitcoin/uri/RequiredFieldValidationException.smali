.class public Lcom/google/bitcoin/uri/RequiredFieldValidationException;
.super Lcom/google/bitcoin/uri/BitcoinURIParseException;
.source "RequiredFieldValidationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method

.class public Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;
.super Ljava/lang/Object;
.source "PaymentSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/payments/PaymentSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ack"
.end annotation


# instance fields
.field private memo:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/bitcoin/protocols/payments/PaymentSession;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/payments/PaymentSession;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/google/bitcoin/protocols/payments/PaymentSession;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "memo"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;->this$0:Lcom/google/bitcoin/protocols/payments/PaymentSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p2, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;->memo:Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method public getMemo()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;->memo:Ljava/lang/String;

    return-object v0
.end method

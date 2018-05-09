.class public abstract Lde/schildbach/wallet/ui/InputParser;
.super Ljava/lang/Object;
.source "InputParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/InputParser$StreamInputParser;,
        Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;,
        Lde/schildbach/wallet/ui/InputParser$StringInputParser;
    }
.end annotation


# static fields
.field private static final PATTERN_BITCOIN_ADDRESS:Ljava/util/regex/Pattern;

.field private static final PATTERN_PRIVATE_KEY:Ljava/util/regex/Pattern;

.field private static final PATTERN_TRANSACTION:Ljava/util/regex/Pattern;

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const-class v0, Lde/schildbach/wallet/ui/InputParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/InputParser;->log:Lorg/slf4j/Logger;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/bitcoin/core/Base58;->ALPHABET:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]{20,40}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/InputParser;->PATTERN_BITCOIN_ADDRESS:Ljava/util/regex/Pattern;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/bitcoin/core/Base58;->ALPHABET:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]{50,51}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/InputParser;->PATTERN_PRIVATE_KEY:Ljava/util/regex/Pattern;

    .line 342
    const-string v0, "[0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ$\\*\\+\\-\\.\\/\\:]{100,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/InputParser;->PATTERN_TRANSACTION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lde/schildbach/wallet/ui/InputParser;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lde/schildbach/wallet/ui/InputParser;->PATTERN_BITCOIN_ADDRESS:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lde/schildbach/wallet/ui/InputParser;->PATTERN_PRIVATE_KEY:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lde/schildbach/wallet/ui/InputParser;->PATTERN_TRANSACTION:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method protected cannotClassify(Ljava/lang/String;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 326
    const v0, 0x7f0b00b5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lde/schildbach/wallet/ui/InputParser;->error(I[Ljava/lang/Object;)V

    .line 327
    return-void
.end method

.method protected varargs dialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;II[Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dismissListener"    # Landroid/content/DialogInterface$OnClickListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "titleResId"    # I
    .param p4, "messageResId"    # I
    .param p5, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 332
    new-instance v0, Lde/schildbach/wallet/ui/DialogBuilder;

    invoke-direct {v0, p1}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 333
    .local v0, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    if-eqz p3, :cond_0

    .line 334
    invoke-virtual {v0, p3}, Lde/schildbach/wallet/ui/DialogBuilder;->setTitle(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 335
    :cond_0
    invoke-virtual {p1, p4, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 336
    invoke-virtual {v0, p2}, Lde/schildbach/wallet/ui/DialogBuilder;->singleDismissButton(Landroid/content/DialogInterface$OnClickListener;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 337
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/DialogBuilder;->show()Landroid/app/AlertDialog;

    .line 338
    return-void
.end method

.method protected varargs abstract error(I[Ljava/lang/Object;)V
.end method

.method protected abstract handleDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .param p1    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method protected abstract handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    .param p1    # Lde/schildbach/wallet/PaymentIntent;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract parse()V
.end method

.method protected final parseAndHandlePaymentRequest([B)V
    .locals 1
    .param p1, "serializedPaymentRequest"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p1}, Lde/schildbach/wallet/util/PaymentProtocol;->parsePaymentRequest([B)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v0

    .line 315
    .local v0, "paymentIntent":Lde/schildbach/wallet/PaymentIntent;
    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/InputParser;->handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V

    .line 316
    return-void
.end method

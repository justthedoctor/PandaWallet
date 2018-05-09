.class public Lch/qos/logback/core/pattern/FormatInfo;
.super Ljava/lang/Object;


# instance fields
.field private leftPad:Z

.field private leftTruncate:Z

.field private max:I

.field private min:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    const v0, 0x7fffffff

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    iput-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    iput-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    const v0, 0x7fffffff

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    iput-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    iput-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    iput p2, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    const v0, 0x7fffffff

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    iput-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    iput-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    iput p2, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    iput-boolean p3, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    iput-boolean p4, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/pattern/FormatInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lch/qos/logback/core/pattern/FormatInfo;

    invoke-direct {v2}, Lch/qos/logback/core/pattern/FormatInfo;-><init>()V

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq v3, v1, :cond_2

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Formatting string ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] should not end with \'.\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p0, v1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    iput v1, v2, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    iput v0, v2, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    :cond_4
    :goto_1
    return-object v2

    :cond_5
    neg-int v1, v1

    iput v1, v2, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    iput-boolean v5, v2, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    goto :goto_0

    :cond_6
    neg-int v0, v0

    iput v0, v2, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    iput-boolean v5, v2, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lch/qos/logback/core/pattern/FormatInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lch/qos/logback/core/pattern/FormatInfo;

    iget v2, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    iget v3, p1, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    iget v3, p1, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    iget-boolean v3, p1, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    iget-boolean v3, p1, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isLeftPad()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    return v0
.end method

.method public isLeftTruncate()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    return v0
.end method

.method public setLeftPad(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    return-void
.end method

.method public setLeftTruncate(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    return-void
.end method

.method public setMin(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FormatInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

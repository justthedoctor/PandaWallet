.class Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/classic/android/ASaxEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StatePassFilter"
.end annotation


# instance fields
.field private _depth:I

.field private final _states:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_states:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkEnd(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_states:[Ljava/lang/String;

    iget v2, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    iget-object v2, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_states:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkStart(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    iget-object v1, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_states:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_states:[Ljava/lang/String;

    iget v1, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public depth()I
    .locals 1

    iget v0, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    return v0
.end method

.method public passed()Z
    .locals 2

    iget v0, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    iget-object v1, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_states:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_depth:I

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/android/ASaxEventRecorder$StatePassFilter;->_states:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.class public Lcom/sigmob/sdk/videoAd/d;
.super Lcom/czhj/sdk/common/track/AdTracker;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/sdk/common/track/AdTracker;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/sigmob/sdk/videoAd/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 2

    sget-object v0, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->QUARTILE_EVENT:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/czhj/sdk/common/track/AdTracker;-><init>(Lcom/czhj/sdk/common/track/AdTracker$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkArgument(Z)Z

    iput p2, p0, Lcom/sigmob/sdk/videoAd/d;->a:F

    return-void
.end method

.method private a()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/videoAd/d;->a:F

    return v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/videoAd/d;",
            ">;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/videoAd/d;",
            ">;"
        }
    .end annotation

    .line 3
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_3

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance p4, Lcom/sigmob/sdk/videoAd/d;

    invoke-direct {p4, p1, p2}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/sigmob/sdk/videoAd/d;

    invoke-virtual {p5, p4}, Lcom/sigmob/sdk/videoAd/d;->a(Lcom/sigmob/sdk/videoAd/d;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p5}, Lcom/czhj/sdk/common/track/AdTracker;->isTracked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p3

    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/videoAd/d;)I
    .locals 4

    .line 2
    invoke-direct {p1}, Lcom/sigmob/sdk/videoAd/d;->a()F

    move-result p1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/d;->a()F

    move-result v0

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sigmob/sdk/videoAd/d;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/d;->a(Lcom/sigmob/sdk/videoAd/d;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/sigmob/sdk/videoAd/d;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getUrl()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%2f: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

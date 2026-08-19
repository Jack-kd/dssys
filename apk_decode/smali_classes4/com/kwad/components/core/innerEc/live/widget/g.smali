.class public abstract Lcom/kwad/components/core/innerEc/live/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/innerEc/live/widget/g$d;,
        Lcom/kwad/components/core/innerEc/live/widget/g$a;,
        Lcom/kwad/components/core/innerEc/live/widget/g$f;,
        Lcom/kwad/components/core/innerEc/live/widget/g$b;,
        Lcom/kwad/components/core/innerEc/live/widget/g$c;,
        Lcom/kwad/components/core/innerEc/live/widget/g$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static n(Ljava/util/List;)Z
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/innerEc/live/widget/k;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/kwad/components/core/innerEc/live/widget/k;

    .line 26
    .line 27
    iget v2, v1, Lcom/kwad/components/core/innerEc/live/widget/k;->aac:F

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    cmpg-float v2, v2, v3

    .line 31
    .line 32
    if-gtz v2, :cond_2

    .line 33
    .line 34
    return v0

    .line 35
    :cond_2
    iget v1, v1, Lcom/kwad/components/core/innerEc/live/widget/k;->aab:F

    .line 36
    .line 37
    cmpg-float v1, v1, v3

    .line 38
    .line 39
    if-gtz v1, :cond_1

    .line 40
    .line 41
    return v0

    .line 42
    :cond_3
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_4
    :goto_0
    return v0
.end method

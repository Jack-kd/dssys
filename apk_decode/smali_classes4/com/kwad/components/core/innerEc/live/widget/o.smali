.class public final Lcom/kwad/components/core/innerEc/live/widget/o;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# instance fields
.field private Fx:I

.field private aaB:F

.field private aaC:F

.field private aaD:Z

.field private mRadius:F


# direct methods
.method public constructor <init>(FFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 p1, 0x40400000    # 3.0f

    .line 5
    .line 6
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/o;->mRadius:F

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lcom/kwad/components/core/innerEc/live/widget/o;->aaB:F

    .line 10
    .line 11
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/o;->aaC:F

    .line 12
    .line 13
    iput p4, p0, Lcom/kwad/components/core/innerEc/live/widget/o;->Fx:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final aO(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/o;->aaD:Z

    .line 3
    .line 4
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/o;->aaD:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/o;->mRadius:F

    .line 7
    .line 8
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/widget/o;->aaB:F

    .line 9
    .line 10
    iget v2, p0, Lcom/kwad/components/core/innerEc/live/widget/o;->aaC:F

    .line 11
    .line 12
    iget v3, p0, Lcom/kwad/components/core/innerEc/live/widget/o;->Fx:I

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

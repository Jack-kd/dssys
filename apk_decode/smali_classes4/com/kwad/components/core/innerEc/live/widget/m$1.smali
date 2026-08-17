.class final Lcom/kwad/components/core/innerEc/live/widget/m$1;
.super Landroid/text/style/ForegroundColorSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/widget/m;->a(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Lcom/kwad/components/core/innerEc/live/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aah:Lcom/kwad/components/core/innerEc/live/widget/m$a;

.field final synthetic aai:Lcom/kwad/components/core/innerEc/live/widget/m;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/widget/m;ILcom/kwad/components/core/innerEc/live/widget/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/m$1;->aai:Lcom/kwad/components/core/innerEc/live/widget/m;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/kwad/components/core/innerEc/live/widget/m$1;->aah:Lcom/kwad/components/core/innerEc/live/widget/m$a;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ForegroundColorSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$1;->aah:Lcom/kwad/components/core/innerEc/live/widget/m$a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->d(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$1;->aah:Lcom/kwad/components/core/innerEc/live/widget/m$a;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->e(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$1;->aah:Lcom/kwad/components/core/innerEc/live/widget/m$a;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->e(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Landroid/graphics/Typeface;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

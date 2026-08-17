.class public Lcom/beizi/fusion/lf$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->e:F

    return v0
.end method

.method public a(FF)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/lf$b;->e:F

    .line 3
    iput p2, p0, Lcom/beizi/fusion/lf$b;->f:F

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/lf$b;->k:F

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/lf$b;->l:F

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/lf$b;->m:I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/lf$b;->n:I

    return-void
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->f:F

    return v0
.end method

.method public b(FF)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/lf$b;->c:F

    .line 3
    iput p2, p0, Lcom/beizi/fusion/lf$b;->d:F

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/lf$b;->a:J

    return-wide v0
.end method

.method public c(FF)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/lf$b;->i:F

    .line 3
    iput p2, p0, Lcom/beizi/fusion/lf$b;->j:F

    return-void
.end method

.method public d()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->c:F

    return v0
.end method

.method public d(FF)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/lf$b;->g:F

    .line 3
    iput p2, p0, Lcom/beizi/fusion/lf$b;->h:F

    return-void
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/lf$b;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->k:F

    .line 2
    .line 3
    return v0
.end method

.method public n()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/lf$b;->l:F

    .line 2
    .line 3
    return v0
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/beizi/fusion/lf$b;->a:J

    .line 6
    .line 7
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/beizi/fusion/lf$b;->b:J

    .line 6
    .line 7
    return-void
.end method

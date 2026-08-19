.class Lcom/octopus/ad/internal/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/octopus/ad/internal/b/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$1;->b:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    iput p2, p0, Lcom/octopus/ad/internal/b/e$1;->a:F

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$1;->b:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$1;->b:Lcom/octopus/ad/internal/b/e;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;)Landroid/view/ViewGroup;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$1;->b:Lcom/octopus/ad/internal/b/e;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;)Landroid/view/ViewGroup;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$1;->b:Lcom/octopus/ad/internal/b/e;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eq v0, v1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$1;->b:Lcom/octopus/ad/internal/b/e;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    .line 54
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$1;->b:Lcom/octopus/ad/internal/b/e;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    int-to-float v0, v0

    .line 65
    iget v2, p0, Lcom/octopus/ad/internal/b/e$1;->a:F

    .line 66
    .line 67
    div-float/2addr v0, v2

    .line 68
    float-to-int v0, v0

    .line 69
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    return-void

    .line 75
    :goto_0
    const-string v1, "OctopusAd"

    .line 76
    .line 77
    const-string v2, "An Exception Caught"

    .line 78
    .line 79
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

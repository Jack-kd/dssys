.class public final synthetic Lcom/sigmob/sdk/base/views/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/base/views/ak;

.field public final synthetic b:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/ak;Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/E;->a:Lcom/sigmob/sdk/base/views/ak;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/E;->b:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/E;->a:Lcom/sigmob/sdk/base/views/ak;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/E;->b:Landroid/graphics/PointF;

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/base/views/ak;->a(Lcom/sigmob/sdk/base/views/ak;Landroid/graphics/PointF;Landroid/animation/ValueAnimator;)V

    return-void
.end method

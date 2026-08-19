.class public final synthetic Lcom/sigmob/sdk/videoAd/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/videoAd/j;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/B;->a:Lcom/sigmob/sdk/videoAd/j;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/B;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/videoAd/j;->g0(Lcom/sigmob/sdk/videoAd/j;Landroid/animation/ValueAnimator;)V

    return-void
.end method

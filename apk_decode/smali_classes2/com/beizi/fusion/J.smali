.class public final synthetic Lcom/beizi/fusion/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/beizi/fusion/hn;


# direct methods
.method public synthetic constructor <init>(Lcom/beizi/fusion/hn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beizi/fusion/J;->a:Lcom/beizi/fusion/hn;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/J;->a:Lcom/beizi/fusion/hn;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/hn;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

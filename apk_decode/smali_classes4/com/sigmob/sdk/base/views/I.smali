.class public final synthetic Lcom/sigmob/sdk/base/views/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/base/views/ao;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/ao;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/I;->a:Lcom/sigmob/sdk/base/views/ao;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/I;->a:Lcom/sigmob/sdk/base/views/ao;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/views/ao;->a(Lcom/sigmob/sdk/base/views/ao;Landroid/animation/ValueAnimator;)V

    return-void
.end method

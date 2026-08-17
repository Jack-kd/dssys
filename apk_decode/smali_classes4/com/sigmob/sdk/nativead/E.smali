.class public final synthetic Lcom/sigmob/sdk/nativead/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/nativead/af;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/af;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/E;->a:Lcom/sigmob/sdk/nativead/af;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/E;->a:Lcom/sigmob/sdk/nativead/af;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/nativead/af;->b(Lcom/sigmob/sdk/nativead/af;Landroid/animation/ValueAnimator;)V

    return-void
.end method

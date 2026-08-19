.class public final synthetic Lcom/fl/saas/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/fl/saas/K0;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/K0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/u1;->b:Lcom/fl/saas/K0;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/u1;->b:Lcom/fl/saas/K0;

    invoke-static {v0, p1, p2}, Lcom/fl/saas/K0;->t(Lcom/fl/saas/K0;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

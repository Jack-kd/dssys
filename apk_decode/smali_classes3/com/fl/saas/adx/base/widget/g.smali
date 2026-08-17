.class public final synthetic Lcom/fl/saas/adx/base/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/ref/WeakReference;

.field public final synthetic c:Lcom/fl/saas/j;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/g;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/fl/saas/adx/base/widget/g;->c:Lcom/fl/saas/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/g;->b:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/g;->c:Lcom/fl/saas/j;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->d(Ljava/lang/ref/WeakReference;Lcom/fl/saas/j;)V

    return-void
.end method

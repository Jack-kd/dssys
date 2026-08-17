.class public final synthetic Lcom/fl/saas/adx/base/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/widget/NativeSlidingView;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/e;->b:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/e;->b:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->a(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)V

    return-void
.end method

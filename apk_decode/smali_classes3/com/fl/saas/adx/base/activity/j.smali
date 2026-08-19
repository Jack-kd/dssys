.class public final synthetic Lcom/fl/saas/adx/base/activity/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/j;->b:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    iput-boolean p2, p0, Lcom/fl/saas/adx/base/activity/j;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/j;->b:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/activity/j;->c:Z

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->a(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)V

    return-void
.end method

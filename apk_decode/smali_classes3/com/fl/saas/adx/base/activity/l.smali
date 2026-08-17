.class public final synthetic Lcom/fl/saas/adx/base/activity/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/VolumeChangeObserver$VolumeChangeListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/l;->a:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    return-void
.end method


# virtual methods
.method public final onVolumeChanged(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/l;->a:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, p1, p2}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->d(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;IZ)V

    return-void
.end method

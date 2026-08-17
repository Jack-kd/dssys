.class public final synthetic Lcom/fl/saas/adx/base/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/h;->b:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h;->b:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->f(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Landroid/media/MediaPlayer;)V

    return-void
.end method

.class public final synthetic Lcom/fl/saas/adx/base/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/FLAdTempHelper$SpreadActivityListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/activity/FLSpreadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/activity/FLSpreadActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/b;->a:Lcom/fl/saas/adx/base/activity/FLSpreadActivity;

    return-void
.end method


# virtual methods
.method public final closeActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/b;->a:Lcom/fl/saas/adx/base/activity/FLSpreadActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

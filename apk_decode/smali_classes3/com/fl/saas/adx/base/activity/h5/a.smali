.class public final synthetic Lcom/fl/saas/adx/base/activity/h5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

.field public final synthetic b:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/a;->a:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/activity/h5/a;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/a;->a:Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/h5/a;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;->a(Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;Landroid/net/Uri;)V

    return-void
.end method

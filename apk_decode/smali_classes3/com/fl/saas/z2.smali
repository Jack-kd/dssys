.class public final synthetic Lcom/fl/saas/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/v;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/fl/saas/j;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/v;Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/z2;->a:Lcom/fl/saas/v;

    iput-object p2, p0, Lcom/fl/saas/z2;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/fl/saas/z2;->c:Lcom/fl/saas/j;

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/z2;->a:Lcom/fl/saas/v;

    iget-object v1, p0, Lcom/fl/saas/z2;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/fl/saas/z2;->c:Lcom/fl/saas/j;

    invoke-static {v0, v1, v2}, Lcom/fl/saas/v;->a(Lcom/fl/saas/v;Landroid/content/Context;Lcom/fl/saas/j;)V

    return-void
.end method

.class public final synthetic Lcom/fl/saas/adx/api/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/fl/saas/adx/api/AdParams;

.field public final synthetic d:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/fl/saas/adx/api/AdParams;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/api/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/fl/saas/adx/api/a;->c:Lcom/fl/saas/adx/api/AdParams;

    iput-object p3, p0, Lcom/fl/saas/adx/api/a;->d:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/api/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/fl/saas/adx/api/a;->c:Lcom/fl/saas/adx/api/AdParams;

    iget-object v2, p0, Lcom/fl/saas/adx/api/a;->d:Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;

    invoke-static {v0, v1, v2}, Lcom/fl/saas/adx/api/FLSDK;->a(Landroid/content/Context;Lcom/fl/saas/adx/api/AdParams;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V

    return-void
.end method

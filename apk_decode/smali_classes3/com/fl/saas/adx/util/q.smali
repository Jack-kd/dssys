.class public final synthetic Lcom/fl/saas/adx/util/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/graphics/Bitmap;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/util/q;->b:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;

    iput-object p2, p0, Lcom/fl/saas/adx/util/q;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/fl/saas/adx/util/q;->d:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/fl/saas/adx/util/q;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/util/q;->b:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;

    iget-object v1, p0, Lcom/fl/saas/adx/util/q;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/fl/saas/adx/util/q;->d:Landroid/graphics/Bitmap;

    iget-boolean v3, p0, Lcom/fl/saas/adx/util/q;->e:Z

    invoke-static {v0, v1, v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->a(Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

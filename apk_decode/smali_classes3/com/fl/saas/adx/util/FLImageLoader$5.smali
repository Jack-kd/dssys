.class Lcom/fl/saas/adx/util/FLImageLoader$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/util/FLImageLoader;

.field final synthetic val$successListener:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/util/FLImageLoader;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/util/FLImageLoader$5;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    iput-object p2, p0, Lcom/fl/saas/adx/util/FLImageLoader$5;->val$successListener:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Load bitmap failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FLImageLoader"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBitmapLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$5;->val$successListener:Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string p2, "FLImageLoader"

    const-string p3, "Error in bitmap success listener"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

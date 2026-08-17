.class Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask$GifLoadResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GifLoadResult"
.end annotation


# instance fields
.field firstFrameBitmap:Landroid/graphics/Bitmap;

.field gifData:[B

.field final synthetic this$1:Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;[BLandroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask$GifLoadResult;->this$1:Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask$GifLoadResult;->gifData:[B

    iput-object p3, p0, Lcom/fl/saas/adx/util/FLImageLoader$ImageLoadTask$GifLoadResult;->firstFrameBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

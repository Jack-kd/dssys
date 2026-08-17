.class Lcom/fl/saas/adx/util/FLImageLoader$2;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/util/FLImageLoader;->initMemoryCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/util/FLImageLoader;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/util/FLImageLoader;I)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/util/FLImageLoader$2;->this$0:Lcom/fl/saas/adx/util/FLImageLoader;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/adx/util/FLImageLoader$2;->sizeOf(Ljava/lang/String;Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public sizeOf(Ljava/lang/String;Ljava/io/File;)I
    .locals 2

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 v0, 0x400

    div-long/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, p1

    return p1

    :catchall_0
    move-exception p1

    const-string p2, "FLImageLoader"

    const-string v0, "Error calculating file size"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

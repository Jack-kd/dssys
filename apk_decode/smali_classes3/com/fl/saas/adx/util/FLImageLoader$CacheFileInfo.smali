.class Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/util/FLImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheFileInfo"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private fileSize:J

.field private lastModified:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;->fileName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;->lastModified:J

    iput-wide p4, p0, Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;->fileSize:J

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;->fileSize:J

    return-wide v0
.end method

.method public getLastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/fl/saas/adx/util/FLImageLoader$CacheFileInfo;->lastModified:J

    return-wide v0
.end method

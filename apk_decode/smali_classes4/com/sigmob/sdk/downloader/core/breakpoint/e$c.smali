.class interface abstract Lcom/sigmob/sdk/downloader/core/breakpoint/e$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/breakpoint/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "SELECT * FROM taskFileDirty"

.field public static final b:Ljava/lang/String; = "SELECT * FROM breakpoint"

.field public static final c:Ljava/lang/String; = "SELECT * FROM block"

.field public static final d:Ljava/lang/String; = "SELECT * FROM FileDownloadResponseFilename"

.field public static final e:Ljava/lang/String; = "SELECT filename FROM FileDownloadResponseFilename WHERE url = ?"

.field public static final f:Ljava/lang/String; = "SELECT id FROM breakpoint WHERE id = ? LIMIT 1"

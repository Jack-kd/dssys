.class interface abstract Lcom/sigmob/sdk/downloader/core/breakpoint/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/breakpoint/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS FileDownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)"

.field public static final b:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)"

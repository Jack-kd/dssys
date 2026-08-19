.class public final synthetic Lio/flutter/plugins/webviewflutter/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/flutter/plugins/webviewflutter/DownloadListenerProxyApi$DownloadListenerImpl;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/webviewflutter/DownloadListenerProxyApi$DownloadListenerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/O;->b:Lio/flutter/plugins/webviewflutter/DownloadListenerProxyApi$DownloadListenerImpl;

    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/O;->c:Ljava/lang/String;

    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/O;->d:Ljava/lang/String;

    iput-object p4, p0, Lio/flutter/plugins/webviewflutter/O;->e:Ljava/lang/String;

    iput-object p5, p0, Lio/flutter/plugins/webviewflutter/O;->f:Ljava/lang/String;

    iput-wide p6, p0, Lio/flutter/plugins/webviewflutter/O;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/O;->b:Lio/flutter/plugins/webviewflutter/DownloadListenerProxyApi$DownloadListenerImpl;

    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/O;->c:Ljava/lang/String;

    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/O;->d:Ljava/lang/String;

    iget-object v3, p0, Lio/flutter/plugins/webviewflutter/O;->e:Ljava/lang/String;

    iget-object v4, p0, Lio/flutter/plugins/webviewflutter/O;->f:Ljava/lang/String;

    iget-wide v5, p0, Lio/flutter/plugins/webviewflutter/O;->g:J

    invoke-static/range {v0 .. v6}, Lio/flutter/plugins/webviewflutter/DownloadListenerProxyApi$DownloadListenerImpl;->b(Lio/flutter/plugins/webviewflutter/DownloadListenerProxyApi$DownloadListenerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

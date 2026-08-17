.class public Ls0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls0/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ls0/b;


# direct methods
.method public constructor <init>(Ls0/b;Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls0/b$b;->d:Ls0/b;

    .line 2
    .line 3
    iput-object p2, p0, Ls0/b$b;->a:Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;

    .line 4
    .line 5
    iput-object p3, p0, Ls0/b$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Ls0/b$b;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic b(Ls0/b$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/b$b;->d:Ls0/b;

    .line 2
    .line 3
    invoke-static {v0}, Ls0/b;->d(Ls0/b;)Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ls0/b$b;->d:Ls0/b;

    .line 11
    .line 12
    invoke-static {p1}, Ls0/b;->d(Ls0/b;)Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Ls0/b$b$a;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Ls0/b$b$a;-><init>(Ls0/b$b;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->j(Lu0/a;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Lorg/fourthline/cling/android/AndroidUpnpService;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ls0/b$b;->d:Ls0/b;

    .line 2
    .line 3
    invoke-static {p1}, Ls0/b;->d(Ls0/b;)Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Ls0/b$b;->a:Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->d(Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Ls0/b$b;->d:Ls0/b;

    .line 13
    .line 14
    invoke-static {p1}, Ls0/b;->c(Ls0/b;)Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Ls0/b$b;->b:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Ls0/b$b;->c:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Ls0/c;

    .line 23
    .line 24
    invoke-direct {v2, p0, v0, v1}, Ls0/c;-><init>(Ls0/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v0, 0xfa

    .line 28
    .line 29
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls0/b$b;->d:Ls0/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "NOT_READY"

    .line 5
    .line 6
    invoke-static {v0, v1, v2, p1}, Ls0/b;->h(Ls0/b;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "onPlayResult"

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Ls0/b;->i(Ls0/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

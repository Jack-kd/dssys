.class Lcom/octopus/ad/DownloadService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/c/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/DownloadService;->b(Lcom/octopus/ad/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d/b;

.field final synthetic b:Lcom/octopus/ad/DownloadService;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/DownloadService;Lcom/octopus/ad/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/DownloadService$1;->a:Lcom/octopus/ad/d/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 3
    const-string p1, "DownloadService"

    const-string v0, "--appUpdate downloadApk onFail--"

    invoke-static {p1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/octopus/ad/DownloadService$1;->a:Lcom/octopus/ad/d/b;

    invoke-virtual {p1}, Lcom/octopus/ad/d/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    invoke-static {v0}, Lcom/octopus/ad/DownloadService;->c(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    invoke-static {v0}, Lcom/octopus/ad/DownloadService;->c(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/DownloadService$1;->a:Lcom/octopus/ad/d/b;

    invoke-virtual {v1}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    iget-object p1, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 13
    :goto_1
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/io/File;)V
    .locals 3

    .line 1
    const-string p1, "DownloadService"

    .line 2
    .line 3
    const-string v0, "--appUpdate downloadApk onSuccess--"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/octopus/ad/DownloadService;->c(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/octopus/ad/DownloadService;->c(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/octopus/ad/DownloadService$1;->a:Lcom/octopus/ad/d/b;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->c()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    .line 40
    .line 41
    const-wide/16 v1, -0x1

    .line 42
    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/octopus/ad/DownloadService$1;->a:Lcom/octopus/ad/d/b;

    .line 48
    .line 49
    invoke-static {v0, p1, v1, v2}, Lcom/octopus/ad/DownloadService;->a(Lcom/octopus/ad/DownloadService;Landroid/content/Context;Ljava/lang/Long;Lcom/octopus/ad/d/b;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

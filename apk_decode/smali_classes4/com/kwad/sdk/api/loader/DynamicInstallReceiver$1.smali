.class final Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/DynamicInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aIj:Ljava/io/File;

.field final synthetic aIk:Ljava/lang/String;

.field final synthetic aIl:Lcom/kwad/sdk/api/loader/DynamicInstallReceiver;

.field final synthetic dK:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/loader/DynamicInstallReceiver;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->aIl:Lcom/kwad/sdk/api/loader/DynamicInstallReceiver;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->dK:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->aIj:Ljava/io/File;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->aIk:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->dK:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->aIj:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->aIk:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/api/loader/d;->a(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->dK:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->aIk:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/kwad/sdk/api/loader/i;->t(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->aIj:Ljava/io/File;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/kwad/sdk/api/loader/j;->h(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

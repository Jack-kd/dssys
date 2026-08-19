.class public Lcom/meishu/sdk/core/AdSdk$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/AdSdk;->init(Landroid/content/Context;Lcom/meishu/sdk/core/MSAdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/MSAdConfig;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/MSAdConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/AdSdk$a;->a:Lcom/meishu/sdk/core/MSAdConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->access$000()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/core/AdSdk$a;->a:Lcom/meishu/sdk/core/MSAdConfig;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->getAuthority()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/core/AdSdk$a;->a:Lcom/meishu/sdk/core/MSAdConfig;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->secure()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/core/AdSdk;->access$100(I)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    const-string v0, "sdk.1rtb.net"

    .line 29
    .line 30
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-class v1, Lcom/meishu/sdk/core/utils/u;

    .line 39
    .line 40
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    sput-object v0, Lcom/meishu/sdk/core/utils/u;->a:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    :try_start_2
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit v1

    .line 47
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    :catchall_1
    return-void
.end method

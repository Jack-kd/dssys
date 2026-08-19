.class public Lcom/meishu/sdk/core/utils/n;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/meishu/sdk/core/utils/DownloadUtils;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/DownloadUtils;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/n;->c:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/n;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/utils/n;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/n;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/meishu/sdk/core/utils/l0;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/l0;->e:[Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v1, "DownloadUtils"

    .line 26
    .line 27
    const-string v2, "Report send dn_succ"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    array-length v1, v0

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_1

    .line 35
    .line 36
    aget-object v3, v0, v2

    .line 37
    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    iget-object v4, p0, Lcom/meishu/sdk/core/utils/n;->b:Landroid/content/Context;

    .line 45
    .line 46
    new-instance v5, Lcom/meishu/sdk/core/utils/i;

    .line 47
    .line 48
    invoke-direct {v5}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v4, v3, v5}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/n;->a:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    sget-object v1, Lcom/meishu/sdk/core/download/a$a;->a:Lcom/meishu/sdk/core/download/a;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/n;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/download/a;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/n;->c:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->a:Landroid/app/NotificationManager;

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/n;->b:Landroid/content/Context;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/n;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/n;->a:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    return-void
.end method

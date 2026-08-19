.class public Lcom/meishu/sdk/core/loader/strategy/b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/loader/strategy/e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/strategy/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/b;->a:Lcom/meishu/sdk/core/loader/strategy/e;

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
    .locals 8

    .line 1
    const-string v0, "__MS_ERRNO__"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/b;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    :try_start_0
    iput-boolean v2, v1, Lcom/meishu/sdk/core/loader/strategy/e;->x:Z

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/strategy/e;->f()V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    iget-object v4, v1, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v3, v4, :cond_2

    .line 22
    .line 23
    iget-object v4, v1, Lcom/meishu/sdk/core/loader/strategy/e;->g:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 30
    .line 31
    iget v5, v4, Lcom/meishu/sdk/core/loader/loadbean/a;->c:I

    .line 32
    .line 33
    if-ne v5, v2, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object v5, v4, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    const-string v6, "1025"

    .line 51
    .line 52
    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "__TIMEOUT__"

    .line 57
    .line 58
    const/16 v7, 0xa

    .line 59
    .line 60
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iget-object v4, v4, Lcom/meishu/sdk/core/loader/loadbean/a;->a:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_1

    .line 78
    .line 79
    iget-object v4, v1, Lcom/meishu/sdk/core/loader/strategy/e;->a:Lcom/meishu/sdk/core/loader/c;

    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v5}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    new-instance v6, Lcom/meishu/sdk/core/utils/i;

    .line 94
    .line 95
    invoke-direct {v6}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v5, v6}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto :goto_2

    .line 104
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    return-void

    .line 108
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

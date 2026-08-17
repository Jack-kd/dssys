.class public Lcom/meishu/sdk/core/utils/DownloadUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/download/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:[Ljava/lang/String;

.field public final synthetic g:[Ljava/lang/String;

.field public final synthetic h:[Ljava/lang/String;

.field public final synthetic i:Lcom/meishu/sdk/core/utils/DownloadUtils;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/DownloadUtils;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->b:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->c:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->e:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->f:[Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->g:[Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->h:[Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/meishu/sdk/core/download/b;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->d:Landroid/os/Handler;

    .line 11
    new-instance v1, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;

    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/core/utils/DownloadUtils$a$b;-><init>(Lcom/meishu/sdk/core/utils/DownloadUtils$a;Lcom/meishu/sdk/core/download/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/meishu/sdk/core/download/b;Ljava/lang/String;)V
    .locals 2

    .line 12
    :try_start_0
    const-string p1, "DownloadUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 16
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->d:Landroid/os/Handler;

    .line 17
    new-instance v1, Lcom/meishu/sdk/core/utils/DownloadUtils$a$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/meishu/sdk/core/utils/DownloadUtils$a$c;-><init>(Lcom/meishu/sdk/core/utils/DownloadUtils$a;Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p1, Lcom/meishu/sdk/core/download/a$a;->a:Lcom/meishu/sdk/core/download/a;

    .line 19
    iget-object p2, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/download/a;->a(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 21
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->a:Landroid/app/NotificationManager;

    if-eqz p1, :cond_1

    .line 22
    iget-object p2, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    .line 23
    invoke-static {p2}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    move-result p2

    .line 24
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 25
    :cond_1
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 26
    iget-object p2, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    .line 27
    invoke-static {p2}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    move-result p2

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 29
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/io/File;Lcom/meishu/sdk/core/download/b;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 4
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->d:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/meishu/sdk/core/utils/DownloadUtils$a$d;

    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/core/utils/DownloadUtils$a$d;-><init>(Lcom/meishu/sdk/core/utils/DownloadUtils$a;Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->c:Landroid/content/Context;

    iget-object p2, p2, Lcom/meishu/sdk/core/download/b;->a:Ljava/lang/String;

    .line 7
    iget-object v1, p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->d:Landroid/os/Handler;

    new-instance v2, Lcom/meishu/sdk/core/utils/n;

    invoke-direct {v2, p1, p2, v0}, Lcom/meishu/sdk/core/utils/n;-><init>(Lcom/meishu/sdk/core/utils/DownloadUtils;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(Lcom/meishu/sdk/core/download/b;)V
    .locals 5

    .line 1
    :try_start_0
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->d:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v1, Lcom/meishu/sdk/core/utils/DownloadUtils$a$a;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/core/utils/DownloadUtils$a$a;-><init>(Lcom/meishu/sdk/core/utils/DownloadUtils$a;Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    :goto_0
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    new-instance p1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 39
    .line 40
    :cond_1
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    :try_start_1
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->b:[Ljava/lang/String;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    const-string p1, "DownloadUtils"

    .line 63
    .line 64
    const-string v0, "Report send dn_start"

    .line 65
    .line 66
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->b:[Ljava/lang/String;

    .line 70
    .line 71
    array-length v0, p1

    .line 72
    const/4 v1, 0x0

    .line 73
    :goto_1
    if-ge v1, v0, :cond_3

    .line 74
    .line 75
    aget-object v2, p1, v1

    .line 76
    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_2

    .line 82
    .line 83
    iget-object v3, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->c:Landroid/content/Context;

    .line 84
    .line 85
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 86
    .line 87
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {v3, v2, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catch_0
    move-exception p1

    .line 95
    goto :goto_3

    .line 96
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :cond_3
    new-instance p1, Lcom/meishu/sdk/core/utils/l0;

    .line 103
    .line 104
    invoke-direct {p1}, Lcom/meishu/sdk/core/utils/l0;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->d:Ljava/lang/String;

    .line 108
    .line 109
    iput-object v0, p1, Lcom/meishu/sdk/core/utils/l0;->b:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->e:Ljava/lang/String;

    .line 112
    .line 113
    iput-object v0, p1, Lcom/meishu/sdk/core/utils/l0;->c:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->b:[Ljava/lang/String;

    .line 116
    .line 117
    iput-object v0, p1, Lcom/meishu/sdk/core/utils/l0;->d:[Ljava/lang/String;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->f:[Ljava/lang/String;

    .line 120
    .line 121
    iput-object v0, p1, Lcom/meishu/sdk/core/utils/l0;->e:[Ljava/lang/String;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->g:[Ljava/lang/String;

    .line 124
    .line 125
    iput-object v0, p1, Lcom/meishu/sdk/core/utils/l0;->f:[Ljava/lang/String;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->h:[Ljava/lang/String;

    .line 128
    .line 129
    iput-object v0, p1, Lcom/meishu/sdk/core/utils/l0;->g:[Ljava/lang/String;

    .line 130
    .line 131
    sget-object v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->i:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 147
    .line 148
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->a:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->c:Landroid/content/Context;

    .line 151
    .line 152
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->d:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v3, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$a;->e:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {p1, v0, v1, v2, v3}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Lcom/meishu/sdk/core/utils/DownloadUtils;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :cond_4
    :goto_5
    return-void
.end method

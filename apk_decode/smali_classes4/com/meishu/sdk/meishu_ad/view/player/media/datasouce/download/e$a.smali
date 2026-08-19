.class public Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->c()V

    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b()V

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 2
    iput-wide p1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->j:J

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 4
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    invoke-interface {v2, p1, p2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :try_start_2
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(JI)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 9
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    invoke-interface {v2, p1, p2, p3}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;->a(JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 12
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object p3, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 14
    iget-wide v0, p3, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->l:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_2

    cmp-long p1, p1, v0

    if-ltz p1, :cond_2

    .line 15
    const-string p1, "download limit. maxFileSize:"

    invoke-static {p1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 16
    iget-wide p2, p2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->l:J

    .line 17
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "e"

    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 19
    iget-object p2, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->k:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 20
    iput-object p3, p2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    .line 21
    :cond_1
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->c:Ljava/lang/Object;

    .line 22
    monitor-enter p1

    .line 23
    :try_start_3
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 24
    invoke-virtual {p2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b()V

    .line 25
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    :cond_2
    :goto_1
    return-void

    .line 26
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->f:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    monitor-exit v1

    .line 18
    goto :goto_2

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->g:Ljava/io/File;

    .line 22
    .line 23
    iget-object v3, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->f:Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    const-string v2, "e"

    .line 32
    .line 33
    const-string v3, "rename error"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_2
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->h:Ljava/io/File;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->h:Ljava/io/File;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    const-string v2, "e"

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v4, "delete fileLastMetaTemp error."

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->h:Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v2, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_0
    monitor-exit v1

    .line 93
    goto :goto_2

    .line 94
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-enter v1

    .line 105
    :try_start_5
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->n:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :catch_1
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Ljava/lang/ref/SoftReference;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 122
    .line 123
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    .line 128
    .line 129
    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :catchall_2
    move-exception v0

    .line 134
    goto :goto_4

    .line 135
    :cond_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 136
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :goto_4
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 143
    throw v0
.end method

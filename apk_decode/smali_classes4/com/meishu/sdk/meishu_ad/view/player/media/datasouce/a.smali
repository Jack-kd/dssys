.class public Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/io/RandomAccessFile;

.field public d:Ljava/io/RandomAccessFile;

.field public e:Ljava/io/File;

.field public f:Ljava/io/File;

.field public g:Ljava/io/File;

.field public volatile h:J

.field public i:Z

.field public j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;

.field public final k:Ljava/lang/String;

.field public l:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    const-wide/32 v0, -0x80000000

    .line 12
    .line 13
    .line 14
    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->h:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->i:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->k:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->a:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :try_start_0
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->e:Ljava/io/File;

    .line 37
    .line 38
    const-string v0, "temp"

    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->f:Ljava/io/File;

    .line 45
    .line 46
    const-string v0, "last_meta_temp"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->g:Ljava/io/File;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    const-string v1, "a"

    .line 59
    .line 60
    const-string v2, "r"

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    :try_start_1
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->e:Ljava/io/File;

    .line 67
    .line 68
    invoke-direct {p1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->c:Ljava/io/RandomAccessFile;

    .line 72
    .line 73
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->e:Ljava/io/File;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    iput-wide v2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->h:J

    .line 80
    .line 81
    if-eqz p2, :cond_0

    .line 82
    .line 83
    check-cast p2, Lcom/meishu/sdk/meishu_ad/view/player/a$d;

    .line 84
    .line 85
    const/16 p1, 0x64

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/meishu_ad/view/player/a$d;->a(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string p2, "file exist. "

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-wide v2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->h:J

    .line 104
    .line 105
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v3, "file not exist. url:"

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->a()V

    .line 137
    .line 138
    .line 139
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 140
    .line 141
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->f:Ljava/io/File;

    .line 142
    .line 143
    invoke-direct {p1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->c:Ljava/io/RandomAccessFile;

    .line 147
    .line 148
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->g:Ljava/io/File;

    .line 151
    .line 152
    invoke-direct {p1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->d:Ljava/io/RandomAccessFile;

    .line 156
    .line 157
    invoke-virtual {p0, p2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->a(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->i:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;)V
    .locals 5

    .line 2
    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a$a;

    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a$a;-><init>(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/c;)V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->l:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    .line 3
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/h;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/meishu/sdk/core/bquery/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/h;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;

    .line 7
    invoke-interface {p1, v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;->b(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;)Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    new-instance v4, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/h$a;

    invoke-direct {v4, v1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/h$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;-><init>(Ljava/lang/String;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;)V

    .line 9
    invoke-virtual {v3, v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->b(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;)Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;

    move-result-object p1

    .line 10
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/e;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    .line 13
    :goto_1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/b;

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/a;->e:Ljava/io/File;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

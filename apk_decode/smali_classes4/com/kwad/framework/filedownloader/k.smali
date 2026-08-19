.class final Lcom/kwad/framework/filedownloader/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/t;


# instance fields
.field private azT:Lcom/kwad/framework/filedownloader/a$a;

.field private azU:Lcom/kwad/framework/filedownloader/a$c;

.field private azV:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/kwad/framework/filedownloader/message/MessageSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private azW:Z


# direct methods
.method public constructor <init>(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/a$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/k;->azW:Z

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/kwad/framework/filedownloader/k;->a(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/a$c;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private a(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/framework/filedownloader/k;->azU:Lcom/kwad/framework/filedownloader/a$c;

    .line 4
    .line 5
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/k;->azV:Ljava/util/Queue;

    .line 11
    .line 12
    return-void
.end method

.method private cu(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/d/d;->cX(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/k;->azV:Ljava/util/Queue;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/k;->azV:Ljava/util/Queue;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/k;->azV:Ljava/util/Queue;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    filled-new-array {p0, v0, v1, p1}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]"

    .line 54
    .line 55
    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method private o(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "notify completed %s"

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azU:Lcom/kwad/framework/filedownloader/a$c;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$c;->AY()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/k;->p(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private p(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "occur this case, it would be the host task of this messenger has been over(paused/warn/completed/error) on the other thread before receiving the snapshot(id[%d], status[%d])"

    .line 30
    .line 31
    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    iget-boolean v1, p0, Lcom/kwad/framework/filedownloader/k;->azW:Z

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AC()Lcom/kwad/framework/filedownloader/i;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azV:Ljava/util/Queue;

    .line 51
    .line 52
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/kwad/framework/filedownloader/j;->Bp()Lcom/kwad/framework/filedownloader/j;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, p0}, Lcom/kwad/framework/filedownloader/j;->a(Lcom/kwad/framework/filedownloader/t;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    :goto_0
    invoke-static {}, Lcom/kwad/framework/filedownloader/l;->isValid()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 70
    .line 71
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AW()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    :cond_4
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x4

    .line 82
    if-ne v0, v1, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azU:Lcom/kwad/framework/filedownloader/a$c;

    .line 85
    .line 86
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$c;->AY()V

    .line 87
    .line 88
    .line 89
    :cond_5
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/k;->cu(I)V

    .line 94
    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final Bs()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "notify begin %s"

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azV:Ljava/util/Queue;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "can\'t begin the task, the holder fo the messenger is nil, %d"

    .line 35
    .line 36
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    return v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azU:Lcom/kwad/framework/filedownloader/a$c;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$c;->onBegin()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    return v0
.end method

.method public final Bt()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/k;->azW:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azV:Ljava/util/Queue;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-interface {v4}, Lcom/kwad/framework/filedownloader/a;->AC()Lcom/kwad/framework/filedownloader/i;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a$a;->AQ()Lcom/kwad/framework/filedownloader/x$a;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/k;->cu(I)V

    .line 36
    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v5, 0x4

    .line 42
    if-ne v1, v5, :cond_3

    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v3, v4}, Lcom/kwad/framework/filedownloader/i;->d(Lcom/kwad/framework/filedownloader/a;)V

    .line 45
    .line 46
    .line 47
    check-cast v0, Lcom/kwad/framework/filedownloader/message/a;

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/message/a;->CJ()Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/k;->o(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    invoke-interface {v2, v0}, Lcom/kwad/framework/filedownloader/x$a;->n(Ljava/lang/Throwable;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/kwad/framework/filedownloader/k;->m(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    instance-of v2, v3, Lcom/kwad/framework/filedownloader/g;

    .line 67
    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    move-object v2, v3

    .line 71
    check-cast v2, Lcom/kwad/framework/filedownloader/g;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const/4 v2, 0x0

    .line 75
    :goto_0
    const/4 v5, -0x4

    .line 76
    if-eq v1, v5, :cond_12

    .line 77
    .line 78
    const/4 v5, -0x3

    .line 79
    if-eq v1, v5, :cond_11

    .line 80
    .line 81
    const/4 v5, -0x2

    .line 82
    if-eq v1, v5, :cond_f

    .line 83
    .line 84
    const/4 v5, -0x1

    .line 85
    if-eq v1, v5, :cond_e

    .line 86
    .line 87
    const/4 v5, 0x1

    .line 88
    if-eq v1, v5, :cond_c

    .line 89
    .line 90
    const/4 v5, 0x2

    .line 91
    if-eq v1, v5, :cond_a

    .line 92
    .line 93
    const/4 v5, 0x3

    .line 94
    if-eq v1, v5, :cond_8

    .line 95
    .line 96
    const/4 v5, 0x5

    .line 97
    if-eq v1, v5, :cond_6

    .line 98
    .line 99
    const/4 v0, 0x6

    .line 100
    if-eq v1, v0, :cond_5

    .line 101
    .line 102
    :goto_1
    return-void

    .line 103
    :cond_5
    invoke-virtual {v3, v4}, Lcom/kwad/framework/filedownloader/i;->a(Lcom/kwad/framework/filedownloader/a;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6
    if-eqz v2, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CP()Ljava/lang/Throwable;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->AL()I

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CO()J

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_7
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CP()Ljava/lang/Throwable;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->AL()I

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CK()I

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_8
    if-eqz v2, :cond_9

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CO()J

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_9
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CK()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-interface {v4}, Lcom/kwad/framework/filedownloader/a;->getSmallFileTotalBytes()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {v3, v4, v0, v1}, Lcom/kwad/framework/filedownloader/i;->b(Lcom/kwad/framework/filedownloader/a;II)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_a
    if-eqz v2, :cond_b

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->getEtag()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CC()Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CM()J

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_b
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->getEtag()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CC()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-interface {v4}, Lcom/kwad/framework/filedownloader/a;->getSmallFileSoFarBytes()I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CL()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    invoke-virtual/range {v3 .. v8}, Lcom/kwad/framework/filedownloader/i;->a(Lcom/kwad/framework/filedownloader/a;Ljava/lang/String;ZII)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_c
    if-eqz v2, :cond_d

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CO()J

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CM()J

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_d
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CK()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CL()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    invoke-virtual {v3, v4, v1, v0}, Lcom/kwad/framework/filedownloader/i;->a(Lcom/kwad/framework/filedownloader/a;II)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_e
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CP()Ljava/lang/Throwable;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v3, v4, v0}, Lcom/kwad/framework/filedownloader/i;->a(Lcom/kwad/framework/filedownloader/a;Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_f
    if-eqz v2, :cond_10

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CO()J

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CM()J

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_10
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CK()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CL()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-virtual {v3, v4, v1, v0}, Lcom/kwad/framework/filedownloader/i;->c(Lcom/kwad/framework/filedownloader/a;II)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_11
    invoke-virtual {v3, v4}, Lcom/kwad/framework/filedownloader/i;->b(Lcom/kwad/framework/filedownloader/a;)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_12
    invoke-virtual {v3, v4}, Lcom/kwad/framework/filedownloader/i;->c(Lcom/kwad/framework/filedownloader/a;)V

    .line 234
    .line 235
    .line 236
    return-void
.end method

.method public final Bu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AM()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final Bv()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azV:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x4

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final Bw()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/k;->azW:Z

    .line 3
    .line 4
    return-void
.end method

.method public final b(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/a$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/framework/filedownloader/k;->a(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/a$c;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v0, "the messenger is working, can\'t re-appointment for %s"

    .line 12
    .line 13
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p2
.end method

.method public final f(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "notify pending %s"

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/k;->p(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final g(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "notify started %s"

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/k;->p(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final h(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "notify connected %s"

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/k;->p(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final i(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AE()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AG()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "notify progress %s %d %d"

    .line 32
    .line 33
    invoke-static {p0, v2, v1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->Az()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-gtz v0, :cond_2

    .line 41
    .line 42
    sget-boolean p1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 47
    .line 48
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "notify progress but client not request notify %s"

    .line 53
    .line 54
    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    :cond_2
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/k;->p(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final j(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "notify block completed %s %s"

    .line 20
    .line 21
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/k;->p(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final k(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AK()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AL()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AJ()Ljava/lang/Throwable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "notify retry %s %d %d %s"

    .line 38
    .line 39
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/k;->p(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final l(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "notify warn %s"

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azU:Lcom/kwad/framework/filedownloader/a$c;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$c;->AY()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/k;->p(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final m(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/a;->AJ()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "notify error %s %s"

    .line 20
    .line 21
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azU:Lcom/kwad/framework/filedownloader/a$c;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$c;->AY()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/k;->p(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final n(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "notify paused %s"

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azU:Lcom/kwad/framework/filedownloader/a$c;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$c;->AY()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/k;->p(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/k;->azT:Lcom/kwad/framework/filedownloader/a$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "%d:%s"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

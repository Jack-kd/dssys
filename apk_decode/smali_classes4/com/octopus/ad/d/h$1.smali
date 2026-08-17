.class Lcom/octopus/ad/d/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d/h;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d/h;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p2, p1}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/octopus/ad/d/h;->b(Lcom/octopus/ad/d/h;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 21
    .line 22
    invoke-static {p2}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    invoke-static {p1, p2}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;Z)Z

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-static {p1, p2}, Lcom/octopus/ad/d/h;->b(Lcom/octopus/ad/d/h;Z)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/d/h;->b(Lcom/octopus/ad/d/h;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/octopus/ad/d/h;->b(Lcom/octopus/ad/d/h;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/octopus/ad/d/h;->e(Lcom/octopus/ad/d/h;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const-wide/16 v2, 0x3e8

    .line 43
    .line 44
    div-long/2addr v0, v2

    .line 45
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/octopus/ad/d/h;->g(Lcom/octopus/ad/d/h;)Lcom/octopus/ad/d/f;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/octopus/ad/d/h;->j(Lcom/octopus/ad/d/h;)J

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/octopus/ad/d/h;->g(Lcom/octopus/ad/d/h;)Lcom/octopus/ad/d/f;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v4, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 65
    .line 66
    invoke-static {v4}, Lcom/octopus/ad/d/h;->j(Lcom/octopus/ad/d/h;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    invoke-interface {p1, v0, v1, v4, v5}, Lcom/octopus/ad/d/f;->a(JJ)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    div-long/2addr v0, v2

    .line 80
    invoke-static {p1, v0, v1}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;J)J

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-static {p1, v0}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;Z)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/octopus/ad/d/h;->b(Lcom/octopus/ad/d/h;)Ljava/util/Map;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    invoke-static {p1, v0}, Lcom/octopus/ad/d/h;->c(Lcom/octopus/ad/d/h;Z)Z

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    xor-int/2addr v1, v2

    .line 23
    invoke-static {v0, v1}, Lcom/octopus/ad/d/h;->b(Lcom/octopus/ad/d/h;Z)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/octopus/ad/d/h;->e(Lcom/octopus/ad/d/h;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/octopus/ad/d/h;->f(Lcom/octopus/ad/d/h;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void

    .line 57
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-static {p1, v0}, Lcom/octopus/ad/d/h;->c(Lcom/octopus/ad/d/h;Z)Z

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/octopus/ad/d/h;->g(Lcom/octopus/ad/d/h;)Lcom/octopus/ad/d/f;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/octopus/ad/d/h;->g(Lcom/octopus/ad/d/h;)Lcom/octopus/ad/d/f;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1}, Lcom/octopus/ad/d/f;->a()V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    const-wide/16 v3, 0x3e8

    .line 87
    .line 88
    div-long/2addr v0, v3

    .line 89
    invoke-static {p1, v0, v1}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;J)J

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 93
    .line 94
    invoke-static {p1, v2}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;Z)Z

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/d/h;->c(Lcom/octopus/ad/d/h;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "onActivityStarted"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/octopus/ad/d/h;->d(Lcom/octopus/ad/d/h;)I

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/d/h;->c(Lcom/octopus/ad/d/h;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onActivityStopped"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/octopus/ad/d/h;->h(Lcom/octopus/ad/d/h;)I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/octopus/ad/d/h;->i(Lcom/octopus/ad/d/h;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/octopus/ad/d/h;->b(Lcom/octopus/ad/d/h;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 v0, 0x1

    .line 56
    if-ne p1, v0, :cond_2

    .line 57
    .line 58
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    const-wide/16 v2, 0x3e8

    .line 63
    .line 64
    div-long/2addr v0, v2

    .line 65
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/octopus/ad/d/h;->g(Lcom/octopus/ad/d/h;)Lcom/octopus/ad/d/f;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/octopus/ad/d/h;->j(Lcom/octopus/ad/d/h;)J

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/octopus/ad/d/h;->g(Lcom/octopus/ad/d/h;)Lcom/octopus/ad/d/f;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object v4, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 85
    .line 86
    invoke-static {v4}, Lcom/octopus/ad/d/h;->j(Lcom/octopus/ad/d/h;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    invoke-interface {p1, v4, v5, v0, v1}, Lcom/octopus/ad/d/f;->a(JJ)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    div-long/2addr v0, v2

    .line 100
    invoke-static {p1, v0, v1}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;J)J

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/d/h$1;->a:Lcom/octopus/ad/d/h;

    .line 104
    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-static {p1, v0}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/h;Z)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    return-void
.end method

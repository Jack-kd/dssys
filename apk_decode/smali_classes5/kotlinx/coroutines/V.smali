.class public abstract Lkotlinx/coroutines/V;
.super LH1/g;
.source "SourceFile"


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, LH1/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlinx/coroutines/V;->d:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract c()Lkotlin/coroutines/e;
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/A;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lkotlinx/coroutines/A;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lkotlinx/coroutines/A;->a:Ljava/lang/Throwable;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    return-object v1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/CoroutinesInternalError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Fatal exception in coroutines machinery for "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lkotlinx/coroutines/V;->c()Lkotlin/coroutines/e;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Lkotlin/coroutines/e;->getContext()Lkotlin/coroutines/i;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, v0}, Lkotlinx/coroutines/J;->a(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/V;->c()Lkotlin/coroutines/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lkotlinx/coroutines/internal/g;

    .line 11
    .line 12
    iget-object v1, v0, Lkotlinx/coroutines/internal/g;->f:Lkotlin/coroutines/e;

    .line 13
    .line 14
    iget-object v0, v0, Lkotlinx/coroutines/internal/g;->h:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {v1}, Lkotlin/coroutines/e;->getContext()Lkotlin/coroutines/i;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/I;->i(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v3, Lkotlinx/coroutines/internal/I;->a:Lkotlinx/coroutines/internal/B;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-eq v0, v3, :cond_0

    .line 28
    .line 29
    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/F;->m(Lkotlin/coroutines/e;Lkotlin/coroutines/i;Ljava/lang/Object;)Lkotlinx/coroutines/S0;

    .line 30
    .line 31
    .line 32
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_0
    move-object v3, v4

    .line 38
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lkotlin/coroutines/e;->getContext()Lkotlin/coroutines/i;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {p0}, Lkotlinx/coroutines/V;->h()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {p0, v6}, Lkotlinx/coroutines/V;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    if-nez v7, :cond_1

    .line 51
    .line 52
    iget v8, p0, Lkotlinx/coroutines/V;->d:I

    .line 53
    .line 54
    invoke-static {v8}, Lkotlinx/coroutines/W;->b(I)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    sget-object v4, Lkotlinx/coroutines/u0;->T2:Lkotlinx/coroutines/u0$b;

    .line 61
    .line 62
    invoke-interface {v5, v4}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i$b;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lkotlinx/coroutines/u0;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_1
    move-exception v1

    .line 70
    goto :goto_4

    .line 71
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 72
    .line 73
    invoke-interface {v4}, Lkotlinx/coroutines/u0;->isActive()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_2

    .line 78
    .line 79
    invoke-interface {v4}, Lkotlinx/coroutines/u0;->z()Ljava/util/concurrent/CancellationException;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {p0, v6, v4}, Lkotlinx/coroutines/V;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 87
    .line 88
    invoke-static {v4}, Lkotlin/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-interface {v1, v4}, Lkotlin/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    if-eqz v7, :cond_3

    .line 101
    .line 102
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 103
    .line 104
    invoke-static {v7}, Lkotlin/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-interface {v1, v4}, Lkotlin/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 117
    .line 118
    invoke-virtual {p0, v6}, Lkotlinx/coroutines/V;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {v1, v4}, Lkotlin/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    sget-object v1, Lkotlin/j;->a:Lkotlin/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    .line 131
    if-eqz v3, :cond_5

    .line 132
    .line 133
    :try_start_2
    invoke-virtual {v3}, Lkotlinx/coroutines/S0;->W0()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    return-void

    .line 141
    :cond_5
    :goto_3
    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/I;->f(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :goto_4
    if-eqz v3, :cond_6

    .line 146
    .line 147
    invoke-virtual {v3}, Lkotlinx/coroutines/S0;->W0()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    :cond_6
    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/I;->f(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :goto_5
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/V;->g(Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

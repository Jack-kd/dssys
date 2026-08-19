.class public Lorg/eclipse/jetty/util/d;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:I

.field public volatile g:I

.field public h:[Ljava/lang/Object;

.field public final i:Ljava/util/concurrent/locks/ReentrantLock;

.field public final j:Ljava/util/concurrent/locks/Condition;

.field public k:I

.field public final l:Ljava/util/concurrent/locks/ReentrantLock;

.field public m:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x80

    .line 5
    .line 6
    iput v0, p0, Lorg/eclipse/jetty/util/d;->b:I

    .line 7
    .line 8
    const/16 v0, 0x40

    .line 9
    .line 10
    iput v0, p0, Lorg/eclipse/jetty/util/d;->c:I

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lorg/eclipse/jetty/util/d;->j:Ljava/util/concurrent/locks/Condition;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    .line 39
    new-array p1, p1, [Ljava/lang/Object;

    .line 40
    .line 41
    iput-object p1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    .line 42
    .line 43
    array-length p1, p1

    .line 44
    iput p1, p0, Lorg/eclipse/jetty/util/d;->g:I

    .line 45
    .line 46
    iput p2, p0, Lorg/eclipse/jetty/util/d;->f:I

    .line 47
    .line 48
    const p1, 0x7fffffff

    .line 49
    .line 50
    .line 51
    iput p1, p0, Lorg/eclipse/jetty/util/d;->d:I

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/util/d;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ltz p1, :cond_6

    .line 5
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gt p1, v0, :cond_6

    .line 6
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/util/d;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 8
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/util/d;->m:I

    iget v1, p0, Lorg/eclipse/jetty/util/d;->k:I

    if-ne v0, v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "full"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    :goto_0
    iget v0, p0, Lorg/eclipse/jetty/util/d;->k:I

    add-int/2addr v0, p1

    .line 12
    iget p1, p0, Lorg/eclipse/jetty/util/d;->g:I

    if-lt v0, p1, :cond_3

    .line 13
    iget p1, p0, Lorg/eclipse/jetty/util/d;->g:I

    sub-int/2addr v0, p1

    .line 14
    :cond_3
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 15
    iget p1, p0, Lorg/eclipse/jetty/util/d;->m:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iget v2, p0, Lorg/eclipse/jetty/util/d;->g:I

    rem-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/jetty/util/d;->m:I

    if-ge v0, p1, :cond_4

    .line 16
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr p1, v0

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_1

    :cond_4
    if-lez p1, :cond_5

    .line 18
    iget-object v2, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    iget v2, p0, Lorg/eclipse/jetty/util/d;->g:I

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aput-object v2, p1, v3

    .line 20
    :cond_5
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/eclipse/jetty/util/d;->g:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-static {p1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    aput-object p2, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :goto_1
    :try_start_2
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 24
    :cond_6
    :try_start_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!(0<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :goto_2
    :try_start_4
    iget-object p2, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 26
    :goto_3
    iget-object p2, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/d;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 7

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/util/d;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    .line 16
    .line 17
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/util/d;->k:I

    .line 18
    .line 19
    iget v2, p0, Lorg/eclipse/jetty/util/d;->m:I

    .line 20
    .line 21
    iget v3, p0, Lorg/eclipse/jetty/util/d;->g:I

    .line 22
    .line 23
    iget v4, p0, Lorg/eclipse/jetty/util/d;->f:I

    .line 24
    .line 25
    add-int/2addr v3, v4

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    if-ge v0, v2, :cond_1

    .line 29
    .line 30
    sub-int/2addr v2, v0

    .line 31
    iget-object v4, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {v4, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    if-gt v0, v2, :cond_3

    .line 40
    .line 41
    iget-object v4, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-lez v4, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v2, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    :goto_0
    iget v4, p0, Lorg/eclipse/jetty/util/d;->g:I

    .line 53
    .line 54
    add-int/2addr v4, v2

    .line 55
    sub-int/2addr v4, v0

    .line 56
    iget v5, p0, Lorg/eclipse/jetty/util/d;->g:I

    .line 57
    .line 58
    sub-int/2addr v5, v0

    .line 59
    iget-object v6, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v6, v0, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {v0, v1, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    .line 68
    .line 69
    move v2, v4

    .line 70
    :goto_1
    iput-object v3, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    .line 71
    .line 72
    array-length v0, v3

    .line 73
    iput v0, p0, Lorg/eclipse/jetty/util/d;->g:I

    .line 74
    .line 75
    iput v1, p0, Lorg/eclipse/jetty/util/d;->k:I

    .line 76
    .line 77
    iput v2, p0, Lorg/eclipse/jetty/util/d;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    return v0

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    goto :goto_3

    .line 93
    :goto_2
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 96
    .line 97
    .line 98
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_1
    iput v0, p0, Lorg/eclipse/jetty/util/d;->k:I

    .line 13
    .line 14
    iput v0, p0, Lorg/eclipse/jetty/util/d;->m:I

    .line 15
    .line 16
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 38
    .line 39
    .line 40
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public element()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/d;->peek()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    if-ltz p1, :cond_1

    .line 12
    .line 13
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ge p1, v0, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lorg/eclipse/jetty/util/d;->k:I

    .line 22
    .line 23
    add-int/2addr v0, p1

    .line 24
    iget p1, p0, Lorg/eclipse/jetty/util/d;->g:I

    .line 25
    .line 26
    if-lt v0, p1, :cond_0

    .line 27
    .line 28
    iget p1, p0, Lorg/eclipse/jetty/util/d;->g:I

    .line 29
    .line 30
    sub-int/2addr v0, p1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    .line 35
    .line 36
    aget-object p1, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :catchall_1
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "!(0<"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, "<="

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, ")"

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :goto_1
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 92
    .line 93
    .line 94
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 98
    .line 99
    .line 100
    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/util/d;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 4
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/util/d;->g:I

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/d;->b()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    .line 8
    :try_start_3
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/util/d;->m:I

    aput-object p1, v0, v1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 10
    iget v0, p0, Lorg/eclipse/jetty/util/d;->g:I

    rem-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jetty/util/d;->m:I

    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    move v2, p1

    .line 12
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v2, :cond_4

    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 15
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_2
    move-exception p1

    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_4
    :goto_2
    return p1

    .line 16
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 17
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    .line 25
    .line 26
    iget v1, p0, Lorg/eclipse/jetty/util/d;->k:I

    .line 27
    .line 28
    aget-object v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    .line 4
    iget v0, p0, Lorg/eclipse/jetty/util/d;->k:I

    .line 5
    iget-object v2, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    aget-object v3, v2, v0

    .line 6
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 7
    iget v1, p0, Lorg/eclipse/jetty/util/d;->g:I

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/util/d;->k:I

    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_1

    .line 9
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v3

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3

    .line 11
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 12
    iget-object p3, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 13
    :goto_0
    :try_start_0
    iget-object p3, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_0

    .line 14
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 15
    :cond_0
    :try_start_1
    iget-object p3, p0, Lorg/eclipse/jetty/util/d;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 16
    :cond_1
    :try_start_2
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    iget p2, p0, Lorg/eclipse/jetty/util/d;->k:I

    aget-object p3, p1, p2

    .line 17
    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 18
    iget p1, p0, Lorg/eclipse/jetty/util/d;->g:I

    rem-int/2addr p2, p1

    iput p2, p0, Lorg/eclipse/jetty/util/d;->k:I

    .line 19
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-lez p1, :cond_2

    .line 20
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :cond_2
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p3

    .line 22
    :goto_1
    :try_start_3
    iget-object p2, p0, Lorg/eclipse/jetty/util/d;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 23
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/d;->add(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "full"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public remainingCapacity()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/d;->a()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/d;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    .line 29
    .line 30
    return v0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_0

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 37
    .line 38
    .line 39
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/d;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6

    .line 3
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ltz p1, :cond_3

    .line 5
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 6
    iget v0, p0, Lorg/eclipse/jetty/util/d;->k:I

    add-int/2addr v0, p1

    .line 7
    iget p1, p0, Lorg/eclipse/jetty/util/d;->g:I

    if-lt v0, p1, :cond_0

    .line 8
    iget p1, p0, Lorg/eclipse/jetty/util/d;->g:I

    sub-int/2addr v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 9
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    aget-object v1, p1, v0

    .line 10
    iget v2, p0, Lorg/eclipse/jetty/util/d;->m:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v2, v0

    .line 11
    invoke-static {p1, v4, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget p1, p0, Lorg/eclipse/jetty/util/d;->m:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/eclipse/jetty/util/d;->m:I

    .line 13
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 14
    iget v4, p0, Lorg/eclipse/jetty/util/d;->g:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-static {p1, v2, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget p1, p0, Lorg/eclipse/jetty/util/d;->m:I

    if-lez p1, :cond_2

    .line 16
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    iget v0, p0, Lorg/eclipse/jetty/util/d;->g:I

    iget-object v2, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    aput-object v5, p1, v0

    .line 17
    iget p1, p0, Lorg/eclipse/jetty/util/d;->m:I

    sub-int/2addr p1, v3

    invoke-static {v2, v3, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget p1, p0, Lorg/eclipse/jetty/util/d;->m:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/eclipse/jetty/util/d;->m:I

    goto :goto_1

    .line 19
    :cond_2
    iget p1, p0, Lorg/eclipse/jetty/util/d;->g:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/eclipse/jetty/util/d;->m:I

    .line 20
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_2
    :try_start_2
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 23
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!(0<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :goto_3
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 25
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    .line 14
    if-ltz p1, :cond_1

    .line 15
    .line 16
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ge p1, v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lorg/eclipse/jetty/util/d;->k:I

    .line 25
    .line 26
    add-int/2addr v0, p1

    .line 27
    iget p1, p0, Lorg/eclipse/jetty/util/d;->g:I

    .line 28
    .line 29
    if-lt v0, p1, :cond_0

    .line 30
    .line 31
    iget p1, p0, Lorg/eclipse/jetty/util/d;->g:I

    .line 32
    .line 33
    sub-int/2addr v0, p1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    .line 38
    .line 39
    aget-object v1, p1, v0

    .line 40
    .line 41
    aput-object p2, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    :try_start_2
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    :try_start_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v1, "!(0<"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, "<="

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, ")"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :goto_1
    :try_start_4
    iget-object p2, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 97
    .line 98
    .line 99
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jetty/util/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->j:Ljava/util/concurrent/locks/Condition;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/util/d;->k:I

    .line 25
    .line 26
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->h:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v2, v1, v0

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v3, v1, v0

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    iget v1, p0, Lorg/eclipse/jetty/util/d;->g:I

    .line 36
    .line 37
    rem-int/2addr v0, v1

    .line 38
    iput v0, p0, Lorg/eclipse/jetty/util/d;->k:I

    .line 39
    .line 40
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->j:Ljava/util/concurrent/locks/Condition;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 56
    .line 57
    .line 58
    return-object v2

    .line 59
    :goto_1
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->j:Ljava/util/concurrent/locks/Condition;

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 62
    .line 63
    .line 64
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/d;->i:Ljava/util/concurrent/locks/ReentrantLock;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

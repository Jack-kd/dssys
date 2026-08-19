.class public Lcom/sigmob/sdk/downloader/f;
.super Lcom/sigmob/sdk/downloader/core/a;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/f$b;,
        Lcom/sigmob/sdk/downloader/f$c;,
        Lcom/sigmob/sdk/downloader/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/downloader/core/a;",
        "Ljava/lang/Comparable<",
        "Lcom/sigmob/sdk/downloader/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I = 0x3


# instance fields
.field private final A:Ljava/io/File;

.field private final B:Ljava/io/File;

.field private C:Ljava/io/File;

.field private D:Ljava/lang/String;

.field private E:Ljava/io/File;

.field private F:I

.field private final b:I

.field private volatile c:J

.field private final d:Ljava/lang/String;

.field private final e:Landroid/net/Uri;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:Ljava/lang/Integer;

.field private final p:Ljava/lang/Boolean;

.field private final q:Z

.field private final r:Z

.field private final s:I

.field private volatile t:Lcom/sigmob/sdk/downloader/c;

.field private volatile u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/Object;

.field private final w:Z

.field private final x:Ljava/util/concurrent/atomic/AtomicLong;

.field private final y:Z

.field private final z:Lcom/sigmob/sdk/downloader/core/download/g$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;IIIIIZILjava/util/Map;Ljava/lang/String;ZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "IIIIIZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/a;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/f;->e:Landroid/net/Uri;

    iput p3, p0, Lcom/sigmob/sdk/downloader/f;->j:I

    iput p4, p0, Lcom/sigmob/sdk/downloader/f;->k:I

    iput p5, p0, Lcom/sigmob/sdk/downloader/f;->l:I

    iput p6, p0, Lcom/sigmob/sdk/downloader/f;->m:I

    iput p7, p0, Lcom/sigmob/sdk/downloader/f;->n:I

    iput-boolean p8, p0, Lcom/sigmob/sdk/downloader/f;->r:Z

    iput p9, p0, Lcom/sigmob/sdk/downloader/f;->s:I

    iput-object p10, p0, Lcom/sigmob/sdk/downloader/f;->h:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->x:Ljava/util/concurrent/atomic/AtomicLong;

    iput-boolean p12, p0, Lcom/sigmob/sdk/downloader/f;->q:Z

    iput-boolean p13, p0, Lcom/sigmob/sdk/downloader/f;->w:Z

    iput-object p15, p0, Lcom/sigmob/sdk/downloader/f;->o:Ljava/lang/Integer;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->p:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/sigmob/sdk/downloader/core/c;->b(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p14, :cond_6

    invoke-virtual {p14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "If you want filename from response please make sure you provide path is directory "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-static {p11}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Discard filename["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] because you set filenameFromResponse=true"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DownloadTask"

    invoke-static {p3, p2}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p11, 0x0

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    move-object p2, p14

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p11}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "If you don\'t want filename from response please make sure you have already provided valid filename or not directory path "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_2
    invoke-static {p11}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p11

    invoke-static {p1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    goto :goto_5

    :cond_8
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-static {p11}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Uri already provided filename!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p11

    invoke-static {p1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    goto :goto_3

    :cond_b
    invoke-static {p11}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4

    :goto_5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sigmob/sdk/downloader/f;->y:Z

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/downloader/f;->y:Z

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    :goto_6
    invoke-static {p11}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-direct {p1}, Lcom/sigmob/sdk/downloader/core/download/g$a;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    :goto_7
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->A:Ljava/io/File;

    goto :goto_8

    :cond_d
    new-instance p1, Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-direct {p1, p11}, Lcom/sigmob/sdk/downloader/core/download/g$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    invoke-direct {p1, p2, p11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->C:Ljava/io/File;

    goto :goto_7

    :goto_8
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->b(Lcom/sigmob/sdk/downloader/f;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/downloader/f;->b:I

    return-void
.end method

.method public static a([Lcom/sigmob/sdk/downloader/f;)V
    .locals 1

    .line 10
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a([Lcom/sigmob/sdk/downloader/core/a;)V

    return-void
.end method

.method public static a([Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/c;)V
    .locals 3

    .line 11
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iput-object p1, v2, Lcom/sigmob/sdk/downloader/f;->t:Lcom/sigmob/sdk/downloader/c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a([Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public static c(I)Lcom/sigmob/sdk/downloader/f$b;
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/downloader/f$b;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/downloader/f$b;-><init>(I)V

    return-object v0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/downloader/f;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/downloader/f;)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/f;->A:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized A()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sigmob/sdk/downloader/f;->v:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public B()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/sdk/downloader/f;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u64cd\u4f5c\u592a\u9891\u7e41"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/f;->c:J

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public C()Z
    .locals 2

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->F:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sigmob/sdk/downloader/f;->F:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;)V

    const/4 v0, 0x1

    return v0
.end method

.method public D()V
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->b(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public E()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/sdk/downloader/f;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u64cd\u4f5c\u592a\u9891\u7e41"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/f;->c:J

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/core/a;)Z

    return-void
.end method

.method public F()Lcom/sigmob/sdk/downloader/c;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->t:Lcom/sigmob/sdk/downloader/c;

    return-object v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->j:I

    return v0
.end method

.method public H()Lcom/sigmob/sdk/downloader/f$a;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->e:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/downloader/f;->a(Ljava/lang/String;Landroid/net/Uri;)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;)Lcom/sigmob/sdk/downloader/f$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/f$a;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/sdk/downloader/f$a;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget p1, p0, Lcom/sigmob/sdk/downloader/f;->j:I

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/f$a;->c(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->k:I

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->d(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->l:I

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->e(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->m:I

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->f(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->n:I

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->g(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->r:Z

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->b(Z)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->s:I

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->b(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->h:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->a(Ljava/util/Map;)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->q:Z

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->c(Z)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    invoke-static {p2}, Lcom/sigmob/sdk/downloader/core/c;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/f;->e:Landroid/net/Uri;

    invoke-static {p2}, Lcom/sigmob/sdk/downloader/core/c;->b(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/downloader/f$a;->a(Ljava/lang/String;)Lcom/sigmob/sdk/downloader/f$a;

    :cond_0
    return-object p1
.end method

.method public declared-synchronized a(ILjava/lang/Object;)Lcom/sigmob/sdk/downloader/f;
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object p0

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->x:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/c;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->t:Lcom/sigmob/sdk/downloader/c;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)V
    .locals 1

    .line 7
    iget-object v0, p1, Lcom/sigmob/sdk/downloader/f;->v:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/f;->v:Ljava/lang/Object;

    iget-object p1, p1, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->v:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->D:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->y:Z

    return v0
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->G()I

    move-result p1

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/f;->G()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->h:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized b(I)V
    .locals 1

    .line 3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lcom/sigmob/sdk/downloader/c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->t:Lcom/sigmob/sdk/downloader/c;

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->b:I

    return v0
.end method

.method public c(Lcom/sigmob/sdk/downloader/c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->t:Lcom/sigmob/sdk/downloader/c;

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->b(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/f;->b(Lcom/sigmob/sdk/downloader/f;)I

    move-result p1

    return p1
.end method

.method public d(I)Lcom/sigmob/sdk/downloader/f$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/f$b;

    invoke-direct {v0, p1, p0}, Lcom/sigmob/sdk/downloader/f$b;-><init>(ILcom/sigmob/sdk/downloader/f;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->q:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/sigmob/sdk/downloader/f;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sigmob/sdk/downloader/f;

    iget v0, p1, Lcom/sigmob/sdk/downloader/f;->b:I

    iget v2, p0, Lcom/sigmob/sdk/downloader/f;->b:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/a;->a(Lcom/sigmob/sdk/downloader/core/a;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->w:Z

    return v0
.end method

.method public g()Lcom/sigmob/sdk/downloader/core/download/g$a;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->A:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->D:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->A:Ljava/io/File;

    return-object v0
.end method

.method public l()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    return-object v0
.end method

.method public m()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->E:Ljava/io/File;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/f;->E:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->E:Ljava/io/File;

    return-object v0
.end method

.method public n()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->C:Ljava/io/File;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/f;->C:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->C:Ljava/io/File;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->k:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->l:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->m:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->n:I

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->r:Z

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->s:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sigmob/sdk/downloader/f;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public v()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->p:Ljava/lang/Boolean;

    return-object v0
.end method

.method public w()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g()I

    move-result v0

    return v0
.end method

.method public x()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public y()Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/downloader/f;->b:I

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/f;->i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    return-object v0
.end method

.method public z()J
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->x:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

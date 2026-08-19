.class public Lcom/octopus/ad/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/n$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/octopus/ad/internal/y;

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:Lcom/octopus/ad/internal/n$a;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/octopus/ad/internal/c/d$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/octopus/ad/internal/y;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/octopus/ad/internal/y;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/internal/n;->g:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/octopus/ad/internal/n;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/octopus/ad/internal/n;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/octopus/ad/internal/n;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-wide p4, p0, Lcom/octopus/ad/internal/n;->d:J

    .line 14
    .line 15
    iput-object p6, p0, Lcom/octopus/ad/internal/n;->e:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/octopus/ad/internal/n;->f:Lcom/octopus/ad/internal/y;

    .line 18
    .line 19
    new-instance p1, Lcom/octopus/ad/internal/n$a;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-direct {p1, p0, p2}, Lcom/octopus/ad/internal/n$a;-><init>(Lcom/octopus/ad/internal/n;Lcom/octopus/ad/internal/n$1;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/octopus/ad/internal/n;->i:Lcom/octopus/ad/internal/n$a;

    .line 26
    .line 27
    iput-object p8, p0, Lcom/octopus/ad/internal/n;->h:Landroid/content/Context;

    .line 28
    .line 29
    iput-object p9, p0, Lcom/octopus/ad/internal/n;->j:Ljava/util/ArrayList;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/n;)Lcom/octopus/ad/internal/c/d$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/n;->k:Lcom/octopus/ad/internal/c/d$a;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/octopus/ad/internal/y;Landroid/content/Context;Ljava/util/ArrayList;)Lcom/octopus/ad/internal/n;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/octopus/ad/internal/y;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/octopus/ad/internal/n;"
        }
    .end annotation

    if-nez p6, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/n;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/octopus/ad/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/octopus/ad/internal/y;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3
    iget-object p0, v0, Lcom/octopus/ad/internal/n;->i:Lcom/octopus/ad/internal/n$a;

    invoke-virtual {v7, p0}, Lcom/octopus/ad/internal/y;->a(Lcom/octopus/ad/internal/y$a;)V

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/octopus/ad/internal/n;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/n;->h:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/b/g;->a(Landroid/content/Context;)Lcom/octopus/ad/internal/b/g;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/octopus/ad/internal/n;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/b/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/octopus/ad/internal/n;->b()V

    .line 8
    iget-object v0, p0, Lcom/octopus/ad/internal/n;->f:Lcom/octopus/ad/internal/y;

    iget-object v1, p0, Lcom/octopus/ad/internal/n;->i:Lcom/octopus/ad/internal/n$a;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/y;->b(Lcom/octopus/ad/internal/y$a;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/octopus/ad/internal/n;->i:Lcom/octopus/ad/internal/n$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/n;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/octopus/ad/internal/n;->h:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/b/g;->a(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/octopus/ad/internal/n;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/n;)Lcom/octopus/ad/internal/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/n;->f:Lcom/octopus/ad/internal/y;

    return-object p0
.end method

.method private b()V
    .locals 9

    .line 2
    new-instance v0, Lcom/octopus/ad/internal/u;

    iget-object v1, p0, Lcom/octopus/ad/internal/n;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/octopus/ad/internal/n;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/octopus/ad/internal/n;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/octopus/ad/internal/n;->d:J

    iget-object v6, p0, Lcom/octopus/ad/internal/n;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/octopus/ad/internal/n;->j:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/octopus/ad/internal/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 3
    new-instance v1, Lcom/octopus/ad/internal/n$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/n$1;-><init>(Lcom/octopus/ad/internal/n;)V

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/u;->a(Lcom/octopus/ad/internal/c/d$a;)V

    .line 4
    invoke-virtual {v0}, Lcom/octopus/ad/internal/u;->a()V

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/n;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/octopus/ad/internal/c/d$a;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/octopus/ad/internal/n;->k:Lcom/octopus/ad/internal/c/d$a;

    return-void
.end method

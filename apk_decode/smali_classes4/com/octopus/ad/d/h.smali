.class public Lcom/octopus/ad/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Lcom/octopus/ad/d/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "OnLineStateClass"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/octopus/ad/d/h;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/octopus/ad/d/h;->b:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/octopus/ad/d/h;->c:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/octopus/ad/d/h;->d:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/octopus/ad/d/h;->e:Z

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/octopus/ad/d/h;->g:Ljava/util/Map;

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/octopus/ad/d/h;->h:J

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/d/h;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/d/h;->h:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/d/h;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/octopus/ad/d/h;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/octopus/ad/d/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/d/h;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/d/h;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/octopus/ad/d/h;->c:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/d/h;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/d/h;->g:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic b(Lcom/octopus/ad/d/h;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/d/h;->d:Z

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/d/h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/d/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/octopus/ad/d/h;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/d/h;->e:Z

    return p1
.end method

.method public static synthetic d(Lcom/octopus/ad/d/h;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/octopus/ad/d/h;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/octopus/ad/d/h;->b:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic e(Lcom/octopus/ad/d/h;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/d/h;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic f(Lcom/octopus/ad/d/h;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/d/h;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/octopus/ad/d/h;)Lcom/octopus/ad/d/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/d/h;->i:Lcom/octopus/ad/d/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/octopus/ad/d/h;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/octopus/ad/d/h;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/octopus/ad/d/h;->b:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic i(Lcom/octopus/ad/d/h;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/d/h;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic j(Lcom/octopus/ad/d/h;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/d/h;->h:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/octopus/ad/d/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/octopus/ad/d/h;->h:J

    .line 7
    new-instance v0, Lcom/octopus/ad/d/h$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/d/h$1;-><init>(Lcom/octopus/ad/d/h;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public a(Lcom/octopus/ad/d/f;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/octopus/ad/d/h;->i:Lcom/octopus/ad/d/f;

    return-void
.end method

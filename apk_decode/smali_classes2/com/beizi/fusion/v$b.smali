.class public Lcom/beizi/fusion/v$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/List;

.field private g:I

.field private h:Z

.field private i:Lcom/beizi/fusion/i;

.field private j:Lcom/beizi/fusion/r9;

.field private k:Ljava/util/Map;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/beizi/fusion/v$b;->g:I

    .line 6
    .line 7
    sget-object v0, Lcom/beizi/fusion/i;->c:Lcom/beizi/fusion/i;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/beizi/fusion/v$b;->i:Lcom/beizi/fusion/i;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/beizi/fusion/v$b;->a:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/beizi/fusion/v$b;->f:Ljava/util/List;

    .line 19
    .line 20
    const-string v0, "CNY"

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/v$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/v$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/beizi/fusion/v$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/v$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/beizi/fusion/v$b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/v$b;->k:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/beizi/fusion/v$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/v$b;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/beizi/fusion/v$b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/v$b;->m:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/beizi/fusion/v$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/v$b;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/beizi/fusion/v$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/v$b;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/beizi/fusion/v$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/v$b;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/beizi/fusion/v$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/v$b;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/beizi/fusion/v$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/v$b;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic k(Lcom/beizi/fusion/v$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/v$b;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic l(Lcom/beizi/fusion/v$b;)Lcom/beizi/fusion/r9;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/v$b;->j:Lcom/beizi/fusion/r9;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/beizi/fusion/v$b;)Lcom/beizi/fusion/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/v$b;->i:Lcom/beizi/fusion/i;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/r9;)Lcom/beizi/fusion/v$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/v$b;->j:Lcom/beizi/fusion/r9;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/beizi/fusion/v$b;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/v$b;->k:Ljava/util/Map;

    return-object p0
.end method

.method public a(Z)Lcom/beizi/fusion/v$b;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/fusion/v$b;->d:Z

    return-object p0
.end method

.method public a()Lcom/beizi/fusion/v;
    .locals 2

    .line 2
    new-instance v0, Lcom/beizi/fusion/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beizi/fusion/v;-><init>(Lcom/beizi/fusion/v$b;Lcom/beizi/fusion/v$a;)V

    return-object v0
.end method

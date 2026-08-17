.class public Lcom/anythink/core/common/h/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "a"


# instance fields
.field public A:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

.field public B:Ljava/lang/String;

.field public C:D

.field public D:I

.field public E:I

.field public F:Lcom/anythink/core/common/h;

.field public G:Z

.field public H:J

.field public I:Lcom/anythink/core/common/b/c;

.field public J:Lcom/anythink/core/common/f;

.field public K:Lcom/anythink/core/e/f;

.field public b:Landroid/content/Context;

.field public c:Lcom/anythink/core/common/h/as;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:J

.field public h:J

.field public i:J

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Lcom/anythink/core/common/h/ce;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/anythink/core/c/c/a;

.field public s:Lcom/anythink/core/common/h/n;

.field public t:I

.field public u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lcom/anythink/core/common/h/cc;

.field public w:Lcom/anythink/core/common/h/bs;

.field public x:Lcom/anythink/core/common/h/ac;

.field public y:Lcom/anythink/core/common/w/i;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/anythink/core/common/h/a;->t:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/anythink/core/common/h/a;->z:I

    .line 9
    .line 10
    iput v0, p0, Lcom/anythink/core/common/h/a;->E:I

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/anythink/core/common/h/a;->G:Z

    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/anythink/core/common/h/a;->H:J

    .line 17
    .line 18
    return-void
.end method

.method private a()Lcom/anythink/core/common/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/h/a;->J:Lcom/anythink/core/common/f;

    return-object v0
.end method

.method private b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/anythink/core/common/h/a;->G:Z

    return v0
.end method

.method private c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/anythink/core/common/h/a;->H:J

    return-wide v0
.end method

.method private c(Ljava/util/List;)Lcom/anythink/core/common/h/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;)",
            "Lcom/anythink/core/common/h/a;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/anythink/core/common/h/a;

    invoke-direct {v0}, Lcom/anythink/core/common/h/a;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/anythink/core/common/h/a;->b:Landroid/content/Context;

    iput-object v1, v0, Lcom/anythink/core/common/h/a;->b:Landroid/content/Context;

    .line 4
    iget-object v1, p0, Lcom/anythink/core/common/h/a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/h/a;->d:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/anythink/core/common/h/a;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/h/a;->e:Ljava/lang/String;

    .line 6
    iget v1, p0, Lcom/anythink/core/common/h/a;->f:I

    iput v1, v0, Lcom/anythink/core/common/h/a;->f:I

    .line 7
    iget-wide v1, p0, Lcom/anythink/core/common/h/a;->h:J

    iput-wide v1, v0, Lcom/anythink/core/common/h/a;->h:J

    .line 8
    iget-object v1, p0, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    iput-object v1, v0, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    .line 9
    iget-wide v1, p0, Lcom/anythink/core/common/h/a;->g:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const-wide/16 v1, 0x2710

    .line 10
    iput-wide v1, v0, Lcom/anythink/core/common/h/a;->g:J

    goto :goto_0

    .line 11
    :cond_0
    iput-wide v1, v0, Lcom/anythink/core/common/h/a;->g:J

    .line 12
    :goto_0
    iget-boolean v1, p0, Lcom/anythink/core/common/h/a;->m:Z

    iput-boolean v1, v0, Lcom/anythink/core/common/h/a;->m:Z

    .line 13
    iget-object v1, p0, Lcom/anythink/core/common/h/a;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/h/a;->o:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/anythink/core/common/h/a;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/h/a;->p:Ljava/lang/String;

    .line 15
    iput-object p1, v0, Lcom/anythink/core/common/h/a;->j:Ljava/util/List;

    .line 16
    iget-object p1, p0, Lcom/anythink/core/common/h/a;->q:Ljava/util/Map;

    iput-object p1, v0, Lcom/anythink/core/common/h/a;->q:Ljava/util/Map;

    .line 17
    iget-wide v1, p0, Lcom/anythink/core/common/h/a;->i:J

    iput-wide v1, v0, Lcom/anythink/core/common/h/a;->i:J

    .line 18
    iget-object p1, p0, Lcom/anythink/core/common/h/a;->c:Lcom/anythink/core/common/h/as;

    iput-object p1, v0, Lcom/anythink/core/common/h/a;->c:Lcom/anythink/core/common/h/as;

    .line 19
    iget-object p1, p0, Lcom/anythink/core/common/h/a;->s:Lcom/anythink/core/common/h/n;

    iput-object p1, v0, Lcom/anythink/core/common/h/a;->s:Lcom/anythink/core/common/h/n;

    .line 20
    iget p1, p0, Lcom/anythink/core/common/h/a;->t:I

    iput p1, v0, Lcom/anythink/core/common/h/a;->t:I

    .line 21
    iget-object p1, p0, Lcom/anythink/core/common/h/a;->u:Ljava/util/Map;

    iput-object p1, v0, Lcom/anythink/core/common/h/a;->u:Ljava/util/Map;

    .line 22
    iget p1, p0, Lcom/anythink/core/common/h/a;->z:I

    iput p1, v0, Lcom/anythink/core/common/h/a;->z:I

    .line 23
    iget-object p1, p0, Lcom/anythink/core/common/h/a;->y:Lcom/anythink/core/common/w/i;

    iput-object p1, v0, Lcom/anythink/core/common/h/a;->y:Lcom/anythink/core/common/w/i;

    .line 24
    iget-object p1, p0, Lcom/anythink/core/common/h/a;->x:Lcom/anythink/core/common/h/ac;

    iput-object p1, v0, Lcom/anythink/core/common/h/a;->x:Lcom/anythink/core/common/h/ac;

    .line 25
    iget-object p1, p0, Lcom/anythink/core/common/h/a;->A:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    iput-object p1, v0, Lcom/anythink/core/common/h/a;->A:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    .line 26
    iget-object p1, p0, Lcom/anythink/core/common/h/a;->B:Ljava/lang/String;

    iput-object p1, v0, Lcom/anythink/core/common/h/a;->B:Ljava/lang/String;

    .line 27
    iget-wide v1, p0, Lcom/anythink/core/common/h/a;->C:D

    iput-wide v1, v0, Lcom/anythink/core/common/h/a;->C:D

    .line 28
    iget p1, p0, Lcom/anythink/core/common/h/a;->D:I

    iput p1, v0, Lcom/anythink/core/common/h/a;->D:I

    .line 29
    iget p1, p0, Lcom/anythink/core/common/h/a;->E:I

    iput p1, v0, Lcom/anythink/core/common/h/a;->E:I

    .line 30
    iget-object p1, p0, Lcom/anythink/core/common/h/a;->I:Lcom/anythink/core/common/b/c;

    iput-object p1, v0, Lcom/anythink/core/common/h/a;->I:Lcom/anythink/core/common/b/c;

    .line 31
    iget-wide v1, p0, Lcom/anythink/core/common/h/a;->H:J

    iput-wide v1, v0, Lcom/anythink/core/common/h/a;->H:J

    .line 32
    iget-object p1, p0, Lcom/anythink/core/common/h/a;->J:Lcom/anythink/core/common/f;

    iput-object p1, v0, Lcom/anythink/core/common/h/a;->J:Lcom/anythink/core/common/f;

    return-object v0
.end method

.method private d(Ljava/util/List;)Lcom/anythink/core/common/h/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;)",
            "Lcom/anythink/core/common/h/a;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/anythink/core/common/h/a;->c(Ljava/util/List;)Lcom/anythink/core/common/h/a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/anythink/core/common/h/a;->o:Ljava/lang/String;

    iput-object v0, p1, Lcom/anythink/core/common/h/a;->o:Ljava/lang/String;

    .line 4
    iget-wide v0, p0, Lcom/anythink/core/common/h/a;->h:J

    iput-wide v0, p1, Lcom/anythink/core/common/h/a;->h:J

    return-object p1
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/h/a;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/anythink/core/common/h/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;)",
            "Lcom/anythink/core/common/h/a;"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/anythink/core/common/h/a;->c(Ljava/util/List;)Lcom/anythink/core/common/h/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)Lcom/anythink/core/common/h/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;)",
            "Lcom/anythink/core/common/h/a;"
        }
    .end annotation

    .line 2
    const-string v0, "size"

    invoke-direct {p0, p1}, Lcom/anythink/core/common/h/a;->c(Ljava/util/List;)Lcom/anythink/core/common/h/a;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/anythink/core/common/h/a;->l:Ljava/lang/String;

    iput-object v1, p1, Lcom/anythink/core/common/h/a;->l:Ljava/lang/String;

    if-eqz p2, :cond_e

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 6
    invoke-static {p2, v1}, Lcom/anythink/core/common/v/o;->a(Ljava/util/List;Lcom/anythink/core/common/k/f;)Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x0

    .line 7
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/h/by;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/anythink/core/common/h/by;

    .line 12
    invoke-virtual {v8}, Lcom/anythink/core/common/h/by;->y()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    .line 13
    invoke-virtual {v8}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v8}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v8}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v9

    .line 16
    iget-object v8, v8, Lcom/anythink/core/common/h/by;->e:Ljava/lang/String;

    .line 17
    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {v3}, Lcom/anythink/core/common/v/t;->a(Lcom/anythink/core/common/h/by;)Lcom/anythink/core/common/h/p;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 19
    iget-object v7, v5, Lcom/anythink/core/common/h/p;->a:Lcom/anythink/core/api/bridge/ATBaseAdAdapter;

    goto :goto_1

    :cond_2
    move-object v7, v1

    :goto_1
    if-nez v7, :cond_4

    if-eqz v5, :cond_3

    .line 20
    const-string v6, "There is no Network Adapter."

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/h/p;->b(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    move-object v5, v1

    goto :goto_3

    .line 21
    :cond_4
    iget-object v5, p0, Lcom/anythink/core/common/h/a;->c:Lcom/anythink/core/common/h/as;

    if-eqz v5, :cond_5

    .line 22
    invoke-virtual {v5}, Lcom/anythink/core/common/h/as;->b()Lcom/anythink/core/api/ATAdRequest;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v1

    .line 23
    :goto_2
    iget-object v8, p0, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v8}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v8

    iget-object v9, p0, Lcom/anythink/core/common/h/a;->e:Ljava/lang/String;

    iget-object v10, p0, Lcom/anythink/core/common/h/a;->d:Ljava/lang/String;

    .line 24
    invoke-virtual {v8, v9, v10, v3, v5}, Lcom/anythink/core/e/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/by;Lcom/anythink/core/api/ATAdRequest;)Ljava/util/Map;

    move-result-object v5

    .line 25
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v8

    invoke-virtual {v8}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->getInnerBidToken(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_e

    .line 26
    iget v6, p1, Lcom/anythink/core/common/h/a;->f:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    .line 27
    invoke-virtual {v7}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    .line 28
    invoke-static {v5, v6, v3, p1}, Lcom/anythink/core/c/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/a;)V

    .line 29
    :try_start_0
    iget v6, p1, Lcom/anythink/core/common/h/a;->f:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x32

    const/4 v9, 0x1

    if-eq v7, v8, :cond_7

    const/16 v2, 0x34

    if-eq v7, v2, :cond_6

    goto :goto_4

    :cond_6
    const-string v2, "4"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v9

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_7
    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v2, -0x1

    :goto_5
    const/4 v6, 0x2

    const-string v7, "get_offer"

    if-eqz v2, :cond_a

    if-eq v2, v9, :cond_9

    goto :goto_6

    .line 30
    :cond_9
    :try_start_1
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_6

    .line 31
    :cond_a
    iget-object v2, p1, Lcom/anythink/core/common/h/a;->c:Lcom/anythink/core/common/h/as;

    if-eqz v2, :cond_b

    .line 32
    invoke-virtual {v2}, Lcom/anythink/core/common/h/as;->b()Lcom/anythink/core/api/ATAdRequest;

    move-result-object v1

    .line 33
    :cond_b
    iget-object v2, p1, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v2}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v2

    iget-object v8, p1, Lcom/anythink/core/common/h/a;->e:Ljava/lang/String;

    iget-object v9, p1, Lcom/anythink/core/common/h/a;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {v2, v8, v9, v3, v1}, Lcom/anythink/core/e/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/by;Lcom/anythink/core/api/ATAdRequest;)Ljava/util/Map;

    move-result-object v1

    .line 35
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 37
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_c
    :goto_6
    iget v0, p1, Lcom/anythink/core/common/h/a;->z:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 39
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    :cond_d
    const-string v0, "unit_ids"

    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 41
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    :goto_8
    iput-object p2, p1, Lcom/anythink/core/common/h/a;->k:Ljava/util/List;

    .line 43
    new-instance p2, Lcom/anythink/core/c/c/a;

    invoke-direct {p2, v3, v5}, Lcom/anythink/core/c/c/a;-><init>(Lcom/anythink/core/common/h/by;Lorg/json/JSONObject;)V

    iput-object p2, p1, Lcom/anythink/core/common/h/a;->r:Lcom/anythink/core/c/c/a;

    .line 44
    :cond_e
    iget-object p2, p0, Lcom/anythink/core/common/h/a;->v:Lcom/anythink/core/common/h/cc;

    iput-object p2, p1, Lcom/anythink/core/common/h/a;->v:Lcom/anythink/core/common/h/cc;

    .line 45
    iget-object p2, p0, Lcom/anythink/core/common/h/a;->w:Lcom/anythink/core/common/h/bs;

    iput-object p2, p1, Lcom/anythink/core/common/h/a;->w:Lcom/anythink/core/common/h/bs;

    return-object p1
.end method

.method public final b(Ljava/util/List;)Lcom/anythink/core/common/h/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/h/by;",
            ">;)",
            "Lcom/anythink/core/common/h/a;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/anythink/core/common/h/a;->c(Ljava/util/List;)Lcom/anythink/core/common/h/a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/anythink/core/common/h/a;->p:Ljava/lang/String;

    iput-object v0, p1, Lcom/anythink/core/common/h/a;->p:Ljava/lang/String;

    return-object p1
.end method

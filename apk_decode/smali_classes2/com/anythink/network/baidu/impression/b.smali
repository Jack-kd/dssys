.class Lcom/anythink/network/baidu/impression/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/baidu/impression/b$e;,
        Lcom/anythink/network/baidu/impression/b$c;,
        Lcom/anythink/network/baidu/impression/b$d;,
        Lcom/anythink/network/baidu/impression/b$b;
    }
.end annotation


# static fields
.field private static k:I = 0x3e8

.field static final l:I = 0x32


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field final c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/network/baidu/impression/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/anythink/network/baidu/impression/b$c;

.field private g:Lcom/anythink/network/baidu/impression/b$e;

.field private final h:Lcom/anythink/network/baidu/impression/b$d;

.field private final i:Landroid/os/Handler;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lcom/anythink/network/baidu/impression/b$c;

    invoke-direct {v1}, Lcom/anythink/network/baidu/impression/b$c;-><init>()V

    new-instance v2, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/anythink/network/baidu/impression/b;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/baidu/impression/b$c;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lcom/anythink/network/baidu/impression/b$c;

    invoke-direct {v1}, Lcom/anythink/network/baidu/impression/b$c;-><init>()V

    new-instance v2, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/anythink/network/baidu/impression/b;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/baidu/impression/b$c;Landroid/os/Handler;)V

    .line 7
    sput p2, Lcom/anythink/network/baidu/impression/b;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/baidu/impression/b$c;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/network/baidu/impression/b$b;",
            ">;",
            "Lcom/anythink/network/baidu/impression/b$c;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/anythink/network/baidu/impression/b;->b:J

    .line 10
    iput-object p2, p0, Lcom/anythink/network/baidu/impression/b;->e:Ljava/util/Map;

    .line 11
    iput-object p3, p0, Lcom/anythink/network/baidu/impression/b;->f:Lcom/anythink/network/baidu/impression/b$c;

    .line 12
    iput-object p4, p0, Lcom/anythink/network/baidu/impression/b;->i:Landroid/os/Handler;

    .line 13
    new-instance p2, Lcom/anythink/network/baidu/impression/b$d;

    invoke-direct {p2, p0}, Lcom/anythink/network/baidu/impression/b$d;-><init>(Lcom/anythink/network/baidu/impression/b;)V

    iput-object p2, p0, Lcom/anythink/network/baidu/impression/b;->h:Lcom/anythink/network/baidu/impression/b$d;

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0x32

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/anythink/network/baidu/impression/b;->a:Ljava/util/ArrayList;

    .line 15
    new-instance p2, Lcom/anythink/network/baidu/impression/b$a;

    invoke-direct {p2, p0}, Lcom/anythink/network/baidu/impression/b$a;-><init>(Lcom/anythink/network/baidu/impression/b;)V

    iput-object p2, p0, Lcom/anythink/network/baidu/impression/b;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 16
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/anythink/network/baidu/impression/b;->d:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-direct {p0, p1, p3}, Lcom/anythink/network/baidu/impression/b;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/impression/b;)Ljava/util/Map;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/anythink/network/baidu/impression/b;->e:Ljava/util/Map;

    return-object p0
.end method

.method private a(J)V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/network/baidu/impression/b$b;

    iget-wide v2, v2, Lcom/anythink/network/baidu/impression/b$b;->c:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/anythink/network/baidu/impression/b;->a:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/baidu/impression/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Landroid/view/View;

    .line 31
    invoke-virtual {p0, v1}, Lcom/anythink/network/baidu/impression/b;->a(Landroid/view/View;)V

    goto :goto_1

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/baidu/impression/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lcom/anythink/network/baidu/impression/BDViews;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-nez p2, :cond_2

    :goto_0
    return-void

    .line 8
    :cond_2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/anythink/network/baidu/impression/b;->d:Ljava/lang/ref/WeakReference;

    .line 9
    iget-object p2, p0, Lcom/anythink/network/baidu/impression/b;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/impression/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/anythink/network/baidu/impression/b;->j:Z

    return p1
.end method

.method public static synthetic b(Lcom/anythink/network/baidu/impression/b;)Lcom/anythink/network/baidu/impression/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/impression/b;->f:Lcom/anythink/network/baidu/impression/b$c;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/baidu/impression/b;)Lcom/anythink/network/baidu/impression/b$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/impression/b;->g:Lcom/anythink/network/baidu/impression/b$e;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 35
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 36
    iput-boolean v1, p0, Lcom/anythink/network/baidu/impression/b;->j:Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Integer;)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/anythink/network/baidu/impression/b;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V
    .locals 2

    .line 13
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/anythink/network/baidu/impression/b;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/network/baidu/impression/b$b;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/anythink/network/baidu/impression/b$b;

    invoke-direct {v0}, Lcom/anythink/network/baidu/impression/b$b;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/anythink/network/baidu/impression/b;->e:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/anythink/network/baidu/impression/b;->c()V

    .line 18
    :cond_0
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 19
    iput-object p1, v0, Lcom/anythink/network/baidu/impression/b$b;->d:Landroid/view/View;

    .line 20
    iput p3, v0, Lcom/anythink/network/baidu/impression/b$b;->a:I

    .line 21
    iput p2, v0, Lcom/anythink/network/baidu/impression/b$b;->b:I

    .line 22
    iget-wide p1, p0, Lcom/anythink/network/baidu/impression/b;->b:J

    iput-wide p1, v0, Lcom/anythink/network/baidu/impression/b$b;->c:J

    .line 23
    iput-object p5, v0, Lcom/anythink/network/baidu/impression/b$b;->e:Ljava/lang/Integer;

    const-wide/16 p3, 0x1

    add-long/2addr p3, p1

    .line 24
    iput-wide p3, p0, Lcom/anythink/network/baidu/impression/b;->b:J

    const-wide/16 v0, 0x32

    .line 25
    rem-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-nez p3, :cond_1

    const-wide/16 p3, -0x31

    add-long/2addr p1, p3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/baidu/impression/b;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)V
    .locals 6

    move v4, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/anythink/network/baidu/impression/b;->a(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V

    return-void
.end method

.method public a(Lcom/anythink/network/baidu/impression/b$e;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/anythink/network/baidu/impression/b;->g:Lcom/anythink/network/baidu/impression/b$e;

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/anythink/network/baidu/impression/b;->a()V

    .line 3
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/anythink/network/baidu/impression/b;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/anythink/network/baidu/impression/b;->g:Lcom/anythink/network/baidu/impression/b$e;

    return-void
.end method

.method public c()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/anythink/network/baidu/impression/b;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/anythink/network/baidu/impression/b;->j:Z

    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/impression/b;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/network/baidu/impression/b;->h:Lcom/anythink/network/baidu/impression/b$d;

    sget v2, Lcom/anythink/network/baidu/impression/b;->k:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.class public final Lcom/kwad/components/core/innerEc/live/b/c/c;
.super Lcom/kwad/components/core/innerEc/live/b/a/a;
.source "SourceFile"


# instance fields
.field private UY:Lcom/kwad/components/core/innerEc/live/config/a;

.field private Va:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;

.field private Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

.field private Vc:Lcom/kwad/components/core/innerEc/live/widget/h;

.field private Vd:Lcom/kwad/components/core/innerEc/live/widget/f;

.field private Ve:I

.field private Vf:I

.field private Vg:Z

.field private Vh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Vi:Z

.field private Vj:Z

.field private Vk:Lcom/kwad/components/core/innerEc/live/widget/j;

.field private Vl:I

.field private Vm:Lcom/kwad/components/core/innerEc/live/comment/history/b;

.field private Vn:Z

.field private Vo:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;

.field private Vp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/components/core/innerEc/live/widget/c;",
            ">;"
        }
    .end annotation
.end field

.field private final Vq:Ljava/lang/Object;

.field private Vr:Landroid/view/ViewGroup;

.field private Vs:Landroid/widget/EditText;

.field private Vt:Landroid/view/View;

.field private Vu:Landroid/view/View;

.field private Vv:Landroid/view/ViewGroup;

.field private Vw:Z

.field private Vx:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;

.field private Vy:Lcom/kwad/components/core/innerEc/live/comment/history/b$a;

.field private Vz:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;

.field private jk:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->jk:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Ve:I

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    iput v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vf:I

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vg:Z

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vh:Ljava/util/List;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vi:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vj:Z

    .line 35
    .line 36
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vl:I

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vn:Z

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vp:Ljava/util/List;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/Object;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vq:Ljava/lang/Object;

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vw:Z

    .line 55
    .line 56
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/c$5;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/c$5;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->UY:Lcom/kwad/components/core/innerEc/live/config/a;

    .line 62
    .line 63
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/c$6;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/c$6;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vx:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;

    .line 69
    .line 70
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/c$7;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/c$7;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vy:Lcom/kwad/components/core/innerEc/live/comment/history/b$a;

    .line 76
    .line 77
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/c$8;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/c$8;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vz:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;

    .line 83
    .line 84
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vl:I

    return p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/c;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/b/c/c;->c(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/c;Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/live/b/c/c;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/c;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rS()V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/c;Lcom/kwad/components/core/innerEc/live/widget/c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/widget/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/c;Lcom/kwad/components/core/innerEc/live/widget/c;Z)V
    .locals 0

    const/4 p2, 0x0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/widget/c;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/c;Ljava/util/List;Z)V
    .locals 0

    const/4 p2, 0x1

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/widget/c;)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/widget/c;Z)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/widget/c;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 9
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vn:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vq:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vp:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vc:Lcom/kwad/components/core/innerEc/live/widget/h;

    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/live/widget/h;->b(Lcom/kwad/components/core/innerEc/live/widget/c;)V

    if-eqz p2, :cond_1

    .line 14
    sget-object p1, Lcom/kwad/components/core/innerEc/live/widget/g$c;->YZ:Lcom/kwad/components/core/innerEc/live/widget/g$c;

    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/widget/g;)V

    .line 15
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rX()V

    :cond_1
    return-void
.end method

.method private a(Lcom/kwad/components/core/innerEc/live/widget/g;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vd:Lcom/kwad/components/core/innerEc/live/widget/f;

    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/g;)V

    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/innerEc/live/widget/c;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 16
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vn:Z

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vq:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vp:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vc:Lcom/kwad/components/core/innerEc/live/widget/h;

    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/live/widget/h;->p(Ljava/util/List;)V

    if-eqz p2, :cond_1

    .line 21
    sget-object p1, Lcom/kwad/components/core/innerEc/live/widget/g$c;->YZ:Lcom/kwad/components/core/innerEc/live/widget/g$c;

    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/widget/g;)V

    .line 22
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rX()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/c;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vw:Z

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/b/c/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vl:I

    return p0
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/b/c/c;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vg:Z

    return p1
.end method

.method private c(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 9
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/kwad/components/core/innerEc/live/b/c/c;->c(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/kwad/components/core/innerEc/live/b/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rU()V

    return-void
.end method

.method public static synthetic c(Lcom/kwad/components/core/innerEc/live/b/c/c;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vn:Z

    return p1
.end method

.method public static synthetic d(Lcom/kwad/components/core/innerEc/live/b/c/c;)Lcom/kwad/components/core/innerEc/live/widget/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vd:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vs:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/components/core/innerEc/live/b/c/c;)Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vz:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/kwad/components/core/innerEc/live/b/c/c;)Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vo:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vr:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vv:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vu:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/kwad/components/core/innerEc/live/b/c/c;)Lcom/kwad/components/core/innerEc/live/widget/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vc:Lcom/kwad/components/core/innerEc/live/widget/h;

    .line 2
    .line 3
    return-object p0
.end method

.method private static m(Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;
    .locals 1

    .line 2
    new-instance v0, Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;

    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;-><init>()V

    .line 3
    iput-object p0, v0, Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;->content:Ljava/lang/String;

    .line 4
    new-instance p0, Lcom/kwad/components/core/innerEc/live/base/UserInfo;

    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/base/UserInfo;-><init>()V

    iput-object p0, v0, Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;->user:Lcom/kwad/components/core/innerEc/live/base/UserInfo;

    .line 5
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/base/UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic m(Lcom/kwad/components/core/innerEc/live/b/c/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vg:Z

    return p0
.end method

.method public static synthetic n(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lcom/kwad/components/core/innerEc/live/b/c/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vh:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Lcom/kwad/components/core/innerEc/live/b/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rR()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private rQ()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->rf()Lcom/kwad/components/core/innerEc/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/e;->re()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vw:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, "***"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_0
    return-object v0

    .line 43
    :cond_1
    const-string v0, "\u5e7f\u544a\u8054\u76df\u7528\u6237"

    .line 44
    .line 45
    return-object v0
.end method

.method private rR()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vq:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vp:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vc:Lcom/kwad/components/core/innerEc/live/widget/h;

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vp:Ljava/util/List;

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/kwad/components/core/innerEc/live/widget/h;->p(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vp:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1
.end method

.method private rS()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vl:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rY()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rV()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rW()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rT()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private rT()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/utils/by;->s(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private rU()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vi:Z

    .line 3
    .line 4
    return-void
.end method

.method private rV()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vi:Z

    .line 3
    .line 4
    return-void
.end method

.method private rW()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vj:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vi:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/c$9;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/c$9;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x1388

    .line 16
    .line 17
    invoke-static {v0, p0, v1, v2}, Lcom/kwad/sdk/utils/by;->a(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private rX()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->sb()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vk:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/widget/j;->sZ()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-gtz v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    return-void
.end method

.method private rY()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int/2addr v2, v1

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vf:I

    .line 35
    .line 36
    sub-int/2addr v2, v3

    .line 37
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    sub-int/2addr v3, v4

    .line 50
    if-gt v2, v3, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    sub-int/2addr v2, v1

    .line 69
    if-ne v0, v2, :cond_1

    .line 70
    .line 71
    return v1

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 73
    return v0

    .line 74
    :cond_2
    :goto_0
    return v1
.end method

.method private rZ()V
    .locals 4

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/kwad/components/core/innerEc/live/widget/f;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vd:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vd:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/kwad/components/core/innerEc/live/widget/f$a;

    .line 20
    .line 21
    const/16 v2, 0xfa

    .line 22
    .line 23
    const/16 v3, 0xc8

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/components/core/innerEc/live/widget/f$a;-><init>(ZII)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vd:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->a(Lcom/kwad/components/core/innerEc/live/widget/f$a;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vd:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/widget/f;->aL(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vd:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static synthetic s(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private sa()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x41c00000    # 24.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->setCustomFadingEdgeLength(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->setCustomFadingEdgeTop(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private sb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vd:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->sS()Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/kwad/components/core/innerEc/live/widget/g$e;

    .line 8
    .line 9
    return v0
.end method

.method public static synthetic t(Lcom/kwad/components/core/innerEc/live/b/c/c;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lcom/kwad/components/core/innerEc/live/b/c/c;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rQ()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lcom/kwad/components/core/innerEc/live/b/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rX()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final ay()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UO:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/c$3;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/kwad/components/core/innerEc/live/b/c/c$3;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 17
    .line 18
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/c$4;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/kwad/components/core/innerEc/live/b/c/c$4;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UQ:Lcom/kwad/sdk/g/b;

    .line 24
    .line 25
    new-instance v0, Lcom/kwad/components/core/innerEc/live/widget/i;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/widget/i;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lcom/kwad/components/core/innerEc/live/widget/i;->Zm:Z

    .line 32
    .line 33
    new-instance v1, Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v1, v0, v2, v3}, Lcom/kwad/components/core/innerEc/live/widget/j;-><init>(Lcom/kwad/components/core/innerEc/live/widget/i;Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;Landroid/app/Activity;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vk:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vc:Lcom/kwad/components/core/innerEc/live/widget/h;

    .line 49
    .line 50
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UL:Lcom/kwad/components/core/innerEc/live/widget/h;

    .line 51
    .line 52
    new-instance v1, Lcom/kwad/components/core/innerEc/live/comment/history/b;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lcom/kwad/components/core/innerEc/live/comment/history/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vm:Lcom/kwad/components/core/innerEc/live/comment/history/b;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vy:Lcom/kwad/components/core/innerEc/live/comment/history/b$a;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/innerEc/live/comment/history/b;->a(Lcom/kwad/components/core/innerEc/live/comment/history/b$a;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vm:Lcom/kwad/components/core/innerEc/live/comment/history/b;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/comment/history/b;->rA()V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 76
    .line 77
    invoke-direct {v0, v1}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vo:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vx:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;

    .line 87
    .line 88
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->registerSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UF:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->UY:Lcom/kwad/components/core/innerEc/live/config/a;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/config/b;->a(Lcom/kwad/components/core/innerEc/live/config/a;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_live_ad_container:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vv:Landroid/view/ViewGroup;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget v1, Lcom/kwad/sdk/R$layout;->ksad_live_comments_layout:I

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vu:Landroid/view/View;

    .line 30
    .line 31
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_comments_container:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Va:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;

    .line 40
    .line 41
    sget-object v1, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;->ONLY_DOWN_DRAG:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->setOverScrollType(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vu:Landroid/view/View;

    .line 47
    .line 48
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_comments_recyclerview:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 57
    .line 58
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/c$1;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/kwad/components/core/innerEc/live/b/c/c$1;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 64
    .line 65
    .line 66
    sget v0, Lcom/kwad/sdk/R$id;->comment_edit_root:I

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/view/ViewGroup;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vr:Landroid/view/ViewGroup;

    .line 75
    .line 76
    const/16 v1, 0x8

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    sget v0, Lcom/kwad/sdk/R$id;->ksad_comment_edit:I

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/EditText;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vs:Landroid/widget/EditText;

    .line 90
    .line 91
    sget v0, Lcom/kwad/sdk/R$id;->ksad_comment_send:I

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vt:Landroid/view/View;

    .line 98
    .line 99
    new-instance v1, Lcom/kwad/components/core/innerEc/live/i/b;

    .line 100
    .line 101
    new-instance v2, Lcom/kwad/components/core/innerEc/live/b/c/c$2;

    .line 102
    .line 103
    invoke-direct {v2, p0}, Lcom/kwad/components/core/innerEc/live/b/c/c$2;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v1, v2}, Lcom/kwad/components/core/innerEc/live/i/b;-><init>(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->rZ()V

    .line 113
    .line 114
    .line 115
    new-instance v0, Lcom/kwad/components/core/innerEc/live/widget/h;

    .line 116
    .line 117
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/widget/h;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vc:Lcom/kwad/components/core/innerEc/live/widget/h;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vb:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->sa()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vm:Lcom/kwad/components/core/innerEc/live/comment/history/b;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vy:Lcom/kwad/components/core/innerEc/live/comment/history/b$a;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/comment/history/b;->b(Lcom/kwad/components/core/innerEc/live/comment/history/b$a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kwad/components/core/innerEc/live/b/c/c;->sc()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vq:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vp:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vx:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->unregisterSCMessageListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/SCMessageListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vh:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UF:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->UY:Lcom/kwad/components/core/innerEc/live/config/a;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/config/b;->b(Lcom/kwad/components/core/innerEc/live/config/a;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v1
.end method

.method public final sc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vr:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "input_method"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c;->Vr:Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

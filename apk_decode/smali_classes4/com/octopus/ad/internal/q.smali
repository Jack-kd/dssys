.class public Lcom/octopus/ad/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/utilities/IS2SManager;


# static fields
.field private static E:Lcom/octopus/ad/internal/q; = null

.field private static H:Z = false

.field private static aa:Z = false

.field public static q:Ljava/lang/String; = null

.field public static r:Ljava/lang/String; = ""

.field public static s:Ljava/lang/String; = ""

.field public static w:I = 0x3e8

.field public static x:I = 0x3e8

.field public static y:J = 0x6ddd00L


# instance fields
.field public A:Lorg/json/JSONArray;

.field public B:I

.field public C:I

.field public D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private I:I

.field private J:Ljava/lang/Boolean;

.field private K:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Q:F

.field private R:Z

.field private S:Landroid/util/DisplayMetrics;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Lcom/octopus/ad/internal/d/h;

.field private Z:J

.field public a:I

.field private volatile ab:I

.field private volatile ac:J

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:J

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/String;

.field public m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/octopus/ad/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Landroid/content/Context;

.field public u:F

.field public v:F

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/octopus/ad/internal/q;->I:I

    .line 6
    .line 7
    iput v0, p0, Lcom/octopus/ad/internal/q;->a:I

    .line 8
    .line 9
    const/16 v1, 0x1f4

    .line 10
    .line 11
    iput v1, p0, Lcom/octopus/ad/internal/q;->b:I

    .line 12
    .line 13
    const/16 v1, 0x3e8

    .line 14
    .line 15
    iput v1, p0, Lcom/octopus/ad/internal/q;->c:I

    .line 16
    .line 17
    iput v0, p0, Lcom/octopus/ad/internal/q;->d:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/octopus/ad/internal/q;->f:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/octopus/ad/internal/q;->g:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/octopus/ad/internal/q;->h:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/octopus/ad/internal/q;->i:Z

    .line 27
    .line 28
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/octopus/ad/internal/q;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/octopus/ad/internal/q;->n:Z

    .line 36
    .line 37
    new-instance v2, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/octopus/ad/internal/q;->p:Ljava/util/HashMap;

    .line 43
    .line 44
    new-instance v2, Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/octopus/ad/internal/q;->K:Ljava/util/HashSet;

    .line 50
    .line 51
    new-instance v2, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/octopus/ad/internal/q;->L:Ljava/util/HashSet;

    .line 57
    .line 58
    new-instance v2, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v2, p0, Lcom/octopus/ad/internal/q;->M:Ljava/util/HashSet;

    .line 64
    .line 65
    new-instance v2, Ljava/util/HashSet;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lcom/octopus/ad/internal/q;->N:Ljava/util/HashSet;

    .line 71
    .line 72
    new-instance v2, Ljava/util/HashSet;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/octopus/ad/internal/q;->O:Ljava/util/HashSet;

    .line 78
    .line 79
    new-instance v2, Ljava/util/HashSet;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v2, p0, Lcom/octopus/ad/internal/q;->P:Ljava/util/HashSet;

    .line 85
    .line 86
    iput-boolean v1, p0, Lcom/octopus/ad/internal/q;->R:Z

    .line 87
    .line 88
    iput-boolean v0, p0, Lcom/octopus/ad/internal/q;->T:Z

    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/octopus/ad/internal/q;->U:Z

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/octopus/ad/internal/q;->V:Z

    .line 93
    .line 94
    iput-boolean v0, p0, Lcom/octopus/ad/internal/q;->W:Z

    .line 95
    .line 96
    iput-boolean v0, p0, Lcom/octopus/ad/internal/q;->X:Z

    .line 97
    .line 98
    iput-boolean v0, p0, Lcom/octopus/ad/internal/q;->z:Z

    .line 99
    .line 100
    iput v0, p0, Lcom/octopus/ad/internal/q;->B:I

    .line 101
    .line 102
    iput v0, p0, Lcom/octopus/ad/internal/q;->C:I

    .line 103
    .line 104
    iput v0, p0, Lcom/octopus/ad/internal/q;->ab:I

    .line 105
    .line 106
    const-wide/16 v0, 0x0

    .line 107
    .line 108
    iput-wide v0, p0, Lcom/octopus/ad/internal/q;->ac:J

    .line 109
    .line 110
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/q;)I
    .locals 2

    .line 2
    iget v0, p0, Lcom/octopus/ad/internal/q;->I:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/octopus/ad/internal/q;->I:I

    return v0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/q;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/octopus/ad/internal/q;->I:I

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/q;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/octopus/ad/internal/q;->Z:J

    return-wide p1
.end method

.method public static a()Lcom/octopus/ad/internal/q;
    .locals 2

    .line 7
    const-class v0, Lcom/octopus/ad/internal/q;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/octopus/ad/internal/q;->E:Lcom/octopus/ad/internal/q;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/octopus/ad/internal/q;

    invoke-direct {v1}, Lcom/octopus/ad/internal/q;-><init>()V

    sput-object v1, Lcom/octopus/ad/internal/q;->E:Lcom/octopus/ad/internal/q;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    sget-object v1, Lcom/octopus/ad/internal/q;->E:Lcom/octopus/ad/internal/q;

    monitor-exit v0

    return-object v1

    .line 11
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Lcom/octopus/ad/internal/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/sdk/config?"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "appId="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&bundle="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&brand="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&model="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&sdkVersion="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "2.6.5.7"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&deviceId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {p1}, Lcom/octopus/ad/d/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&os=android"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-boolean p2, p0, Lcom/octopus/ad/internal/q;->g:Z

    if-eqz p2, :cond_0

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ssl=1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    :cond_0
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/octopus/ad/OctopusAdSdkController;->isCanUseAppList()Z

    move-result p2

    if-nez p2, :cond_1

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&alist=0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private a(Lcom/octopus/ad/a/a;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 70
    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/octopus/ad/a/c$i;

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {v2}, Lcom/octopus/ad/a/c$i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    invoke-virtual {v2}, Lcom/octopus/ad/a/c$i;->a()Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string v3, "track=oct"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&opt=13"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_0
    new-instance v3, Lcom/octopus/ad/internal/i;

    invoke-direct {v3, v2}, Lcom/octopus/ad/internal/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/octopus/ad/internal/c/d;->b()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_2
    new-instance v1, Lcom/octopus/ad/internal/q$6;

    invoke-direct {v1, p0, v0}, Lcom/octopus/ad/internal/q$6;-><init>(Lcom/octopus/ad/internal/q;Ljava/util/List;)V

    .line 79
    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->g()I

    move-result p1

    int-to-long v2, p1

    .line 80
    invoke-static {v1, v2, v3}, Lcom/octopus/ad/d/e;->a(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/q;Lcom/octopus/ad/a/a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/q;->b(Lcom/octopus/ad/a/a;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/q;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/q;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/octopus/ad/a/a;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Lcom/octopus/ad/internal/l;

    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->h()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p1}, Lcom/octopus/ad/a/a;->k()Ljava/lang/String;

    move-result-object v6

    const-string v1, "DPFORBID"

    invoke-direct/range {v0 .. v6}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/octopus/ad/internal/o;->a(Lcom/octopus/ad/internal/l;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/q;->w()V

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/q;Lcom/octopus/ad/a/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/q;->a(Lcom/octopus/ad/a/a;)V

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/q;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/q;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/q;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/q;->I:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/octopus/ad/internal/q;->I:I

    return v0
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/internal/q;->I:I

    return p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->ad:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/q;->ae:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v1, Lcom/octopus/ad/internal/l;

    iget-object v3, p0, Lcom/octopus/ad/internal/q;->ad:Ljava/lang/String;

    iget-object v4, p0, Lcom/octopus/ad/internal/q;->ae:Ljava/lang/String;

    iget-wide v5, p0, Lcom/octopus/ad/internal/q;->af:J

    const-string v2, "OTHERDPJUMP"

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v1}, Lcom/octopus/ad/internal/o;->a(Lcom/octopus/ad/internal/l;)V

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    const-string v0, "track=oct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&opt=13&result=0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    new-instance v0, Lcom/octopus/ad/internal/i;

    invoke-direct {v0, p1}, Lcom/octopus/ad/internal/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/octopus/ad/internal/c/d;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 5
    :goto_1
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private v()Lcom/octopus/ad/internal/d/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    new-instance v2, Lcom/octopus/ad/internal/d/h$a;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Lcom/octopus/ad/internal/d/h$a;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const-wide/32 v3, 0x20000000

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3, v4}, Lcom/octopus/ad/internal/d/h$a;->a(J)Lcom/octopus/ad/internal/d/h$a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d/h$a;->a()Lcom/octopus/ad/internal/d/h;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object v0

    .line 24
    :catch_0
    return-object v1
.end method

.method private w()V
    .locals 11

    .line 1
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/octopus/ad/internal/q;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/octopus/ad/a/a;

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string v4, "octdpopen"

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/octopus/ad/a/a;->c()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_0

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/q;->a(Lcom/octopus/ad/a/a;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/octopus/ad/utils/OctUtil;->a()Lcom/octopus/ad/utils/OctUtil;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    iget-object v6, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/octopus/ad/a/a;->d()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    invoke-virtual/range {v5 .. v10}, Lcom/octopus/ad/utils/OctUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/octopus/ad/utils/OctUtil$C;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    :goto_1
    return-void

    .line 93
    :goto_2
    const-string v1, "OctopusAd"

    .line 94
    .line 95
    const-string v2, "An Exception Caught"

    .line 96
    .line 97
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private x()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-string v1, "android.content.pm.PackageParser$Package"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-class v2, Ljava/lang/String;

    .line 9
    .line 10
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :catch_0
    :catchall_0
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "currentActivityThread"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "mHiddenApiWarningShown"

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    .line 53
    :catch_1
    :catchall_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->J:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 88
    const-string p2, "/api/s2sreport?isEncrypt=0"

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 89
    const-string p2, "/api/zysdksd?isEncrypt=0"

    goto :goto_1

    .line 90
    :cond_2
    const-string p2, "/api/zysdk?isEncrypt=0"

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 91
    const-string p2, "/api/s2sreport?isEncrypt=2"

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 92
    const-string p2, "/api/zysdksd?isEncrypt=2"

    goto :goto_1

    .line 93
    :cond_5
    const-string p2, "/api/zysdk?isEncrypt=2"

    .line 94
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    const-string v1, "The app volume must be a value between 0 and 1 inclusive."

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/x;->a(ZLjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/octopus/ad/internal/q;->q:Ljava/lang/String;

    const-string v1, "Octopus.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/x;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    iput p1, p0, Lcom/octopus/ad/internal/q;->Q:F

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/octopus/ad/internal/q;->V:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/octopus/ad/internal/q;->X:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/octopus/ad/internal/q;->V:Z

    .line 61
    new-instance v0, Lcom/octopus/ad/internal/q$4;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/q$4;-><init>(Lcom/octopus/ad/internal/q;I)V

    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 12
    const-class v0, Lcom/octopus/ad/internal/q;

    monitor-enter v0

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    .line 14
    new-instance p1, Lcom/octopus/ad/internal/q$1;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/q$1;-><init>(Lcom/octopus/ad/internal/q;)V

    invoke-static {p1}, Lcom/octopus/ad/utils/ThreadUtils;->runOnThreadPool(Ljava/lang/Runnable;)V

    .line 15
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/octopus/ad/internal/c/f;->a(Landroid/content/Context;)V

    .line 16
    sput-object p2, Lcom/octopus/ad/internal/q;->q:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/q;->S:Landroid/util/DisplayMetrics;

    .line 18
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v3, 0x44a00000    # 1280.0f

    const/high16 v4, 0x44340000    # 720.0f

    if-ge v2, p1, :cond_0

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 19
    iput v2, p0, Lcom/octopus/ad/internal/q;->u:F

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 20
    iput p1, p0, Lcom/octopus/ad/internal/q;->v:F

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    int-to-float p1, p1

    div-float/2addr p1, v4

    .line 21
    iput p1, p0, Lcom/octopus/ad/internal/q;->u:F

    int-to-float p1, v2

    div-float/2addr p1, v3

    .line 22
    iput p1, p0, Lcom/octopus/ad/internal/q;->v:F

    .line 23
    :goto_0
    const-string p1, "com.octopus.ad.utils.OctUtil$C"

    invoke-static {p1}, Lcom/octopus/ad/d/b/i;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/q;->X:Z

    .line 24
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v2, "getBootId"

    invoke-static {p1, v2}, Lcom/octopus/ad/internal/c/o;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/q;->f:Z

    .line 25
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v2, "getOperator"

    invoke-static {p1, v2}, Lcom/octopus/ad/internal/c/o;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/q;->i:Z

    .line 26
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v2, "ipv6"

    invoke-static {p1, v2}, Lcom/octopus/ad/internal/c/o;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/q;->h:Z

    .line 27
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/OctopusAdSdkController;->isUseHttps()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    .line 28
    :goto_1
    iget-object v3, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v4, "ssl"

    invoke-static {v3, v4, p1}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/q;->g:Z

    .line 29
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v3, "sdk"

    invoke-static {p1, v3}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/q;->j:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v3, "sdkList"

    invoke-static {p1, v3}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/q;->k:Ljava/util/ArrayList;

    .line 31
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v3, "sdklog"

    invoke-static {p1, v3}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/q;->l:Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v3, "startIndex"

    invoke-static {p1, v3, v1}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/octopus/ad/internal/q;->ab:I

    .line 33
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v3, "encrypt"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v3, v4}, Lcom/octopus/ad/internal/c/o;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/octopus/ad/internal/q;->J:Ljava/lang/Boolean;

    .line 34
    invoke-static {}, Lcom/octopus/a/a;->a()Lcom/octopus/a/a;

    move-result-object p1

    iget-object v3, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/octopus/a/a;->a(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/octopus/a/a;->a()Lcom/octopus/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/a/a;->b()V

    .line 36
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    iget-object v3, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v4, "minimumMemory"

    invoke-static {v3, v4, v1}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p1, Lcom/octopus/ad/internal/q;->C:I

    .line 37
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->c()Z

    move-result p1

    if-nez p1, :cond_2

    .line 38
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    iget-object v3, p0, Lcom/octopus/ad/internal/q;->j:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v3}, Lcom/octopus/ad/internal/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance v3, Lcom/octopus/ad/internal/m;

    invoke-direct {v3, p1}, Lcom/octopus/ad/internal/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/octopus/ad/internal/c/d;->b()V

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    check-cast p1, Landroid/app/Application;

    new-instance v3, Lcom/octopus/ad/internal/q$2;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/q$2;-><init>(Lcom/octopus/ad/internal/q;)V

    invoke-virtual {p1, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 41
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/OctopusAdSdkController;->isCanUseOaid()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/octopus/ad/d/a/b;->a(Landroid/app/Application;)V

    .line 43
    :cond_4
    iget-boolean p1, p0, Lcom/octopus/ad/internal/q;->T:Z

    if-nez p1, :cond_5

    .line 44
    iget-object p1, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/octopus/ad/d/g;->a(Landroid/content/Context;)Lcom/octopus/ad/d/g;

    move-result-object p1

    new-instance v3, Lcom/octopus/ad/internal/q$3;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/q$3;-><init>(Lcom/octopus/ad/internal/q;)V

    invoke-virtual {p1, v3}, Lcom/octopus/ad/d/g;->a(Lcom/octopus/ad/d/f;)V

    .line 45
    :cond_5
    iput-boolean v2, p0, Lcom/octopus/ad/internal/q;->T:Z

    .line 46
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt p1, v2, :cond_6

    .line 47
    invoke-direct {p0}, Lcom/octopus/ad/internal/q;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 48
    :goto_2
    :try_start_1
    new-instance v2, Lcom/octopus/ad/internal/l;

    const-string v3, "INIT"

    invoke-direct {v2, v3, p2, v1}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/octopus/ad/internal/o;->a(Lcom/octopus/ad/internal/l;)V

    .line 49
    const-string p2, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {p2, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_6
    :goto_3
    monitor-exit v0

    return-void

    .line 51
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/octopus/ad/internal/q;->F:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/octopus/ad/internal/q;->ad:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/octopus/ad/internal/q;->ae:Ljava/lang/String;

    .line 64
    iput-wide p3, p0, Lcom/octopus/ad/internal/q;->af:J

    .line 65
    iget-boolean p1, p0, Lcom/octopus/ad/internal/q;->W:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/octopus/ad/internal/q;->W:Z

    .line 67
    :try_start_0
    const-string p1, "com.octopus.ad.utils.OctUtil$E"

    invoke-static {p1}, Lcom/octopus/ad/d/b/i;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    invoke-static {}, Lcom/octopus/ad/utils/OctUtil;->a()Lcom/octopus/ad/utils/OctUtil;

    move-result-object p1

    new-instance p2, Lcom/octopus/ad/internal/q$5;

    invoke-direct {p2, p0}, Lcom/octopus/ad/internal/q$5;-><init>(Lcom/octopus/ad/internal/q;)V

    invoke-virtual {p1, p2}, Lcom/octopus/ad/utils/OctUtil;->a(Lcom/octopus/ad/utils/OctUtil$E;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 69
    const-string p2, "OctopusAd"

    const-string p3, "A Throwable Caught"

    invoke-static {p2, p3, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 84
    sget-object v0, Lcom/octopus/ad/internal/q;->q:Ljava/lang/String;

    const-string v1, "Octopus.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/x;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    iput-boolean p1, p0, Lcom/octopus/ad/internal/q;->R:Z

    return-void
.end method

.method public b()Lcom/octopus/ad/internal/d/h;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->Y:Lcom/octopus/ad/internal/d/h;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/octopus/ad/internal/q;->v()Lcom/octopus/ad/internal/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/q;->Y:Lcom/octopus/ad/internal/d/h;

    :cond_1
    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 11
    sput p1, Lcom/octopus/ad/internal/q;->w:I

    .line 12
    sput p1, Lcom/octopus/ad/internal/q;->x:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/octopus/ad/internal/q;->G:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 10
    sput-boolean p1, Lcom/octopus/ad/internal/q;->aa:Z

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/octopus/ad/internal/q;->g:Z

    const-string v0, "http://sdk.zhangyuyidong.cn"

    if-eqz p1, :cond_1

    .line 5
    const-string p1, "http:"

    const-string v1, "https:"

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/octopus/ad/internal/q;->h:Z

    if-eqz p1, :cond_2

    .line 7
    const-string p1, "sdk."

    const-string v1, "sdk6."

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public c()Z
    .locals 6

    .line 2
    iget v0, p0, Lcom/octopus/ad/internal/q;->C:I

    if-lez v0, :cond_0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/octopus/ad/d/b/i;->a()J

    move-result-wide v0

    iget v2, p0, Lcom/octopus/ad/internal/q;->C:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 3

    .line 2
    const-string v0, "OctopusAd"

    iget-boolean v1, p0, Lcom/octopus/ad/internal/q;->U:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/octopus/ad/internal/q;->U:Z

    .line 4
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/utils/OctUtil;->a()Lcom/octopus/ad/utils/OctUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/utils/OctUtil;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 5
    :goto_0
    const-string v2, "A Throwable Caught"

    invoke-static {v0, v2, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 6
    :goto_1
    const-string v2, "An Exception Caught"

    invoke-static {v0, v2, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return-void
.end method

.method public e()V
    .locals 8

    .line 6
    const-string v0, ""

    const-string v1, "OctopusAd"

    .line 7
    :try_start_0
    iget v2, p0, Lcom/octopus/ad/internal/q;->B:I

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/octopus/ad/internal/q;->A:Lorg/json/JSONArray;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/octopus/ad/internal/q;->ac:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/octopus/ad/internal/q;->ac:J

    .line 9
    iget v2, p0, Lcom/octopus/ad/internal/q;->ab:I

    iget-object v3, p0, Lcom/octopus/ad/internal/q;->A:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 10
    iput v2, p0, Lcom/octopus/ad/internal/q;->ab:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 11
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/octopus/ad/d/b/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 14
    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 16
    :cond_1
    iget v3, p0, Lcom/octopus/ad/internal/q;->ab:I

    iget v4, p0, Lcom/octopus/ad/internal/q;->B:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/octopus/ad/internal/q;->A:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 17
    iget v4, p0, Lcom/octopus/ad/internal/q;->ab:I

    :goto_1
    if-ge v4, v3, :cond_5

    .line 18
    iget-object v5, p0, Lcom/octopus/ad/internal/q;->A:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 19
    const-string v6, "sid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 20
    const-string v7, "pkg"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v5}, Lcom/octopus/ad/d/b/i;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 22
    iget-object v7, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/octopus/ad/d/b/i;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    :cond_2
    if-eqz v7, :cond_3

    .line 23
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 24
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput v3, p0, Lcom/octopus/ad/internal/q;->ab:I

    .line 28
    iget-object v3, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v4, "startIndex"

    iget v5, p0, Lcom/octopus/ad/internal/q;->ab:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/octopus/ad/internal/q;->ab:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v3, "codeList"

    invoke-static {v2, v3, v0}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/octopus/ad/internal/c/a;->a()Lcom/octopus/ad/internal/c/a;

    move-result-object v2

    iput-object v0, v2, Lcom/octopus/ad/internal/c/a;->F:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    .line 34
    :goto_3
    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/q;->X:Z

    .line 2
    .line 3
    return v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/q;->Q:F

    .line 2
    .line 3
    return v0
.end method

.method public getBuyerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/q;->T:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/q;->q:Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method public getSDKInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/q;->T:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/w;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/octopus/ad/internal/w;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/octopus/ad/internal/w;->a()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/octopus/ad/internal/w;->d()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/q;->R:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->F:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->G:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/q;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized m()Ljava/lang/String;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->o:Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/octopus/ad/internal/q;->o:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    const-string v1, "OctopusAd"

    .line 23
    .line 24
    const-string v2, "An Exception Caught"

    .line 25
    .line 26
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->o:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "Mozilla/5.0 (Linux; Android "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "; "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, " Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/116.0.0.0 Mobile Safari/537.36"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/octopus/ad/internal/q;->o:Ljava/lang/String;

    .line 72
    .line 73
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->o:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-object v0

    .line 77
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    throw v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->j:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/q;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->l:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/octopus/ad/internal/q;->g:Z

    .line 13
    .line 14
    const-string v1, "http://sdklog.zhangyuyidong.cn"

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "http:"

    .line 19
    .line 20
    const-string v2, "https:"

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/q;->h:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const-string v0, "sdklog."

    .line 31
    .line 32
    const-string v2, "sdklog6."

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_2
    return-object v1
.end method

.method public p()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/q;->u:F

    .line 2
    .line 3
    return v0
.end method

.method public q()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/q;->v:F

    .line 2
    .line 3
    return v0
.end method

.method public r()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/q;->u:F

    .line 2
    .line 3
    iget v1, p0, Lcom/octopus/ad/internal/q;->v:F

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public s()Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->S:Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/q;->P:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/octopus/ad/internal/q;->aa:Z

    .line 2
    .line 3
    return v0
.end method

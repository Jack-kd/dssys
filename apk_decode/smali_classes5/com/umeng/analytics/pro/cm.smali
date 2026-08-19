.class public Lcom/umeng/analytics/pro/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/cm$a;
    }
.end annotation


# static fields
.field public static a:Landroid/os/Handler; = null

.field public static final b:I = 0x65

.field public static final c:I = 0x66

.field public static final d:I = 0x67

.field public static final e:I = 0x68

.field public static final f:I = 0x69

.field public static final g:I = 0x6a

.field public static final h:I = 0x6b

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0xc9

.field public static final m:I = 0xca

.field public static final n:I = 0xcb

.field public static final o:I = 0xcc

.field public static final p:I = 0x131

.field public static final q:I = 0x132

.field private static r:Landroid/os/HandlerThread; = null

.field private static s:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/umeng/analytics/pro/cm$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final t:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static declared-synchronized a()V
    .locals 3

    const-class v0, Lcom/umeng/analytics/pro/cm;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/cm;->r:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ncc_dispatch"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/umeng/analytics/pro/cm;->r:Landroid/os/HandlerThread;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 20
    sget-object v1, Lcom/umeng/analytics/pro/cm;->a:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/umeng/analytics/pro/cm$1;

    sget-object v2, Lcom/umeng/analytics/pro/cm;->r:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/analytics/pro/cm$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/umeng/analytics/pro/cm;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :catchall_0
    :cond_0
    monitor-exit v0

    return-void
.end method

.method public static a(Landroid/content/Context;IILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;J)V
    .locals 1

    if-eqz p0, :cond_5

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/umeng/analytics/pro/cm;->s:Ljava/util/HashMap;

    if-nez p0, :cond_1

    .line 3
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/umeng/analytics/pro/cm;->s:Ljava/util/HashMap;

    .line 4
    :cond_1
    div-int/lit8 p0, p2, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 5
    sget-object v0, Lcom/umeng/analytics/pro/cm;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lcom/umeng/analytics/pro/cm;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    sget-object p0, Lcom/umeng/analytics/pro/cm;->r:Landroid/os/HandlerThread;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/umeng/analytics/pro/cm;->a:Landroid/os/Handler;

    if-nez p0, :cond_4

    .line 8
    :cond_3
    invoke-static {}, Lcom/umeng/analytics/pro/cm;->a()V

    .line 9
    :cond_4
    :try_start_0
    sget-object p0, Lcom/umeng/analytics/pro/cm;->a:Landroid/os/Handler;

    if-eqz p0, :cond_5

    .line 10
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 11
    iput p1, p0, Landroid/os/Message;->what:I

    .line 12
    iput p2, p0, Landroid/os/Message;->arg1:I

    .line 13
    iput-object p4, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    sget-object p1, Lcom/umeng/analytics/pro/cm;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V
    .locals 7

    const/16 v1, 0x100

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;IILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;J)V
    .locals 7

    const/16 v1, 0x100

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;IILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/umeng/analytics/pro/cm;->b(Landroid/os/Message;)V

    return-void
.end method

.method private static b(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    div-int/lit8 v1, v0, 0x64

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lcom/umeng/analytics/pro/cm;->s:Ljava/util/HashMap;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    sget-object v2, Lcom/umeng/analytics/pro/cm;->s:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/umeng/analytics/pro/cm$a;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v1, p0, v0}, Lcom/umeng/analytics/pro/cm$a;->a(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_1
    return-void
.end method

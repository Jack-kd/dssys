.class public abstract Lcom/baidu/mobads/sdk/internal/bj;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/sdk/internal/bj$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "b_f"

.field public static final b:Ljava/lang/String; = "XAbstractProdTemplate"

.field public static final c:Ljava/lang/String; = "error_message"

.field public static final d:Ljava/lang/String; = "error_code"

.field public static final e:Ljava/lang/String; = "error_uniqueid"

.field protected static final f:Ljava/lang/String; = "instanceInfo"

.field protected static final g:Ljava/lang/String; = "showState"


# instance fields
.field protected h:Landroid/widget/RelativeLayout;

.field protected i:Landroid/content/Context;

.field protected j:Ljava/lang/String;

.field protected k:Lcom/baidu/mobads/sdk/internal/bv;

.field public l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

.field public m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

.field public n:Z

.field public o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:I

.field protected s:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->k:Lcom/baidu/mobads/sdk/internal/bv;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->n:Z

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->r:I

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->s:J

    .line 22
    .line 23
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/bj;->i:Landroid/content/Context;

    .line 24
    .line 25
    new-instance p1, Lcom/baidu/mobads/sdk/internal/bj$a;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/baidu/mobads/sdk/internal/bj$a;-><init>(Lcom/baidu/mobads/sdk/internal/bj;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 31
    .line 32
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/aa;->a()Lcom/baidu/mobads/sdk/internal/aa;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->i:Landroid/content/Context;

    .line 37
    .line 38
    new-instance v1, Lcom/baidu/mobads/sdk/internal/bk;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/baidu/mobads/sdk/internal/bk;-><init>(Lcom/baidu/mobads/sdk/internal/bj;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/baidu/mobads/sdk/internal/aa;->a(Landroid/content/Context;Lcom/baidu/mobads/sdk/internal/aa$a;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    .line 54
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bdsdk://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?jsonObj="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 57
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 50
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 51
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/mobads/sdk/internal/bl;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/sdk/internal/bl;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/bj;->r()V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    const-string v1, "setActivity"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const-string v2, "onChangeActivity"

    invoke-direct {p0, v2, v1}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-interface {p1, v1, v0}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onAdTaskProcess(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz v0, :cond_0

    .line 5
    const-string v1, "onAdImpression"

    invoke-direct {p0, v1, p2}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onAdTaskProcess(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/bj;->r()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 36
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    const-string v1, "event_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz p1, :cond_0

    .line 39
    const-string v1, "onNovelEvent"

    .line 40
    invoke-direct {p0, v1, v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-interface {p1, v0, p2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onAdTaskProcess(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    const-string v1, "event_type"

    const-string v2, "server_bidding"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz p1, :cond_0

    .line 20
    const-string v1, "onHandleEvent"

    .line 21
    invoke-direct {p0, v1, v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-interface {p1, v0, p2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onAdTaskProcess(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 23
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/baidu/mobads/sdk/api/BiddingListener;",
            ")V"
        }
    .end annotation

    .line 24
    :try_start_0
    invoke-static {p2, p3, p4}, Lcom/baidu/mobads/sdk/internal/k;->a(ZLjava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 26
    const-string v0, "uniqueId"

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string p1, "result"

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 30
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 31
    invoke-virtual {p4, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 32
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/az;->f(Ljava/lang/String;)V

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz p1, :cond_2

    .line 34
    const-string p2, "onBiddingResult"

    invoke-direct {p0, p2, p4}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onAdTaskProcess(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/bj;->o:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz v0, :cond_0

    .line 13
    const-string v1, "onHandleEvent"

    invoke-direct {p0, v1, p1}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onAdTaskProcess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz v0, :cond_0

    .line 15
    const-string v1, "onHandleEvent"

    invoke-direct {p0, v1, p1}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onAdTaskProcess(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1, p2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz v0, :cond_0

    .line 5
    const-string v1, "onAdClick"

    invoke-direct {p0, v1, p2}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onAdTaskProcess(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 2
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 7
    const-string v0, "bidding data is empty"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string v1, "bidding_data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p1, "load_bidding_data"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 12
    :cond_1
    const-string p1, "Initialization doesn\'t finish yet."

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 0

    .line 3
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 3

    .line 17
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->r:I

    if-ltz v0, :cond_0

    if-eqz p1, :cond_0

    .line 18
    :try_start_0
    const-string v1, "b_f"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/bj;->k:Lcom/baidu/mobads/sdk/internal/bv;

    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/internal/bv;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    :try_start_1
    const-string v0, "load_time"

    iget-wide v1, p0, Lcom/baidu/mobads/sdk/internal/bj;->s:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 21
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->k:Lcom/baidu/mobads/sdk/internal/bv;

    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/bv;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 4
    const-string v0, "bidding id is empty"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    const-string v1, "bid_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string p1, "load_bidding_ad"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 9
    :cond_1
    const-string p1, "Initialization doesn\'t finish yet."

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 2
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 3
    return-void
.end method

.method public e(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public f(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public g(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/bj;->r()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public h()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/bu;->a(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->l:Ljava/lang/String;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobads/sdk/internal/bj;->i:Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 4
    invoke-static {v1, v0, v2, v3}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/sdk/api/IAdInterListener;

    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 5
    iget-boolean v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->n:Z

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/bj;->a()V

    :cond_0
    return-void
.end method

.method public h(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/bj;->q:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/aa;->a()Lcom/baidu/mobads/sdk/internal/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/internal/aa;->c()Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;->getRemoteParam(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i()V
    .locals 3

    const/4 v0, 0x1

    .line 2
    const-string v1, ""

    const-string v2, "SDK\u672a\u521d\u59cb\u5316"

    invoke-virtual {p0, v2, v0, v1}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public i(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j()Lorg/json/JSONObject;
    .locals 1

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public j(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public k()Lorg/json/JSONObject;
    .locals 1

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public k(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/bj;->j()Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/bj;->k()Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string v3, "param_info"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v0, "ad_buss_param"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v0, "get_request_token"

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mobads/sdk/internal/bj;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    const-string v0, "request_token"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public l(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/baidu/mobads/sdk/internal/a/c$a;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/baidu/mobads/sdk/internal/a/c$a;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "p_e"

    .line 11
    .line 12
    invoke-interface {v0, v2, v1}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 16
    .line 17
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->H:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 25
    .line 26
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->J:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 34
    .line 35
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->L:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 38
    .line 39
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 43
    .line 44
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->M:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 47
    .line 48
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 52
    .line 53
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->W:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 56
    .line 57
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 61
    .line 62
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->r:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 65
    .line 66
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 70
    .line 71
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->X:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 74
    .line 75
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 79
    .line 80
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->s:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 83
    .line 84
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 88
    .line 89
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->N:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 92
    .line 93
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 97
    .line 98
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->O:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 101
    .line 102
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 106
    .line 107
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->K:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 110
    .line 111
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 115
    .line 116
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->D:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 119
    .line 120
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 124
    .line 125
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->ac:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 128
    .line 129
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 133
    .line 134
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->ad:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 137
    .line 138
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 142
    .line 143
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->ae:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 146
    .line 147
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 151
    .line 152
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->aa:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 155
    .line 156
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 160
    .line 161
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->V:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 164
    .line 165
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 169
    .line 170
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->af:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 173
    .line 174
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 178
    .line 179
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->ag:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 182
    .line 183
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 187
    .line 188
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->ah:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 191
    .line 192
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 196
    .line 197
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->ai:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 200
    .line 201
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 205
    .line 206
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->aj:Ljava/lang/String;

    .line 207
    .line 208
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 209
    .line 210
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 214
    .line 215
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->ak:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 218
    .line 219
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 223
    .line 224
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->al:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 227
    .line 228
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 232
    .line 233
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->am:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 236
    .line 237
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 241
    .line 242
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->ab:Ljava/lang/String;

    .line 243
    .line 244
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 245
    .line 246
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 250
    .line 251
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->an:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 254
    .line 255
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 259
    .line 260
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->Y:Ljava/lang/String;

    .line 261
    .line 262
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 263
    .line 264
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 268
    .line 269
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->ao:Ljava/lang/String;

    .line 270
    .line 271
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 272
    .line 273
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 277
    .line 278
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->ap:Ljava/lang/String;

    .line 279
    .line 280
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 281
    .line 282
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 286
    .line 287
    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->aq:Ljava/lang/String;

    .line 288
    .line 289
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/bj;->l:Lcom/baidu/mobads/sdk/api/IOAdEventListener;

    .line 290
    .line 291
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->addEventListener(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/IOAdEventListener;)V

    .line 292
    .line 293
    .line 294
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onAttachedToWindow()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->onDetachedFromWindow()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->destroyAd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->removeAllListeners()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/bj;->m:Lcom/baidu/mobads/sdk/api/IAdInterListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/IAdInterListener;->getAdContainerView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

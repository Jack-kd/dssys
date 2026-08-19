.class public Lcom/umeng/analytics/pro/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/String; = "https://ulogs.umeng.com/push_cloud_activation"

.field public static final b:Ljava/lang/String; = "https://preulogs.umeng.com/push_cloud_activation"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/umeng/analytics/pro/cy;->c:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/umeng/analytics/pro/cy;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/16 v0, 0x66

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/cy;->c:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/umeng/analytics/pro/cy;->d:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v2, v3}, Lcom/umeng/analytics/pro/aq;->a(Ljava/lang/String;Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v3, Lorg/json/JSONObject;

    .line 15
    .line 16
    new-instance v4, Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    .line 29
    :try_start_1
    const-string v1, "config"

    .line 30
    .line 31
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :catchall_0
    move-object v1, v2

    .line 35
    :catchall_1
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {}, Lcom/umeng/analytics/pro/cn;->a()Lcom/umeng/analytics/pro/cn;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v2, v0, v3, v1}, Lcom/umeng/analytics/pro/cm;->a(Landroid/content/Context;ILcom/umeng/analytics/pro/cm$a;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

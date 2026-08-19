.class public Lcom/umeng/analytics/pro/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/String; = "https://aspect-upush.umeng.com/occa/v1/event/report"

.field public static final b:Ljava/lang/String; = "https://cnlogs.umeng.com/ext_event"

.field public static final c:Ljava/lang/String; = "https://cnlogs.umeng.com/uapp_ekverr_logs"

.field public static final d:Ljava/lang/String; = "https://cnlogs.umeng.com/common_inout_logs"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/umeng/analytics/pro/ar;->g:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/umeng/analytics/pro/ar;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/ar;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/umeng/analytics/pro/ar;->g:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/umeng/analytics/pro/ar;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/ar;->f:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/umeng/analytics/pro/ar;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/ar;->f:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/umeng/analytics/pro/ar;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/umeng/analytics/pro/ar;->e:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/umeng/analytics/pro/ar;->g:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Lcom/umeng/analytics/pro/aq;->a(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :catchall_0
    :cond_0
    return-void
.end method

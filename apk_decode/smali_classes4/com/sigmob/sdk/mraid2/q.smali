.class public Lcom/sigmob/sdk/mraid2/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z

.field private final d:Lcom/sigmob/sdk/mraid2/d;

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/q;->e:Ljava/util/Timer;

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/q;->f:Ljava/util/TimerTask;

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/q;->d:Lcom/sigmob/sdk/mraid2/d;

    const-string p1, "interval"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/mraid2/q;->b:I

    const-string p1, "repeats"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/q;->c:Z

    const-string p1, "uniqueId"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/q;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/q;)Lcom/sigmob/sdk/mraid2/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/q;->d:Lcom/sigmob/sdk/mraid2/d;

    return-object p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/q;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/q;->a:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/q;->e:Ljava/util/Timer;

    new-instance v0, Lcom/sigmob/sdk/mraid2/q$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/q$1;-><init>(Lcom/sigmob/sdk/mraid2/q;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/q;->f:Ljava/util/TimerTask;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/q;->c()V

    return-void
.end method

.method public b()V
    .locals 8

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/q;->c()V

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/q;->d()V

    iget v0, p0, Lcom/sigmob/sdk/mraid2/q;->b:I

    if-lez v0, :cond_1

    iget-boolean v1, p0, Lcom/sigmob/sdk/mraid2/q;->c:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/q;->e:Ljava/util/Timer;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid2/q;->f:Ljava/util/TimerTask;

    int-to-long v4, v0

    int-to-long v6, v0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/q;->e:Ljava/util/Timer;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/q;->f:Ljava/util/TimerTask;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/q;->f:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/sigmob/sdk/mraid2/q;->f:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/q;->e:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/q;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/sigmob/sdk/mraid2/q;->e:Ljava/util/Timer;

    :cond_1
    return-void
.end method

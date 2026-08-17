.class public Lcom/ubix/ssp/ad/e/u/a;
.super Lcom/ubix/ssp/open/UBiXInitManger;

# interfaces
.implements Lcom/ubix/ssp/open/manager/InitManager;


# static fields
.field protected static c:Z = false

.field public static final d:Ljava/lang/String; = "a"


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/open/UBiXInitManger;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/u/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->y()Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/ubix/ssp/ad/e/u/a$b;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/u/a$b;-><init>(Lcom/ubix/ssp/ad/e/u/a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 3
    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getOaid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/ubix/ssp/ad/d/b;->e:Ljava/lang/String;

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c0/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/d/b;->e:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    :goto_2
    sput-object v1, Lcom/ubix/ssp/ad/d/b;->f:Ljava/lang/String;

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c0/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/d/b;->f:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/e/u/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/w/e;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/u/a;Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/u/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/u/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/e/u/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/u/a;Lcom/ubix/ssp/ad/e/y/a/g;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/y/a/g;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/u/a;Ljava/lang/String;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/e/u/a;->a(Ljava/lang/String;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/e/y/a/g;Z)V
    .locals 11

    .line 8
    const-string v0, "detectWithAdv"

    const-string v1, "splashCountDownType"

    const-string v2, "gifMaxCache"

    const-string v3, "imageMaxCache"

    const-string v4, "viewRemove"

    iget v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->b:I

    sput v5, Lcom/ubix/ssp/ad/d/b;->i:I

    iget v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->g:I

    shl-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_0

    sget v5, Lcom/ubix/ssp/ad/d/b;->r:I

    :cond_0
    sput v5, Lcom/ubix/ssp/ad/d/b;->r:I

    iget v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->q:I

    const-wide/16 v6, 0x3e8

    if-lez v5, :cond_1

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v8, v5

    mul-long/2addr v8, v6

    goto :goto_0

    :cond_1
    sget-wide v8, Lcom/ubix/ssp/ad/d/b;->s:J

    :goto_0
    sput-wide v8, Lcom/ubix/ssp/ad/d/b;->s:J

    iget v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->i:I

    sput v5, Lcom/ubix/ssp/ad/d/b;->t:I

    iget-object v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->r:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    const-string v9, "ubix_sp_named_wx"

    const-string v10, "wxid"

    invoke-static {v8, v9, v10, v5}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    :cond_2
    iget-boolean v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->s:Z

    sput-boolean v5, Lcom/ubix/ssp/ad/d/b;->v:Z

    iget-boolean v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->u:Z

    sput-boolean v5, Lcom/ubix/ssp/ad/d/b;->w:Z

    iget v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->t:I

    sput v5, Lcom/ubix/ssp/ad/d/b;->x:I

    iget v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->v:I

    sput v5, Lcom/ubix/ssp/ad/d/b;->y:I

    iget-boolean v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->w:Z

    sput-boolean v5, Lcom/ubix/ssp/ad/d/b;->z:Z

    iget-boolean v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->z:Z

    const/4 v8, 0x1

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->A:[Ljava/lang/String;

    if-eqz v5, :cond_5

    array-length v9, v5

    if-lez v9, :cond_5

    sput-object v5, Lcom/ubix/ssp/ad/d/b;->j:[Ljava/lang/String;

    iget v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->J:I

    const/4 v9, 0x0

    if-ne v5, v8, :cond_3

    move v5, v8

    goto :goto_1

    :cond_3
    move v5, v9

    :goto_1
    sput-boolean v5, Lcom/ubix/ssp/ad/d/b;->k:Z

    iget v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->M:I

    if-ne v5, v8, :cond_4

    move v9, v8

    :cond_4
    sput-boolean v9, Lcom/ubix/ssp/ad/d/b;->l:Z

    :cond_5
    iget v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->C:I

    if-gez v5, :cond_6

    const/16 v5, 0xa

    :cond_6
    sput v5, Lcom/ubix/ssp/ad/d/b;->A:I

    iget-object v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->D:Ljava/lang/String;

    sput-object v5, Lcom/ubix/ssp/ad/e/b;->a:Ljava/lang/String;

    iget v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->G:I

    if-nez v5, :cond_7

    const/4 v5, 0x2

    :cond_7
    sput v5, Lcom/ubix/ssp/ad/d/b;->C:I

    iget v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->H:I

    mul-int/lit16 v5, v5, 0x3e8

    sput v5, Lcom/ubix/ssp/ad/d/b;->D:I

    iget-object v5, p1, Lcom/ubix/ssp/ad/e/y/a/g;->E:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    iget-object v9, p1, Lcom/ubix/ssp/ad/e/y/a/g;->E:Ljava/lang/String;

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/ubix/ssp/ad/d/b;->J:Z

    :cond_8
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/ubix/ssp/ad/d/b;->K:I

    :cond_9
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/ubix/ssp/ad/d/b;->L:I

    :cond_a
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/ubix/ssp/ad/d/b;->h:I

    :cond_b
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ubix/ssp/ad/d/b;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_c
    iget v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->I:I

    sput v0, Lcom/ubix/ssp/ad/d/b;->E:I

    iget v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->N:I

    sput v0, Lcom/ubix/ssp/ad/d/b;->G:I

    iget v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->O:I

    const v1, 0xea60

    if-gtz v0, :cond_d

    sget v0, Lcom/ubix/ssp/ad/d/b;->H:I

    goto :goto_2

    :cond_d
    mul-int/2addr v0, v1

    :goto_2
    sput v0, Lcom/ubix/ssp/ad/d/b;->H:I

    iget v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->P:I

    if-gtz v0, :cond_e

    sget v0, Lcom/ubix/ssp/ad/d/b;->I:I

    goto :goto_3

    :cond_e
    mul-int/2addr v0, v1

    :goto_3
    sput v0, Lcom/ubix/ssp/ad/d/b;->I:I

    iget-boolean v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->n:Z

    sput-boolean v0, Lcom/ubix/ssp/ad/e/a0/p;->c:Z

    iget v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->p:I

    sput v0, Lcom/ubix/ssp/ad/e/a0/p;->d:I

    iget v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->h:I

    int-to-long v0, v0

    mul-long/2addr v0, v6

    sput-wide v0, Lcom/ubix/ssp/ad/e/a0/p;->e:J

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->o:[Lcom/ubix/ssp/ad/e/y/a/g$c;

    if-eqz v0, :cond_f

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    :cond_f
    iget v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->m:I

    int-to-long v0, v0

    mul-long/2addr v0, v6

    sput-wide v0, Lcom/ubix/ssp/ad/e/a0/p;->i:J

    iget-boolean v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->k:Z

    sput-boolean v0, Lcom/ubix/ssp/ad/e/a0/p;->f:Z

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->l:[Lcom/ubix/ssp/ad/e/y/a/g$c;

    if-eqz v0, :cond_10

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/p;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ubix_sp_castle"

    const-string v3, "analysis_detect_insert_list"

    invoke-static {v0, v2, v3, v1}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_10
    iget v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->U:I

    if-lez v0, :cond_11

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    mul-long/2addr v0, v6

    goto :goto_4

    :cond_11
    if-gez v0, :cond_12

    const-wide/16 v0, 0x0

    goto :goto_4

    :cond_12
    const-wide v0, 0x9a7ec800L

    :goto_4
    sput-wide v0, Lcom/ubix/ssp/ad/d/b;->o:J

    const-string v0, "ubix_sp_tower1"

    if-nez p2, :cond_14

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/g;->d:Lcom/ubix/ssp/ad/e/y/a/g$b;

    if-eqz v1, :cond_14

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/g$b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "http"

    if-nez v2, :cond_13

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    const-string v4, "request_server_replace_url"

    invoke-static {v2, v0, v4, v1}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    :cond_13
    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/g;->d:Lcom/ubix/ssp/ad/e/y/a/g$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/g$b;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    const-string v3, "init_server_replace_url"

    invoke-static {v2, v0, v3, v1}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    :cond_14
    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/g;->e:Lcom/ubix/ssp/ad/e/y/a/g$a;

    if-eqz v1, :cond_17

    iget v2, v1, Lcom/ubix/ssp/ad/e/y/a/g$a;->f:I

    sput v2, Lcom/ubix/ssp/ad/e/w/f;->d:I

    if-nez p2, :cond_16

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/g$a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    const-string v3, "collection_server_url"

    invoke-static {v2, v0, v3, v1}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    :cond_16
    iget-object v0, p1, Lcom/ubix/ssp/ad/e/y/a/g;->e:Lcom/ubix/ssp/ad/e/y/a/g$a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/g$a;->c:Lcom/ubix/ssp/ad/e/y/a/g$a$a;

    if-eqz v0, :cond_17

    iget v1, v0, Lcom/ubix/ssp/ad/e/y/a/g$a$a;->c:I

    sput v1, Lcom/ubix/ssp/ad/e/w/f;->b:I

    iget v0, v0, Lcom/ubix/ssp/ad/e/y/a/g$a$a;->b:I

    sput v0, Lcom/ubix/ssp/ad/e/w/f;->c:I

    :cond_17
    if-nez p2, :cond_18

    iget p1, p1, Lcom/ubix/ssp/ad/e/y/a/g;->K:I

    if-ne p1, v8, :cond_18

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/c;->a()Lcom/ubix/ssp/ad/e/a0/y/d/c;

    move-result-object p1

    sget-object p2, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/y/d/c;->a(Landroid/content/Context;)V

    :cond_18
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/x/b;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/x/b;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/e/u/a$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/ubix/ssp/ad/e/u/a$c;-><init>(Lcom/ubix/ssp/ad/e/u/a;Ljava/lang/String;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/ubix/ssp/ad/e/x/b;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/x/a$f;)V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    const-string v1, "ubix_sp_beacon"

    const-string v2, "user_agent"

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdSetting;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdSetting;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Mozilla"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->u()V

    :cond_0
    return-object v0

    :cond_1
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v3

    :cond_3
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v3

    :cond_5
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->u()V

    :cond_6
    return-object v0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/u/a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/u/a;->c()V

    return-void
.end method

.method private c()V
    .locals 5

    const-string v0, "status"

    :try_start_0
    sget-boolean v1, Lcom/ubix/ssp/ad/e/u/a;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/ubix/ssp/ad/d/b;->u:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/w/q/a;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/q/a;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/q/a;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "%s=?"

    :try_start_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v4}, Lcom/ubix/ssp/ad/e/w/q/a;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    sput-boolean v3, Lcom/ubix/ssp/ad/e/u/a;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 2
    sput-object p2, Lcom/ubix/ssp/ad/d/b;->q:Ljava/lang/String;

    const-string v0, "ubix_sp_world"

    const-string v1, "first_time"

    invoke-static {p1, v0, v1}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Boolean;

    :cond_0
    const/4 v1, 0x0

    const-string v2, "open_times"

    invoke-static {p1, v0, v2, v1}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "last_time"

    invoke-static {p1, v0, v5, v3, v4}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Boolean;

    invoke-static {p1, v0, v2, v1}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;

    :try_start_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/q/a;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/q/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/w/q/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const/16 p2, 0xa

    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/y/a/g;->a([B)Lcom/ubix/ssp/ad/e/y/a/g;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/e/u/a;->a(Lcom/ubix/ssp/ad/e/y/a/g;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/u/a;->b()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ubix/ssp/ad/d/b;->p:Ljava/lang/String;

    return-void
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2.10.2.11"

    return-object v0
.end method

.method public launchSDK(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;

    invoke-direct {v0}, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->build()Lcom/ubix/ssp/open/UBiXAdSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ubix/ssp/ad/e/u/a;->launchSDK(Ljava/lang/String;Lcom/ubix/ssp/open/UBiXAdSetting;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V

    return-void
.end method

.method public launchSDK(Ljava/lang/String;Lcom/ubix/ssp/open/UBiXAdSetting;)V
    .locals 5

    .line 2
    if-nez p2, :cond_0

    new-instance p2, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;

    invoke-direct {p2}, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->build()Lcom/ubix/ssp/open/UBiXAdSetting;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/e/u/a;->launchSDK(Ljava/lang/String;Lcom/ubix/ssp/open/UBiXAdSetting;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V

    sget-object v0, Lcom/ubix/ssp/ad/e/u/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchSDK appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchSDK UserConfig: \n     getUserId\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n     getPublisherId\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPublisherId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n     getExtra\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getExtra()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n     isUseTextureView\uff1a"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->isUseTextureView()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchSDK privacyManager: \n     \u5f00\u5173\u7c7b\uff1a\n     isCanUsePhoneState\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUsePhoneState()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n     isCanUseAndroidId\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUseAndroidId()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n     isCanUseOaid\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUseOaid()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n     isTrustOaid\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isTrustOaid()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n     isCanGetAppList\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanGetAppList()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n     isCanUseLocation\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUseLocation()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n     isCanUseMacAddress\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUseMacAddress()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n     isCanUseWifiStatus\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUseWifiStatus()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n     isCanUseWriteExternal\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUseWriteExternal()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n     \u4f20\u5165\u7c7b\uff1a\n     getAndroidId\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n     getOaid\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getOaid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n     getLocation\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getLocation()[D

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n     getMacAddr\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getMacAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n     getImei\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n     getPersonalizedState\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getPersonalizedState()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n     getProgrammaticRecommendState\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getProgrammaticRecommendState()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n     \u7528\u6237\u4fe1\u606f\uff1a\n     getUserId\uff1a"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPublisherId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getExtra()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ubix/ssp/open/UBiXAdSetting;->isUseTextureView()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "launchSDK privacyManager is null"

    goto :goto_1

    :cond_3
    return-void
.end method

.method public launchSDK(Ljava/lang/String;Lcom/ubix/ssp/open/UBiXAdSetting;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V
    .locals 8

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->k(Landroid/content/Context;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->b()V

    sput-object p1, Lcom/ubix/ssp/ad/d/b;->q:Ljava/lang/String;

    sput-object p2, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/u/a;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xb

    const-string v0, "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e\uff0c\u65e0\u6cd5\u8fd4\u56de\u5e7f\u544a"

    :goto_0
    invoke-static {p2, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->e(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p2

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    const-string v0, "APP_ID\u4e3a\u7a7a"

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    invoke-interface {p1, v4, v5}, Lcom/ubix/ssp/ad/e/w/e;->b(J)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/u/a;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result p3

    invoke-virtual {p2}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/ubix/ssp/ad/e/w/e;->b(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->y()Ljava/util/concurrent/Executor;

    sget-object p2, Lcom/ubix/ssp/ad/e/a0/c;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/ubix/ssp/ad/e/u/a$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/ubix/ssp/ad/e/u/a$a;-><init>(Lcom/ubix/ssp/ad/e/u/a;Ljava/lang/String;Lcom/ubix/ssp/open/AdLoadCallbackListener;JJ)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDebugLog(Z)V
    .locals 0

    sput-boolean p1, Lcom/ubix/ssp/ad/e/a0/u;->a:Z

    return-void
.end method

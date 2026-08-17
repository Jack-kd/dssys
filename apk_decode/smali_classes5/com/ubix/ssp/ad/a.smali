.class public abstract Lcom/ubix/ssp/ad/a;
.super Lcom/ubix/ssp/ad/e/x/a$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/a$y;,
        Lcom/ubix/ssp/ad/a$z;,
        Lcom/ubix/ssp/ad/a$a0;,
        Lcom/ubix/ssp/ad/a$x;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "a"


# instance fields
.field private A:J

.field protected B:J

.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ubix/ssp/ad/d/a;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Lcom/ubix/ssp/ad/a$x;

.field protected g:Z

.field protected h:I

.field protected i:I

.field private j:J

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:J

.field private n:J

.field protected o:J

.field private p:I

.field protected q:Z

.field protected r:Lcom/ubix/ssp/ad/a$z;

.field protected s:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ubix/ssp/ad/e/z/h;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected u:I

.field protected v:Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;

.field protected w:Z

.field private x:Z

.field protected y:Lcom/ubix/ssp/ad/e/s/e;

.field protected z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/x/a$e;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/ad/a;->h:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/ubix/ssp/ad/a;->i:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ubix/ssp/ad/a;->j:J

    const-string v4, ""

    iput-object v4, p0, Lcom/ubix/ssp/ad/a;->k:Ljava/lang/String;

    iput-object v4, p0, Lcom/ubix/ssp/ad/a;->l:Ljava/lang/String;

    iput-wide v2, p0, Lcom/ubix/ssp/ad/a;->o:J

    iput v1, p0, Lcom/ubix/ssp/ad/a;->p:I

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/a;->q:Z

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    iput v0, p0, Lcom/ubix/ssp/ad/a;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/a;->v:Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/a;->w:Z

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/a;->x:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/a;->z:Ljava/util/HashMap;

    iput-wide v2, p0, Lcom/ubix/ssp/ad/a;->A:J

    iput-wide v2, p0, Lcom/ubix/ssp/ad/a;->B:J

    new-instance v0, Lcom/ubix/ssp/ad/a$x;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/a$x;-><init>(Lcom/ubix/ssp/ad/a;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    iput-object p2, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/a;->k:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->k:Ljava/lang/String;

    const-string v0, "EVENT_REQUEST_ID"

    invoke-virtual {p0, v0, p1}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "EVENT_SLOT_ID"

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/a;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/ubix/ssp/ad/a;->A:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/a;)Ljava/util/HashMap;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    return-object p0
.end method

.method private a(Lcom/ubix/ssp/ad/e/y/a/a;ZLjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/y/a/a;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->i:Ljava/lang/String;

    const-string p2, "121"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->q()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "__U_TB_CHECK__"

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/a;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/a;->x:Z

    return p1
.end method

.method private a(Lcom/ubix/ssp/ad/d/l$a;)Z
    .locals 11

    .line 44
    const-string v0, "dataTime"

    const-string v1, "joyful"

    const-string v2, "ubix_sp_gift"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l$a;->d()I

    move-result v4

    const/4 v5, 0x1

    if-gtz v4, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l$a;->b()I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    return v5

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    const-string v4, "{}"

    :cond_2
    :try_start_1
    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "lastTime"

    const-string v9, "occurred"

    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v6, v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l$a;->d()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l$a;->d()I

    move-result v1

    if-lt v0, v1, :cond_3

    return v3

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l$a;->b()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    int-to-long v6, p1

    cmp-long p1, v0, v6

    if-lez p1, :cond_4

    return v5

    :cond_4
    return v3

    :cond_5
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v5

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v3
.end method

.method private a(Ljava/util/HashMap;JZLandroid/graphics/Rect;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JZ",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 45
    move-object/from16 v0, p5

    const-string v1, "__UP_Y__"

    const-string v2, "__UP_X__"

    const-string v3, "adBottom"

    const-string v4, "adTop"

    const-string v5, "adRight"

    const-string v6, "adLeft"

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/ubix/ssp/ad/a;->A:J

    sub-long/2addr v8, v10

    cmp-long v8, v8, p2

    if-gez v8, :cond_0

    return v7

    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int v8, v5, v6

    sub-int v9, v3, v4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    mul-int/2addr v10, v8

    div-int/lit8 v10, v10, 0x64

    add-int/2addr v6, v10

    iput v6, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x64

    add-int/2addr v4, v6

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    mul-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x64

    sub-int/2addr v5, v8

    iput v5, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v9, v4

    div-int/lit8 v9, v9, 0x64

    sub-int/2addr v3, v9

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ubix/ssp/ad/a;->A:J

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "__CLICK_AREA__"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->y()Ljava/util/concurrent/Executor;

    sget-object p1, Lcom/ubix/ssp/ad/e/a0/c;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/ubix/ssp/ad/a$r;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/a$r;-><init>(Lcom/ubix/ssp/ad/a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v7
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/a;->A:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/a;->l()V

    return-void
.end method

.method private h(Lcom/ubix/ssp/ad/d/a;)Z
    .locals 2

    .line 2
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private k()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->z:Ljava/util/HashMap;

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->z:Ljava/util/HashMap;

    const-string v2, "sensor_disabled"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private k(Lcom/ubix/ssp/ad/d/a;)V
    .locals 6

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/a;->m:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v0, v2

    const-string v2, "EVENT_DURATION"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v3

    :goto_0
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "EVENT_BID_CPM"

    :try_start_2
    iget-object v1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-wide v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "EVENT_MATERIAL_ID"

    :try_start_3
    iget-object v1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "EVENT_CREATIVE_URL"

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    :try_start_4
    iget-object v2, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/ubix/ssp/ad/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ubix/ssp/ad/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/ubix/ssp/ad/a;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/w/e;->e(Ljava/util/HashMap;)V

    return-void
.end method

.method private l()V
    .locals 11

    .line 2
    const-string v0, "dataTime"

    const-string v1, "joyful"

    const-string v2, "ubix_sp_gift"

    :try_start_0
    iget-object v3, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    const-string v3, "{}"

    :cond_0
    :try_start_1
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    const-string v7, "lastTime"

    const-string v8, "occurred"

    if-eqz v3, :cond_1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v4, v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private l(Lcom/ubix/ssp/ad/d/a;)V
    .locals 5

    .line 3
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/c;->a()Lcom/ubix/ssp/ad/e/a0/y/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->m()Z

    move-result v1

    const-string v2, "guard"

    if-nez v1, :cond_1

    const-string p1, "is not empty"

    invoke-static {v2, p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "EVENT_ATTRS"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tx_req_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tx_tms"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tx_creative_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tx_url"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v1

    const-string v2, "09001"

    const-string v3, "dp loss"

    invoke-interface {v1, p1, v2, v3}, Lcom/ubix/ssp/ad/e/w/e;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a()V

    return-void

    :cond_1
    const-string v1, "is empty"

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ubix/ssp/ad/a$e;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/a$e;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a(Lcom/ubix/ssp/ad/e/a0/y/d/a;)V

    return-void
.end method

.method private z()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->y()Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/ubix/ssp/ad/a$p;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/a$p;-><init>(Lcom/ubix/ssp/ad/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    const-string v0, "waitInstallResult"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IIIZLcom/ubix/ssp/ad/g/c;Lcom/ubix/ssp/ad/g/h;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Lcom/ubix/ssp/ad/g/c;",
            "Lcom/ubix/ssp/ad/g/h;",
            ")I"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {p0 .. p1}, Lcom/ubix/ssp/ad/a;->l(Lcom/ubix/ssp/ad/d/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickEventNoTracking "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    new-instance v6, Lcom/ubix/ssp/ad/e/a0/f;

    iget-object v0, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Lcom/ubix/ssp/ad/e/a0/f;-><init>(Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V

    iget-object v7, v1, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    move-object v8, v7

    new-instance v7, Lcom/ubix/ssp/ad/a$v;

    invoke-direct {v7, v1}, Lcom/ubix/ssp/ad/a$v;-><init>(Lcom/ubix/ssp/ad/a;)V

    move-object v9, v8

    new-instance v8, Lcom/ubix/ssp/ad/a$w;

    invoke-direct {v8, v1, v3, v5}, Lcom/ubix/ssp/ad/a$w;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    new-instance v0, Lcom/ubix/ssp/ad/a$a;

    move/from16 v2, p7

    move-object/from16 v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/ubix/ssp/ad/a$a;-><init>(Lcom/ubix/ssp/ad/a;ZLcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/g/c;Ljava/util/HashMap;)V

    move-object v15, v1

    new-instance v10, Lcom/ubix/ssp/ad/a$b;

    invoke-direct {v10, v15, v3}, Lcom/ubix/ssp/ad/a$b;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;)V

    new-instance v11, Lcom/ubix/ssp/ad/a$c;

    invoke-direct {v11, v15, v3, v5}, Lcom/ubix/ssp/ad/a$c;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    new-instance v13, Lcom/ubix/ssp/ad/a$d;

    invoke-direct {v13, v15, v3}, Lcom/ubix/ssp/ad/a$d;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;)V

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v12, p8

    move-object/from16 v14, p9

    move-object v1, v3

    move-object v3, v9

    move-object v9, v0

    move-object v0, v6

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v14}, Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/d/a;ILjava/lang/String;IIILcom/ubix/ssp/ad/e/a0/f$p;Lcom/ubix/ssp/ad/e/a0/f$q;Lcom/ubix/ssp/ad/e/a0/f$r;Lcom/ubix/ssp/ad/e/a0/f$o;Lcom/ubix/ssp/ad/e/a0/f$s;Lcom/ubix/ssp/ad/g/c;Lcom/ubix/ssp/ad/e/a0/f$n;Lcom/ubix/ssp/ad/g/h;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a()V

    :cond_0
    return v0
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IZLcom/ubix/ssp/ad/g/c;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/ubix/ssp/ad/g/c;",
            ")I"
        }
    .end annotation

    .line 2
    iget-object v2, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-boolean v4, p1, Lcom/ubix/ssp/ad/d/a;->n:Z

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/ubix/ssp/ad/d/a;->m:Ljava/lang/String;

    const-string v5, "__AUCTION_PRICE__"

    invoke-virtual {p3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/d/l;->F0()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "__SHOULD_CHECK__"

    invoke-virtual {p3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/d/l;->F0()Z

    move-result v5

    invoke-direct {p0, v2, v5, p3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;ZLjava/util/HashMap;)V

    const/16 v5, 0xc9

    invoke-virtual {p0, v2, p3, v5}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    move-object v2, v4

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->L()I

    move-result v4

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->y()I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->o0()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v8, p6

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move-object v8, v2

    :goto_1
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, p5

    move v6, v5

    move v5, p4

    invoke-virtual/range {v0 .. v9}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IIIZLcom/ubix/ssp/ad/g/c;Lcom/ubix/ssp/ad/g/h;)I

    move-result v1

    return v1
.end method

.method public varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IMAGE_URL"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ubix/ssp/ad/e/s/e;",
            ")",
            "Lcom/ubix/ssp/ad/a$z;"
        }
    .end annotation

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)Lcom/ubix/ssp/ad/a$z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ubix/ssp/ad/e/s/e;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")",
            "Lcom/ubix/ssp/ad/a$z;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/ubix/ssp/ad/a$u;

    move-object v6, p1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/ubix/ssp/ad/a$u;-><init>(Lcom/ubix/ssp/ad/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/lang/String;Ljava/lang/String;)Lcom/ubix/ssp/ad/d/a;
    .locals 5

    .line 7
    new-instance v0, Lcom/ubix/ssp/ad/d/a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/d/a;-><init>()V

    sget v1, Lcom/ubix/ssp/ad/d/b;->y:I

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/ubix/ssp/ad/d/b;->z:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/a;->w:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->K:Lcom/ubix/ssp/ad/e/y/a/a$b$i;

    :cond_0
    iput-object p1, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget v1, p0, Lcom/ubix/ssp/ad/a;->i:I

    iput v1, v0, Lcom/ubix/ssp/ad/d/a;->e:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/d/a;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/ubix/ssp/ad/d/a;->d:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ubix/ssp/ad/d/a;->k:I

    sget-object v1, Lcom/ubix/ssp/ad/d/b;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/ubix/ssp/ad/d/a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/ubix/ssp/ad/d/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->b()Lcom/ubix/ssp/ad/e/a0/n$c;

    move-result-object v1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/f;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/a0/n$c;->b([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/d/a;->i:Ljava/lang/String;

    iget-wide v1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->j:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    iput-wide v1, v0, Lcom/ubix/ssp/ad/d/a;->j:J

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ubix/ssp/ad/d/a;->l:J

    iput-object p3, v0, Lcom/ubix/ssp/ad/d/a;->m:Ljava/lang/String;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p1, :cond_2

    iget p3, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    iput p3, v0, Lcom/ubix/ssp/ad/d/a;->p:I

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->t:Ljava/lang/String;

    iput-object p1, v0, Lcom/ubix/ssp/ad/d/a;->h:Ljava/lang/String;

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, v0, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->i(Lcom/ubix/ssp/ad/d/a;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/ubix/ssp/ad/d/a;->w:Z

    return-object v0
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;
    .locals 21

    .line 8
    move-object/from16 v0, p1

    const-string v1, "legal_click_sw"

    const-string v2, "shake_tri_rdm"

    const-string v3, "shake_tri_dly"

    const-string v4, "refresh_inr"

    const-string v5, "replay_sw"

    const-string v6, "autoplay_cond"

    const-string v7, "volume_sw"

    const-string v8, "hot_area"

    const-string v9, "native_interaction_type"

    const-string v10, "interaction_type"

    const-string v11, "slide_val"

    const-string v12, "shake_val"

    const-string v13, "skip_dly"

    const-string v14, "skip_dly_sw"

    const-string v15, "video_click_cfm_sw"

    move-object/from16 v16, v1

    const-string v1, "video_cfm_sw"

    move-object/from16 v17, v2

    const-string v2, "skip_style"

    move-object/from16 v18, v3

    new-instance v3, Lcom/ubix/ssp/ad/d/l;

    invoke-direct {v3}, Lcom/ubix/ssp/ad/d/l;-><init>()V

    move-object/from16 v19, v4

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$c;->q:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :catch_0
    :cond_0
    move-object/from16 v4, p0

    goto/16 :goto_2

    :cond_1
    :try_start_0
    sget v4, Lcom/ubix/ssp/ad/d/b;->y:I

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/ubix/ssp/ad/d/b;->z:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    move-object/from16 v20, v5

    :try_start_1
    iget-boolean v5, v4, Lcom/ubix/ssp/ad/a;->w:Z

    if-eqz v5, :cond_3

    goto/16 :goto_2

    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v20, v5

    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->f:Lcom/ubix/ssp/ad/e/y/a/a$c;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$c;->q:Ljava/lang/String;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    move/from16 p1, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->D(Z)V

    :cond_4
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v5, v15, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->C(Z)V

    :cond_5
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v5, v14, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->w(Z)V

    :cond_6
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v5, v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->K(I)V

    :cond_7
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->L(I)V

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->q(I)V

    :cond_8
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-virtual {v5, v12, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/ubix/ssp/ad/d/l;->c(D)V

    :cond_9
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-wide v12, 0x3fc999999999999aL    # 0.2

    if-eqz v1, :cond_a

    invoke-virtual {v5, v11, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/ubix/ssp/ad/d/l;->d(D)V

    :cond_a
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v5, v10, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/ubix/ssp/ad/d/l;->p(I)V

    :cond_b
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->s(I)V

    :cond_c
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, ""

    if-eqz v1, :cond_d

    :try_start_2
    invoke-virtual {v5, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->c(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/ubix/ssp/ad/d/l;->E(Z)V

    :cond_e
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->a(I)V

    :cond_f
    move-object/from16 v1, v20

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->t(Z)V

    :cond_10
    move-object/from16 v1, v19

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v6, 0x1e

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->b(I)V

    :cond_11
    move-object/from16 v1, v18

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/16 v6, 0x96

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->E(I)V

    :cond_12
    move-object/from16 v1, v17

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->F(I)V

    :cond_13
    move-object/from16 v1, v16

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->c(Z)V

    :cond_14
    const-string v1, "shake_tri_angle"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x5

    if-eqz v1, :cond_15

    const-string v1, "shake_tri_angle"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->B(I)V

    :cond_15
    const-string v1, "wipe_val"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "wipe_val"

    invoke-virtual {v5, v1, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/ubix/ssp/ad/d/l;->b(D)V

    :cond_16
    const-string v1, "interaction_title"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->k(Z)V

    const-string v1, "interaction_title"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_17
    invoke-virtual {v3, v0}, Lcom/ubix/ssp/ad/d/l;->k(Z)V

    :goto_0
    const-string v1, "interaction_subtitle"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->j(Z)V

    const-string v1, "interaction_subtitle"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_18
    invoke-virtual {v3, v0}, Lcom/ubix/ssp/ad/d/l;->j(Z)V

    :goto_1
    const-string v1, "joyful_widget"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "joyful_widget"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->f(Ljava/lang/String;)V

    :cond_19
    const-string v1, "confirm_close_action"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "confirm_close_action"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->c(I)V

    :cond_1a
    const-string v1, "confirm_download_action"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "confirm_download_action"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->d(I)V

    :cond_1b
    const-string v1, "adsource_show"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "adsource_show"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->a(Z)V

    :cond_1c
    const-string v1, "pan_begin_freedom"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "pan_begin_freedom"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->y(Z)V

    :cond_1d
    const-string v1, "countdown_ctrl"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "countdown_ctrl"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->e(I)V

    :cond_1e
    const-string v1, "instant_reward"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "instant_reward"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->n(Z)V

    :cond_1f
    const-string v1, "lets_dance"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "lets_dance"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->p(Z)V

    :cond_20
    const-string v1, "dance_delay"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "dance_delay"

    const/16 v7, 0x64

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->f(I)V

    :cond_21
    const-string v1, "shake_type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "shake_type"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->G(I)V

    :cond_22
    const-string v1, "shake_multi_angle"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "shake_multi_angle"

    const-string v7, "35"

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->g(Ljava/lang/String;)V

    :cond_23
    const-string v1, "shake_win_val"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "shake_win_val"

    const/16 v7, 0x1388

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->C(I)V

    :cond_24
    const-string v1, "tb_chk_sw"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "tb_chk_sw"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->x(Z)V

    :cond_25
    const-string v1, "expose_adv_sw"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "expose_adv_sw"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->h(Z)V

    :cond_26
    const-string v1, "expose_adv_inr"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "expose_adv_inr"

    const/16 v7, 0x64

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->k(I)V

    :cond_27
    const-string v1, "expose_adv_max"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "expose_adv_max"

    const/4 v7, -0x1

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->l(I)V

    :cond_28
    const-string v1, "expose_adv_per"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "expose_adv_per"

    const/16 v7, 0x32

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->m(I)V

    :cond_29
    const-string v1, "dp_fail_opt"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "dp_fail_opt"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->i(I)V

    :cond_2a
    const-string v1, "slide_angle"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "slide_angle"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->N(I)V

    :cond_2b
    const-string v1, "one_key_down"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "one_key_down"

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->r(Z)V

    :cond_2c
    const-string v1, "window_popup_type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "window_popup_type"

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->v(I)V

    :cond_2d
    const-string v1, "default_tri_val"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "default_tri_val"

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    invoke-virtual {v5, v1, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/ubix/ssp/ad/d/l;->a(D)V

    :cond_2e
    const-string v1, "reward_type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "reward_type"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->A(I)V

    :cond_2f
    const-string v1, "reward_duration"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "reward_duration"

    const/16 v7, -0x3e7

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->y(I)V

    :cond_30
    const-string v1, "reward_description"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "reward_description"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->j(Ljava/lang/String;)V

    :cond_31
    const-string v1, "check_expired"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "check_expired"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->b(Z)V

    :cond_32
    const-string v1, "dp_detect_type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "dp_detect_type"

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->h(I)V

    :cond_33
    const-string v1, "native_shk_val"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "native_shk_val"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->t(I)V

    :cond_34
    const-string v1, "native_trigger_sw"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "native_trigger_sw"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->q(Z)V

    :cond_35
    const-string v1, "video_render_type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "video_render_type"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->P(I)V

    :cond_36
    const-string v1, "reward_play_per"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "reward_play_per"

    const/16 v7, 0x5a

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->z(I)V

    :cond_37
    const-string v1, "skip_time"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "skip_time"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->M(I)V

    :cond_38
    const-string v1, "custom_download_confirm"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "custom_download_confirm"

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->e(Z)V

    :cond_39
    const-string v1, "jump_url_callback"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "jump_url_callback"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->o(Z)V

    :cond_3a
    const-string v1, "shake_style"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "shake_style"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->D(I)V

    :cond_3b
    const-string v1, "use_ori_hk"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "use_ori_hk"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->l(Z)V

    :cond_3c
    const-string v1, "use_material_id"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "use_material_id"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->A(Z)V

    :cond_3d
    const-string v1, "native_bg_color"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "native_bg_color"

    const-string v6, "#ffffff"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->h(Ljava/lang/String;)V

    :cond_3e
    const-string v1, "custom_shk_cfg"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "custom_shk_cfg"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->a(Ljava/lang/String;)V

    :cond_3f
    const-string v1, "inner_popup_type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "inner_popup_type"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->n(I)V

    :cond_40
    const-string v1, "instl_popup_type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "instl_popup_type"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->o(I)V

    :cond_41
    const-string v1, "custom_hid"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "custom_hid"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->f(Z)V

    :cond_42
    const-string v1, "download_reward_t"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "download_reward_t"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->r(I)V

    :cond_43
    const-string v1, "splash_return_dly"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "splash_return_dly"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->w(I)V

    :cond_44
    const-string v1, "force_custom_slide"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "force_custom_slide"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->i(Z)V

    :cond_45
    const-string v1, "tri_c_t"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "tri_c_t"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->H(I)V

    :cond_46
    const-string v1, "tri_c_a"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "tri_c_a"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->k(Ljava/lang/String;)V

    :cond_47
    const-string v1, "tri_s_c"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "tri_s_c"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->I(I)V

    :cond_48
    const-string v1, "tri_s_t"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "tri_s_t"

    const/16 v6, 0xe10

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->J(I)V

    :cond_49
    const-string v1, "nevv_prot"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "nevv_prot"

    const/16 v6, 0x10e0

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->u(I)V

    :cond_4a
    const-string v1, "download_open_t"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "download_open_t"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->g(I)V

    :cond_4b
    const-string v1, "target_open_t"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "target_open_t"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->O(I)V

    :cond_4c
    const-string v1, "reward_adv_ext"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "reward_adv_ext"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->i(Ljava/lang/String;)V

    :cond_4d
    const-string v1, "reward_true"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, "reward_true"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->x(I)V

    :cond_4e
    const-string v1, "unname_logo"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "unname_logo"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->z(Z)V

    :cond_4f
    const-string v1, "ectr_type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "ectr_type"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/d/l;->j(I)V

    :cond_50
    const-string v1, "dly_ck_sw"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    const-string v1, "dly_ck_sw"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ubix/ssp/ad/d/l;->g(Z)V

    :cond_51
    const-string v0, "dly_ck_cfg"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "dly_ck_cfg"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ubix/ssp/ad/d/l;->b(Ljava/lang/String;)V

    :cond_52
    const-string v0, "shake_angle_strict"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "shake_angle_strict"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ubix/ssp/ad/d/l;->u(Z)V

    :cond_53
    const-string v0, "shake_x_enable"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "shake_x_enable"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ubix/ssp/ad/d/l;->v(Z)V

    :cond_54
    const-string v0, "op_f_opt_sw"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "op_f_opt_sw"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ubix/ssp/ad/d/l;->s(Z)V

    :cond_55
    const-string v0, "hr_cr_opt_sw"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "hr_cr_opt_sw"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ubix/ssp/ad/d/l;->m(Z)V

    :cond_56
    const-string v0, "vi_s_opt_sw"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "vi_s_opt_sw"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ubix/ssp/ad/d/l;->B(Z)V

    :cond_57
    const-string v0, "clk_wait_act"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "clk_wait_act"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/ubix/ssp/ad/d/l;->d(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_58
    :goto_2
    return-object v3
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ubix/ssp/ad/e/y/a/d;
    .locals 12

    .line 9
    new-instance v0, Lcom/ubix/ssp/ad/e/y/a/d;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/a/d;-><init>()V

    const/16 v1, 0x9

    const/4 v2, 0x2

    :try_start_0
    new-instance v3, Lcom/ubix/ssp/ad/e/y/a/k;

    invoke-direct {v3}, Lcom/ubix/ssp/ad/e/y/a/k;-><init>()V

    sget-object v4, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdSetting;->getUserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ubix/ssp/ad/e/y/a/k;->b:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getPersonalizedState()I

    move-result v4

    iput v4, v3, Lcom/ubix/ssp/ad/e/y/a/k;->h:I

    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getProgrammaticRecommendState()I

    move-result v4

    iput v4, v3, Lcom/ubix/ssp/ad/e/y/a/k;->i:I

    new-instance v4, Lcom/ubix/ssp/ad/e/y/a/i;

    invoke-direct {v4}, Lcom/ubix/ssp/ad/e/y/a/i;-><init>()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v5

    iput v5, v4, Lcom/ubix/ssp/ad/e/y/a/i;->c:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v5

    iput v5, v4, Lcom/ubix/ssp/ad/e/y/a/i;->d:I

    new-instance v5, Lcom/ubix/ssp/ad/e/y/a/b$a;

    invoke-direct {v5}, Lcom/ubix/ssp/ad/e/y/a/b$a;-><init>()V

    if-ne p3, v1, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    iput v6, v5, Lcom/ubix/ssp/ad/e/y/a/b$a;->c:I

    filled-new-array {v4}, [Lcom/ubix/ssp/ad/e/y/a/i;

    move-result-object v4

    iput-object v4, v5, Lcom/ubix/ssp/ad/e/y/a/b$a;->d:[Lcom/ubix/ssp/ad/e/y/a/i;

    invoke-static {}, Lcom/ubix/ssp/ad/d/k;->a()Lcom/ubix/ssp/ad/d/k;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/ubix/ssp/ad/d/k;->a(Ljava/lang/String;)Lcom/ubix/ssp/ad/d/k$a;

    move-result-object v4

    new-instance v6, Lcom/ubix/ssp/ad/e/y/a/b;

    invoke-direct {v6}, Lcom/ubix/ssp/ad/e/y/a/b;-><init>()V

    invoke-direct {p0, p2}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v6, Lcom/ubix/ssp/ad/e/y/a/b;->c:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-wide v7, v4, Lcom/ubix/ssp/ad/d/k$a;->b:J

    iput-wide v7, v6, Lcom/ubix/ssp/ad/e/y/a/b;->v:J

    iget p2, v4, Lcom/ubix/ssp/ad/d/k$a;->a:I

    iput p2, v6, Lcom/ubix/ssp/ad/e/y/a/b;->u:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_1
    iput p3, v6, Lcom/ubix/ssp/ad/e/y/a/b;->d:I

    iget p2, p0, Lcom/ubix/ssp/ad/a;->u:I

    iput p2, v6, Lcom/ubix/ssp/ad/e/y/a/b;->r:I

    const/4 p2, 0x1

    iput-boolean p2, v6, Lcom/ubix/ssp/ad/e/y/a/b;->m:Z

    iput p2, v6, Lcom/ubix/ssp/ad/e/y/a/b;->e:I

    filled-new-array {v5}, [Lcom/ubix/ssp/ad/e/y/a/b$a;

    move-result-object p3

    iput-object p3, v6, Lcom/ubix/ssp/ad/e/y/a/b;->f:[Lcom/ubix/ssp/ad/e/y/a/b$a;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/x;->b()I

    move-result p3

    iput p3, v6, Lcom/ubix/ssp/ad/e/y/a/b;->k:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/a;->k()I

    move-result p3

    iput p3, v6, Lcom/ubix/ssp/ad/e/y/a/b;->s:I

    iget-object p3, p0, Lcom/ubix/ssp/ad/a;->v:Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;

    if-eqz p3, :cond_2

    new-instance p3, Lcom/ubix/ssp/ad/e/y/a/b$b;

    invoke-direct {p3}, Lcom/ubix/ssp/ad/e/y/a/b$b;-><init>()V

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->v:Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;

    iget-object v4, v4, Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;->extra:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Lcom/ubix/ssp/ad/e/y/a/b$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->v:Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;

    iget-object v4, v4, Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;->userId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Lcom/ubix/ssp/ad/e/y/a/b$b;->b:Ljava/lang/String;

    iput-object p3, v6, Lcom/ubix/ssp/ad/e/y/a/b;->t:Lcom/ubix/ssp/ad/e/y/a/b$b;

    :cond_2
    new-instance p3, Lcom/ubix/ssp/ad/d/c;

    invoke-direct {p3}, Lcom/ubix/ssp/ad/d/c;-><init>()V

    sget-object v4, Lcom/ubix/ssp/ad/d/b;->q:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Lcom/ubix/ssp/ad/d/c;->a:Ljava/lang/String;

    new-instance v4, Lcom/ubix/ssp/ad/d/g;

    invoke-direct {v4}, Lcom/ubix/ssp/ad/d/g;-><init>()V

    new-instance v5, Lcom/ubix/ssp/ad/e/y/a/c$a;

    invoke-direct {v5}, Lcom/ubix/ssp/ad/e/y/a/c$a;-><init>()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->h()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/c$a;->d:Ljava/lang/String;

    iget-object v7, v4, Lcom/ubix/ssp/ad/d/g;->H:[D

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    iput-wide v8, v5, Lcom/ubix/ssp/ad/e/y/a/c$a;->b:D

    aget-wide v8, v7, p2

    iput-wide v8, v5, Lcom/ubix/ssp/ad/e/y/a/c$a;->c:D

    new-instance v7, Lcom/ubix/ssp/ad/e/y/a/c;

    invoke-direct {v7}, Lcom/ubix/ssp/ad/e/y/a/c;-><init>()V

    iget-object v8, p3, Lcom/ubix/ssp/ad/d/c;->a:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/ubix/ssp/ad/e/y/a/c;->b:Ljava/lang/String;

    iget-object v8, p3, Lcom/ubix/ssp/ad/d/c;->b:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/ubix/ssp/ad/e/y/a/c;->c:Ljava/lang/String;

    iget-object v8, p3, Lcom/ubix/ssp/ad/d/c;->c:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/ubix/ssp/ad/e/y/a/c;->d:Ljava/lang/String;

    iget-object v8, p3, Lcom/ubix/ssp/ad/d/c;->d:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/ubix/ssp/ad/e/y/a/c;->e:Ljava/lang/String;

    iget-object v8, p3, Lcom/ubix/ssp/ad/d/c;->g:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/ubix/ssp/ad/e/y/a/c;->h:Ljava/lang/String;

    iput-object v5, v7, Lcom/ubix/ssp/ad/e/y/a/c;->f:Lcom/ubix/ssp/ad/e/y/a/c$a;

    iget-boolean v5, p3, Lcom/ubix/ssp/ad/d/c;->f:Z

    iput-boolean v5, v7, Lcom/ubix/ssp/ad/e/y/a/c;->g:Z

    iget-wide v8, p3, Lcom/ubix/ssp/ad/d/c;->h:J

    sput-wide v8, Lcom/ubix/ssp/ad/d/b;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    const-string v8, ""

    if-nez v5, :cond_3

    move-object v5, v8

    goto :goto_2

    :cond_3
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v9, Lcom/ubix/ssp/ad/d/b;->g:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, v7, Lcom/ubix/ssp/ad/e/y/a/c;->k:Ljava/lang/String;

    iget-object p3, p3, Lcom/ubix/ssp/ad/d/c;->e:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v7, Lcom/ubix/ssp/ad/e/y/a/c;->l:Ljava/lang/String;

    new-instance p3, Lcom/ubix/ssp/ad/d/e;

    invoke-direct {p3}, Lcom/ubix/ssp/ad/d/e;-><init>()V

    new-instance v5, Lcom/ubix/ssp/ad/e/y/a/f$b;

    invoke-direct {v5}, Lcom/ubix/ssp/ad/e/y/a/f$b;-><init>()V

    iget-object v9, p3, Lcom/ubix/ssp/ad/d/e;->a:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/ubix/ssp/ad/e/y/a/f$b;->e:Ljava/lang/String;

    iget-object v9, p3, Lcom/ubix/ssp/ad/d/e;->b:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/ubix/ssp/ad/e/y/a/f$b;->f:Ljava/lang/String;

    iget-object v9, p3, Lcom/ubix/ssp/ad/d/e;->f:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/ubix/ssp/ad/e/y/a/f$b;->g:Ljava/lang/String;

    iget-object v9, p3, Lcom/ubix/ssp/ad/d/e;->g:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/ubix/ssp/ad/e/y/a/f$b;->n:Ljava/lang/String;

    iget-object v9, p3, Lcom/ubix/ssp/ad/d/e;->d:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/ubix/ssp/ad/e/y/a/f$b;->h:Ljava/lang/String;

    iget-object v9, p3, Lcom/ubix/ssp/ad/d/e;->e:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/ubix/ssp/ad/e/y/a/f$b;->p:Ljava/lang/String;

    iget-object v9, p3, Lcom/ubix/ssp/ad/d/e;->h:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/ubix/ssp/ad/e/y/a/f$b;->i:Ljava/lang/String;

    iget-object v9, p3, Lcom/ubix/ssp/ad/d/e;->j:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/ubix/ssp/ad/e/y/a/f$b;->j:Ljava/lang/String;

    iget-object v9, p3, Lcom/ubix/ssp/ad/d/e;->l:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/ubix/ssp/ad/e/y/a/f$b;->k:Ljava/lang/String;

    iget-object p3, p3, Lcom/ubix/ssp/ad/d/e;->c:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v5, Lcom/ubix/ssp/ad/e/y/a/f$b;->l:Ljava/lang/String;

    new-instance p3, Lcom/ubix/ssp/ad/e/y/a/f;

    invoke-direct {p3}, Lcom/ubix/ssp/ad/e/y/a/f;-><init>()V

    iget v9, v4, Lcom/ubix/ssp/ad/d/g;->e:I

    iput v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->c:I

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->c:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->I:Ljava/lang/String;

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->d:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->J:Ljava/lang/String;

    iget v9, v4, Lcom/ubix/ssp/ad/d/g;->f:I

    iput v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->d:I

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->g:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->e:Ljava/lang/String;

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->h:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->f:Ljava/lang/String;

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->i:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->O:Ljava/lang/String;

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->j:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->g:Ljava/lang/String;

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->l:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->i:Ljava/lang/String;

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->k:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->h:Ljava/lang/String;

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->n:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->j:Ljava/lang/String;

    iget v9, v4, Lcom/ubix/ssp/ad/d/g;->t:I

    iput v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->k:I

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->F:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->A:Ljava/lang/String;

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->G:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->z:Ljava/lang/String;

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->E:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->y:Ljava/lang/String;

    iget-boolean v9, v4, Lcom/ubix/ssp/ad/d/g;->b:Z

    iput-boolean v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->M:Z

    iget v10, v4, Lcom/ubix/ssp/ad/d/g;->a:I

    iput v10, p3, Lcom/ubix/ssp/ad/e/y/a/f;->L:I

    sget v11, Lcom/ubix/ssp/ad/d/b;->y:I

    if-eqz v11, :cond_5

    if-nez v9, :cond_4

    if-ne v10, v2, :cond_5

    :cond_4
    iput-boolean p2, p0, Lcom/ubix/ssp/ad/a;->w:Z

    :cond_5
    new-instance v9, Lcom/ubix/ssp/ad/e/y/a/i;

    invoke-direct {v9}, Lcom/ubix/ssp/ad/e/y/a/i;-><init>()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/ubix/ssp/ad/e/a0/r;->e(Landroid/content/Context;)I

    move-result v10

    iput v10, v9, Lcom/ubix/ssp/ad/e/y/a/i;->c:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/ubix/ssp/ad/e/a0/r;->d(Landroid/content/Context;)I

    move-result v10

    iput v10, v9, Lcom/ubix/ssp/ad/e/y/a/i;->d:I

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->l:Lcom/ubix/ssp/ad/e/y/a/i;

    iget v9, v4, Lcom/ubix/ssp/ad/d/g;->p:F

    iput v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->m:F

    iget v9, v4, Lcom/ubix/ssp/ad/d/g;->q:F

    iput v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->H:F

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->r:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->n:Ljava/lang/String;

    const/4 v9, 0x0

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->B:[Ljava/lang/String;

    iget v9, v4, Lcom/ubix/ssp/ad/d/g;->s:I

    iput v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->o:I

    iget-object v9, v4, Lcom/ubix/ssp/ad/d/g;->u:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->p:Ljava/lang/String;

    iget v9, v4, Lcom/ubix/ssp/ad/d/g;->v:I

    iput v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->q:I

    iget v9, v4, Lcom/ubix/ssp/ad/d/g;->y:I

    iput v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->t:I

    iget v9, v4, Lcom/ubix/ssp/ad/d/g;->A:I

    iput v9, p3, Lcom/ubix/ssp/ad/e/y/a/f;->x:I

    iput-object v5, p3, Lcom/ubix/ssp/ad/e/y/a/f;->b:Lcom/ubix/ssp/ad/e/y/a/f$b;

    iget-object v5, v4, Lcom/ubix/ssp/ad/d/g;->w:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p3, Lcom/ubix/ssp/ad/e/y/a/f;->r:Ljava/lang/String;

    iget-object v5, v4, Lcom/ubix/ssp/ad/d/g;->x:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p3, Lcom/ubix/ssp/ad/e/y/a/f;->s:Ljava/lang/String;

    iget-object v5, v4, Lcom/ubix/ssp/ad/d/g;->B:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p3, Lcom/ubix/ssp/ad/e/y/a/f;->D:Ljava/lang/String;

    iget-object v5, v4, Lcom/ubix/ssp/ad/d/g;->C:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p3, Lcom/ubix/ssp/ad/e/y/a/f;->C:Ljava/lang/String;

    iget v4, v4, Lcom/ubix/ssp/ad/d/g;->I:I

    iput v4, p3, Lcom/ubix/ssp/ad/e/y/a/f;->N:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v9, Lcom/ubix/ssp/ad/d/b;->n:J

    sub-long/2addr v4, v9

    sget-wide v9, Lcom/ubix/ssp/ad/d/b;->o:J

    cmp-long v4, v4, v9

    if-gez v4, :cond_6

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/p;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/p;->d()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/ubix/ssp/ad/e/y/a/f;->F:[Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/p;->e()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/ubix/ssp/ad/e/y/a/f;->G:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    iput-object v3, v0, Lcom/ubix/ssp/ad/e/y/a/d;->d:Lcom/ubix/ssp/ad/e/y/a/k;

    iput p2, v0, Lcom/ubix/ssp/ad/e/y/a/d;->j:I

    const-string p1, "2.10.2.11"

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ubix/ssp/ad/e/y/a/d;->c:Ljava/lang/String;

    iput-object v7, v0, Lcom/ubix/ssp/ad/e/y/a/d;->e:Lcom/ubix/ssp/ad/e/y/a/c;

    iput-object p3, v0, Lcom/ubix/ssp/ad/e/y/a/d;->f:Lcom/ubix/ssp/ad/e/y/a/f;

    filled-new-array {v6}, [Lcom/ubix/ssp/ad/e/y/a/b;

    move-result-object p1

    iput-object p1, v0, Lcom/ubix/ssp/ad/e/y/a/d;->g:[Lcom/ubix/ssp/ad/e/y/a/b;

    sget-object p1, Lcom/ubix/ssp/ad/d/b;->p:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ubix/ssp/ad/e/y/a/d;->h:Ljava/lang/String;

    iput-object v8, v0, Lcom/ubix/ssp/ad/e/y/a/d;->i:Ljava/lang/String;

    iput-object v8, v0, Lcom/ubix/ssp/ad/e/y/a/d;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->k:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ubix/ssp/ad/e/y/a/d;->b:Ljava/lang/String;

    const-string p1, "slot_req_info"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/ubix/ssp/ad/d/k;->a()Lcom/ubix/ssp/ad/d/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/k;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput v1, p1, Landroid/os/Message;->what:I

    const-string p2, "\u8bf7\u6c42\u53c2\u6570\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u4f20\u5165\u7684\u5e7f\u544a\u53c2\u6570\u662f\u5426\u6b63\u786e"

    invoke-static {v2, p2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    :goto_5
    return-object v0
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Lcom/ubix/ssp/open/ParamsReview;
    .locals 2

    .line 10
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/e/y/a/a;)Z

    move-result v1

    invoke-static {p1, v1, p2, p3}, Lcom/ubix/ssp/ad/d/j;->a(Lcom/ubix/ssp/ad/e/y/a/a;ZZZ)Lcom/ubix/ssp/open/ParamsReview;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;JJJ)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "JJJ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v1, "__DURATION__"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "__PLAY_TIME__"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "__SKIP_TIME__"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p2, p1, Lcom/ubix/ssp/ad/d/a;->n:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->m:Ljava/lang/String;

    const-string p2, "__AUCTION_PRICE__"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(ILcom/ubix/ssp/ad/d/a;)V
    .locals 0

    .line 14
    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 0

    .line 15
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->k(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    sget v0, Lcom/ubix/ssp/ad/d/b;->C:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v12, Lcom/ubix/ssp/ad/a$f;

    move-object v3, p0

    move-object v7, p1

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    move-object v2, v12

    invoke-direct/range {v2 .. v8}, Lcom/ubix/ssp/ad/a$f;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;JLandroid/content/Context;Ljava/util/HashMap;)V

    new-instance v13, Lcom/ubix/ssp/ad/a$g;

    invoke-direct {v13, p0, v4}, Lcom/ubix/ssp/ad/a$g;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v9, ""

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ubix/ssp/ad/e/a0/d$e;Lcom/ubix/ssp/ad/e/a0/d$d;Lcom/ubix/ssp/ad/e/a0/d$c;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 18
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/a$a0;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/a$a0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ubix/ssp/ad/a$a0;",
            ")V"
        }
    .end annotation

    .line 19
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    iget-object p4, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p4, p4, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v1

    iget-object v0, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v3, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->M:I

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->P:Lcom/ubix/ssp/ad/e/y/a/a$b$d;

    iget-object v6, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/w/k;->a(IILcom/ubix/ssp/ad/e/y/a/a$b$d;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v2, p4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p3, v0

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :goto_1
    iget v3, p0, Lcom/ubix/ssp/ad/a;->i:I

    iget-object p3, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, p3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v4

    iget-object v5, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    iget-object v6, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    if-eqz p5, :cond_0

    const/4 p1, 0x3

    invoke-interface {p5, p1}, Lcom/ubix/ssp/ad/a$a0;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7

    .line 20
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ubix/ssp/ad/e/a0/d$e;Lcom/ubix/ssp/ad/e/a0/d$d;Lcom/ubix/ssp/ad/e/a0/d$c;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/ubix/ssp/ad/e/a0/d$e;Lcom/ubix/ssp/ad/e/a0/d$d;Lcom/ubix/ssp/ad/e/a0/d$c;)V
    .locals 1

    .line 21
    if-nez p3, :cond_0

    return-void

    :cond_0
    move-object p3, p5

    move-object p5, p6

    new-instance p6, Lcom/ubix/ssp/ad/e/a0/d;

    invoke-direct {p6, p1}, Lcom/ubix/ssp/ad/e/a0/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/ubix/ssp/ad/a$j;

    invoke-direct {v0, p0, p6, p4}, Lcom/ubix/ssp/ad/a$j;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/e/a0/d;Lcom/ubix/ssp/ad/e/a0/d$e;)V

    invoke-virtual {p6, v0}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d$e;)V

    new-instance p4, Lcom/ubix/ssp/ad/a$l;

    invoke-direct {p4, p0, p3}, Lcom/ubix/ssp/ad/a$l;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/e/a0/d$d;)V

    invoke-virtual {p6, p4}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d$d;)V

    move-object p4, p1

    new-instance p1, Lcom/ubix/ssp/ad/a$m;

    move-object p3, p2

    move-object p2, p0

    invoke-direct/range {p1 .. p6}, Lcom/ubix/ssp/ad/a$m;-><init>(Lcom/ubix/ssp/ad/a;Ljava/lang/String;Landroid/content/Context;Lcom/ubix/ssp/ad/e/a0/d$c;Lcom/ubix/ssp/ad/e/a0/d;)V

    invoke-virtual {p6, p1}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d$c;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 4

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "MainFrameHasError"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "MainFrameDestroy"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "WebViewLoadFinished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object p1

    new-instance v3, Lcom/ubix/ssp/ad/a$o;

    invoke-direct {v3, p0, v1, v2, p2}, Lcom/ubix/ssp/ad/a$o;-><init>(Lcom/ubix/ssp/ad/a;JZ)V

    invoke-virtual {p1, v3, v0}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public a(Landroid/content/Context;ZI)V
    .locals 0

    .line 23
    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/ubix/ssp/ad/e/a0/d;

    invoke-direct {p2, p1}, Lcom/ubix/ssp/ad/e/a0/d;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/ubix/ssp/ad/a$n;

    invoke-direct {p1, p0, p3, p2}, Lcom/ubix/ssp/ad/a$n;-><init>(Lcom/ubix/ssp/ad/a;ILcom/ubix/ssp/ad/e/a0/d;)V

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d$f;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 9

    .line 24
    const-string v0, "__SENSOR_INFO_TYPE__"

    const-string v1, "%.2f_%.2f_%.2f"

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "EVENT_ATTRS"

    if-ne v2, v3, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "ubix_tx_ca"

    :try_start_2
    const-string v6, "__UBIX_ACC_X__"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "__UBIX_ACC_Y__"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v8, "__UBIX_ACC_Z__"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "ubix_tx_ma"

    :try_start_3
    const-string v6, "__X_MAX_ACC__"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "__Y_MAX_ACC__"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v8, "__Z_MAX_ACC__"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "ubix_tx_tr"

    :try_start_4
    const-string v6, "__TURN_X__"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "__TURN_Y__"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v8, "__TURN_Z__"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v1, "ubix_tx_tt"

    const-string v3, "%s"

    :try_start_5
    const-string v6, "__TURN_TIME__"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    const-string v1, "08001"

    :goto_0
    invoke-interface {p1, v0, v1, v4}, Lcom/ubix/ssp/ad/e/w/e;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v2, "ubix_tx_nss"

    :try_start_6
    const-string v3, "__SENSOR_UN_SUPPORT_LIST__"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v2, "ubix_tx_sc"

    :try_start_7
    const-string v3, "__SENSOR_UN_RECEIVE__"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    const-string v1, "08002"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public abstract a(Landroid/os/Message;)V
.end method

.method public a(Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;)V
    .locals 3

    .line 25
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->E()Lcom/ubix/ssp/ad/d/l$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->E0()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/l$a;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l$a;->h()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/b;->a(Lcom/ubix/ssp/ad/d/l$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/a;->l()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l$a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object p2

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l$a;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ubix/ssp/ad/a$q;

    invoke-direct {v2, p0, p1, v0}, Lcom/ubix/ssp/ad/a$q;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l$a;)V

    invoke-interface {p2, v1, v2}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;IJJJ)V
    .locals 10

    .line 26
    iget v0, p0, Lcom/ubix/ssp/ad/a;->p:I

    mul-int/lit8 v1, v0, 0x19

    if-lt p2, v1, :cond_4

    const/4 v1, 0x1

    const-string v2, "%)"

    if-nez v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Video at start: ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v2 .. v9}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;JJJ)Ljava/util/HashMap;

    move-result-object p1

    const/16 p3, 0x1388

    :goto_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    goto/16 :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video at first quartile: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v2 .. v9}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;JJJ)Ljava/util/HashMap;

    move-result-object p1

    const/16 p3, 0x13a1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video at midpoint: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v2 .. v9}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;JJJ)Ljava/util/HashMap;

    move-result-object p1

    const/16 p3, 0x13ba

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video at third quartile: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v2 .. v9}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;JJJ)Ljava/util/HashMap;

    move-result-object p1

    const/16 p3, 0x13d3

    goto :goto_0

    :cond_3
    :goto_1
    iget p1, p0, Lcom/ubix/ssp/ad/a;->p:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ubix/ssp/ad/a;->p:I

    :cond_4
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Lcom/ubix/ssp/ad/b;",
            "Lcom/ubix/ssp/ad/d/l;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/ubix/ssp/ad/d/b;->g:J

    sub-long/2addr v0, v2

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/d/l;->K()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-virtual {p3}, Lcom/ubix/ssp/ad/d/l;->w()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/d/l;->x()J

    move-result-wide v5

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/d/l;->a()Z

    move-result v8

    move-object v2, p0

    move-object v3, p4

    invoke-virtual/range {v2 .. v8}, Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;Landroid/graphics/Rect;JZZ)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p4, "__CLICK_AREA__"

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v1}, Lcom/ubix/ssp/ad/b;->setShakeTrigger(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, v2, Lcom/ubix/ssp/ad/a;->o:J

    sub-long/2addr v0, v4

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/d/l;->X()I

    move-result p4

    int-to-long v4, p4

    cmp-long p4, v0, v4

    if-gtz p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/ubix/ssp/ad/d/l;->X()I

    move-result p4

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/d/l;->Y()I

    move-result v4

    add-int/2addr p4, v4

    int-to-long v4, p4

    cmp-long p4, v0, v4

    if-gtz p4, :cond_4

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/d/l;->X()I

    move-result p4

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/d/l;->Y()I

    move-result p3

    add-int/2addr p4, p3

    int-to-long p3, p4

    sub-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    long-to-int p3, p3

    const/16 p4, 0x32

    if-le p3, p4, :cond_4

    new-instance p4, Lcom/ubix/ssp/ad/a$s;

    invoke-direct {p4, p0, p1}, Lcom/ubix/ssp/ad/a$s;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;)V

    invoke-virtual {p2, p3, p4}, Lcom/ubix/ssp/ad/b;->a(ILcom/ubix/ssp/ad/b$e;)V

    return-void

    :cond_2
    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "6"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2, v1}, Lcom/ubix/ssp/ad/b;->setShakeTrigger(Z)V

    invoke-virtual {p0, p1, v3}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z

    return-void

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/b;->i()V

    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;)V
    .locals 1

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/ad/g/k/c;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/ad/g/k/c;)V
    .locals 3

    .line 29
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/a;->x:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u60a8\u5df2\u63d0\u4ea4\u53cd\u9988\uff01\u8bf7\u52ff\u91cd\u590d\u63d0\u4ea4"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2, p3, p3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TYPE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    new-instance v2, Lcom/ubix/ssp/ad/a$t;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/ubix/ssp/ad/a$t;-><init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/g/k/c;)V

    const/4 p1, 0x0

    invoke-static {v1, v0, v2, p1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;)Z

    const-string v0, "__DOWN_ERR_ID__"

    const-string v1, "30803"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    const/16 v0, 0x134

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/a/a;I)V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/a/a;J)V
    .locals 3

    .line 32
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "__second_price__"

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object p2

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    const/16 p3, 0x2bd

    invoke-virtual {p2, p1, v0, p3}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/y/a/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    const/16 v1, 0x2be

    invoke-virtual {v0, p1, p2, v1}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/y/a/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/AdError;)V
    .locals 3

    .line 36
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/a;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/a;->q:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    move-object v2, p1

    check-cast v2, Lcom/ubix/ssp/ad/e/a0/a0/a;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ubix/ssp/ad/e/w/e;->a(Ljava/util/HashMap;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/ubix/ssp/ad/e/y/a/e;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->c(Lcom/ubix/ssp/ad/e/y/a/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/ubix/ssp/ad/a;->z:Ljava/util/HashMap;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 0

    .line 40
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;)Z
    .locals 4

    .line 42
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/s/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, v2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->e()I

    move-result v2

    if-eq v2, v0, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_3

    :cond_0
    if-nez v1, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    :goto_0
    iget p1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    goto :goto_0

    :goto_1
    invoke-interface {v1, v2, p1}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return v0
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;ZLjava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v1

    iget v2, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {v1, v2}, Lcom/ubix/ssp/ad/e/s/d;->b(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/d/a;)Z

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerGlobalDownloadWindow status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-nez p2, :cond_2

    const/16 p2, 0x2c

    if-ne v1, p2, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p2

    iget-object p3, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget p1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p2, p3, p1}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/e;

    const-string p2, "\u4e0b\u8f7d\u7ee7\u7eed"

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/z/e;->setText(Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    const/16 p2, 0x2d

    if-ne v1, p2, :cond_4

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget v2, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p2, v1, v2}, Lcom/ubix/ssp/ad/e/s/d;->b(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->y:Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p0, p3, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    :cond_3
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;)V

    return v0

    :cond_4
    const/16 p2, 0x2b

    if-eq v1, p2, :cond_5

    const/16 p2, 0x2e

    if-ne v1, p2, :cond_7

    :cond_5
    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->y:Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p0, p3, p2, v1}, Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p2

    iput-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    :cond_6
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p2, v1}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;)V

    :cond_7
    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-nez p2, :cond_8

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->y:Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p0, p3, p1, v1}, Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    const/4 p1, 0x1

    return p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public a(Ljava/util/HashMap;Landroid/graphics/Rect;JZZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Rect;",
            "JZZ)Z"
        }
    .end annotation

    .line 46
    const-string v0, "__CLICK_TRIGGER__"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;JZLandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    move-object v6, p2

    move-object p2, p1

    const-string p1, "__CLICK_AREA__"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "true"

    const/4 v2, 0x1

    const-string v3, "__INSIDE_AREA__"

    if-nez v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "11"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "7"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    move-object p1, p0

    move-object p6, v6

    invoke-direct/range {p1 .. p6}, Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;JZLandroid/graphics/Rect;)Z

    move-result p2

    return p2

    :cond_3
    return v2

    :cond_4
    :goto_0
    if-nez p6, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_5
    return v2
.end method

.method public b(Ljava/lang/String;)Lcom/ubix/ssp/open/AdError;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x4

    const-string v0, "Activity/Context\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_0
    sget-boolean v0, Lcom/ubix/ssp/ad/d/b;->c:Z

    if-eqz v0, :cond_1

    const/16 p1, 0xb

    const-string v0, "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e\uff0c\u65e0\u6cd5\u8fd4\u56de\u5e7f\u544a"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_1
    sget-boolean v0, Lcom/ubix/ssp/ad/d/b;->b:Z

    if-eqz v0, :cond_2

    const/16 p1, 0x8

    const-string v0, "SDK\u672a\u521d\u59cb\u5316"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_2
    sget v0, Lcom/ubix/ssp/ad/d/b;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/16 p1, 0x9

    const-string v0, "SDK\u529f\u80fd\u5df2\u7ecf\u5173\u95ed"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v0, Lcom/ubix/ssp/ad/d/b;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    const-string v0, "APP_ID\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "POS_ID\u4e3a\u7a7a"

    invoke-static {v1, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x7

    const-string v0, "\u8d85\u8fc7\u8bf7\u6c42\u9891\u6b21\uff0c\u8bf7\u52ff\u9891\u7e41\u8c03\u7528"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/a/e;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/y/a/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/ubix/ssp/ad/d/a;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p1, Lcom/ubix/ssp/ad/e/y/a/e;->c:[Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->e(Lcom/ubix/ssp/ad/e/y/a/e;)Ljava/util/List;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/ubix/ssp/ad/d/a;

    invoke-direct {v1}, Lcom/ubix/ssp/ad/d/a;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ubix/ssp/ad/d/a;->r:Z

    iget-wide v2, p1, Lcom/ubix/ssp/ad/e/y/a/e;->e:J

    iput-wide v2, v1, Lcom/ubix/ssp/ad/d/a;->q:J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(ILcom/ubix/ssp/ad/d/a;)V
    .locals 0

    .line 4
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 5
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V
    .locals 0

    .line 6
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 7
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/a$a0;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/a$a0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ubix/ssp/ad/a$a0;",
            ")V"
        }
    .end annotation

    .line 8
    :try_start_0
    iget-object v0, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v7, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->J:Ljava/lang/String;

    new-instance v0, Lcom/ubix/ssp/ad/a$h;

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move v2, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ubix/ssp/ad/a$h;-><init>(Lcom/ubix/ssp/ad/a;ILcom/ubix/ssp/ad/d/a;Landroid/content/Context;Ljava/util/HashMap;Lcom/ubix/ssp/ad/a$a0;)V

    move-object v8, v0

    new-instance v0, Lcom/ubix/ssp/ad/a$i;

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move v2, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ubix/ssp/ad/a$i;-><init>(Lcom/ubix/ssp/ad/a;ILcom/ubix/ssp/ad/d/a;Landroid/content/Context;Ljava/util/HashMap;Lcom/ubix/ssp/ad/a$a0;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v6, v8

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ubix/ssp/ad/e/a0/d$e;Lcom/ubix/ssp/ad/e/a0/d$d;Lcom/ubix/ssp/ad/e/a0/d$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;)V
    .locals 20

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->C()I

    move-result v0

    move-object/from16 v1, p0

    iget v2, v1, Lcom/ubix/ssp/ad/a;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->I()I

    move-result v0

    :cond_0
    move v5, v0

    and-int/lit8 v0, v5, 0x6

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->W()D

    move-result-wide v2

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v6

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->i0()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    :goto_0
    move-wide v8, v2

    goto :goto_2

    :cond_1
    and-int/lit8 v0, v5, 0x20

    const/16 v2, 0x20

    if-eq v0, v2, :cond_6

    and-int/lit8 v0, v5, 0x10

    const/16 v2, 0x10

    if-eq v0, v2, :cond_6

    and-int/lit8 v0, v5, 0x44

    const/16 v2, 0x44

    if-eq v0, v2, :cond_6

    and-int/lit16 v0, v5, 0x84

    const/16 v2, 0x84

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v5, 0x2

    if-ne v0, v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->W()D

    move-result-wide v2

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v5, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    and-int/lit8 v0, v5, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->v()D

    move-result-wide v2

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->i0()D

    move-result-wide v2

    goto :goto_0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->Z()I

    move-result v7

    const/4 v0, 0x1

    if-ne v7, v0, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->F()[I

    move-result-object v0

    :goto_3
    move-object v11, v0

    goto :goto_4

    :cond_7
    new-array v0, v0, [I

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->T()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    goto :goto_3

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->h0()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->V()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->X()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->B()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->A()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->U()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->L0()D

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->C0()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/ubix/ssp/ad/d/l;->D0()Z

    move-result v19

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v19}, Lcom/ubix/ssp/ad/b;->a(IIIDI[IILjava/lang/String;Ljava/lang/String;IDZZ)V

    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/x/d;)V
    .locals 5

    .line 10
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    :try_start_0
    iget v2, p1, Lcom/ubix/ssp/ad/e/x/d;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x190

    const-string v4, "\u54cd\u5e94\u5f02\u5e38\uff0c\u8bf7\u6839\u636e\u8fd4\u56de\u7801\u68c0\u67e5\u95ee\u9898"

    if-lt v2, v3, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/ubix/ssp/ad/e/x/d;->c:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    invoke-static {v2, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v2, p1, Lcom/ubix/ssp/ad/e/x/d;->e:Ljava/lang/Exception;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/ubix/ssp/ad/e/x/d;->b:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/x/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/ubix/ssp/ad/e/x/d;->c:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    invoke-static {v2, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string p1, "\u8bf7\u6c42\u53c2\u6570\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u4f20\u5165\u7684\u5e7f\u544a\u53c2\u6570\u662f\u5426\u6b63\u786e"

    const/4 v2, 0x2

    invoke-static {v2, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/y/a/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11
    const/16 v0, 0x1450

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    const/16 v0, 0x13ec

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    return-void
.end method

.method public b(Lcom/ubix/ssp/open/AdError;)V
    .locals 4

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "ubix_tx_ad_source"

    :try_start_1
    iget-object v3, p0, Lcom/ubix/ssp/ad/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "EVENT_ATTRS"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/ubix/ssp/ad/e/a0/a0/a;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ubix/ssp/ad/e/w/e;->e(Ljava/util/HashMap;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    move-object v2, p1

    check-cast v2, Lcom/ubix/ssp/ad/e/a0/a0/a;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ubix/ssp/ad/e/w/e;->e(Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 13
    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->j()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/d/a;)Z
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/s/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->f()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/h;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/z/h;->a()V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 15
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/a;->g:Z

    const-string v0, "__MULTI_CLICK_KEY__"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->s()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->t()V

    :goto_0
    return p1
.end method

.method public b(Lcom/ubix/ssp/ad/e/y/a/a;)Z
    .locals 2

    .line 16
    const/4 v0, 0x0

    :try_start_0
    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3ed

    if-eq p1, v1, :cond_0

    const/16 v1, 0xfa4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2329

    if-eq p1, v1, :cond_0

    const/16 v1, 0x232a

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v0

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7db
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x177c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V
    .locals 0

    .line 1
    const-string p3, "onlyFinish"

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/ubix/ssp/ad/d/a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    :try_start_0
    sget-boolean v0, Lcom/ubix/ssp/ad/d/b;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/q/a;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/q/a;

    move-result-object v0

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/w/q/a;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public c(Lcom/ubix/ssp/ad/e/y/a/e;)V
    .locals 3

    .line 4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/ad/e/y/a/e;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    if-nez p1, :cond_0

    const-string p1, "Ads\u89e3\u6790\u5f02\u5e38"

    const/4 v2, 0x7

    invoke-static {v2, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/a;->k(Lcom/ubix/ssp/ad/d/a;)V

    const/4 p1, 0x5

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/ubix/ssp/ad/e/a0/a0/b; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/a0/b;->a()Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public c(Lcom/ubix/ssp/open/AdError;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    move-object v2, p1

    check-cast v2, Lcom/ubix/ssp/ad/e/a0/a0/a;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ubix/ssp/ad/e/w/e;->d(Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/ad/e/y/a/g$c;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/g$c;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public d(Lcom/ubix/ssp/ad/e/y/a/e;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/y/a/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/ubix/ssp/ad/d/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/e/y/a/e;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/ubix/ssp/ad/d/a;

    iget-boolean v5, v4, Lcom/ubix/ssp/ad/d/a;->r:Z

    if-eqz v5, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, v4, Lcom/ubix/ssp/ad/d/a;->q:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/b;

    invoke-direct {v0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/b;-><init>(Lcom/ubix/ssp/open/AdError;)V

    throw v0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/ubix/ssp/ad/a;->j(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/AdError;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v6, v4, Lcom/ubix/ssp/ad/d/a;->h:Ljava/lang/String;

    iput-object v6, p0, Lcom/ubix/ssp/ad/a;->l:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/ubix/ssp/ad/e/a0/a0/b;

    invoke-direct {p1, v5}, Lcom/ubix/ssp/ad/e/a0/a0/b;-><init>(Lcom/ubix/ssp/open/AdError;)V

    throw p1

    :cond_5
    invoke-direct {p0, v4}, Lcom/ubix/ssp/ad/a;->h(Lcom/ubix/ssp/ad/d/a;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/ubix/ssp/ad/d/a;->h:Ljava/lang/String;

    iput-object v5, p0, Lcom/ubix/ssp/ad/a;->l:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/16 p1, 0xb

    const-string v0, "\u5408\u89c4\u4fe1\u606f\u7f3a\u5931"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/a0/b;

    invoke-direct {v0, p1}, Lcom/ubix/ssp/ad/e/a0/a0/b;-><init>(Lcom/ubix/ssp/open/AdError;)V

    throw v0

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    return-object p1
.end method

.method public d(Lcom/ubix/ssp/ad/d/a;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p1, Lcom/ubix/ssp/ad/d/a;->n:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ubix/ssp/ad/d/a;->m:Ljava/lang/String;

    const-string v2, "__AUCTION_PRICE__"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    const/16 v1, 0x65

    invoke-virtual {p0, p1, v0, v1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    return-void
.end method

.method public d(Lcom/ubix/ssp/open/AdError;)V
    .locals 3

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/a;->q:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    move-object v2, p1

    check-cast v2, Lcom/ubix/ssp/ad/e/a0/a0/a;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ubix/ssp/ad/e/w/e;->b(Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-interface {v0, v1, p1}, Lcom/ubix/ssp/ad/e/w/e;->a(Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/ubix/ssp/ad/d/a;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v1

    iget p1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {v1, p1}, Lcom/ubix/ssp/ad/e/s/d;->c(I)Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->e()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public e(Lcom/ubix/ssp/ad/e/y/a/e;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/y/a/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/ubix/ssp/ad/d/a;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/y/a/e;->c:[Lcom/ubix/ssp/ad/e/y/a/a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iget-object v5, p1, Lcom/ubix/ssp/ad/e/y/a/e;->b:Ljava/lang/String;

    const-string v6, "__AUCTION_PRICE__"

    invoke-virtual {p0, v3, v5, v6}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/lang/String;Ljava/lang/String;)Lcom/ubix/ssp/ad/d/a;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 8

    .line 3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    :try_start_0
    iget-wide v2, p0, Lcom/ubix/ssp/ad/a;->m:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ubix/ssp/ad/a;->m:J

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "auction_price"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/a;->b([B)Ljava/lang/String;

    move-result-object v4

    :cond_1
    sget-object v5, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "price="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";encrypt="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v3, "request_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v2, p0, Lcom/ubix/ssp/ad/a;->k:Ljava/lang/String;

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    const/16 v3, 0x8

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/y/a/a;->a([B)Lcom/ubix/ssp/ad/e/y/a/a;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v4}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/lang/String;Ljava/lang/String;)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/ubix/ssp/ad/d/a;->n:Z

    iget-object v2, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->j(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/AdError;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "ubix_sp_gold"

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ubix/ssp/ad/a;->A:J

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/a;->k(Lcom/ubix/ssp/ad/d/a;)V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    goto :goto_2

    :cond_3
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :goto_3
    const-string v2, "\u5e7f\u544a\u89e3\u6790\u5f02\u5e38"

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public f(Lcom/ubix/ssp/ad/d/a;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p1, Lcom/ubix/ssp/ad/d/a;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/ubix/ssp/ad/d/a;->u:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/c;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object v1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/k;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v1

    iget p1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {v1, p1}, Lcom/ubix/ssp/ad/e/s/d;->c(I)Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p1, 0x10

    return p1

    :pswitch_1
    return v3

    :pswitch_2
    const/16 p1, 0x20

    return p1

    :pswitch_3
    const/4 p1, 0x4

    return p1

    :cond_5
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public g(Lcom/ubix/ssp/ad/d/a;)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    :try_start_0
    iget-boolean v2, p1, Lcom/ubix/ssp/ad/d/a;->n:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/ubix/ssp/ad/d/a;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    :try_start_1
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->m:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/a;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-wide v0

    :cond_1
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-wide v0, p1, Lcom/ubix/ssp/ad/e/y/a/a;->e:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-wide v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u6b64\u5e7f\u544a\u4e3a\u5382\u5546\u5e94\u7528\u4e0b\u8f7d\uff0c\u5141\u8bb8\u81ea\u52a8\u4e0b\u8f7d"

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public i()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/a;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/a;->j:J

    const/4 v0, 0x0

    return v0
.end method

.method public i(Lcom/ubix/ssp/ad/d/a;)Z
    .locals 4

    .line 2
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->u:Lcom/ubix/ssp/ad/e/y/a/a$b$m;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$m;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget-object v3, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/c;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public abstract j(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/AdError;
.end method

.method public j()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    return-object v0
.end method

.method public k(I)Ljava/lang/String;
    .locals 1

    .line 2
    const/16 v0, 0x21

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const-string p1, "unknown"

    return-object p1

    :cond_0
    const-string p1, "download"

    return-object p1

    :cond_1
    const-string p1, "h5"

    return-object p1

    :cond_2
    const-string p1, "dp"

    return-object p1

    :cond_3
    const-string p1, "none"

    return-object p1

    :cond_4
    const-string p1, "browser"

    return-object p1
.end method

.method public l(I)Ljava/lang/String;
    .locals 4

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/a;->i:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/a;->m:J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "EVENT_AD_TYPE"

    invoke-virtual {p0, v1, v0}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->j()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->a(Ljava/util/HashMap;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->b(Ljava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAd failed, errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->j()Ljava/util/HashMap;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/ubix/ssp/ad/e/a0/a0/a;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v0}, Lcom/ubix/ssp/ad/e/w/e;->c(Ljava/util/HashMap;ILjava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, p1}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ubix/ssp/ad/e/y/a/d;

    move-result-object p1

    if-eqz p1, :cond_4

    :try_start_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/f;)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->j()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/ubix/ssp/ad/e/w/e;->h(Ljava/util/HashMap;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/a;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    if-eqz p1, :cond_5

    const/16 p1, 0xc

    const-string v0, "\u8bf7\u6c42\u53c2\u6570\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u4f20\u5165\u7684\u5e7f\u544a\u53c2\u6570\u662f\u5426\u6b63\u786e"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->j()Ljava/util/HashMap;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/ubix/ssp/ad/e/a0/a0/a;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, v3, p1}, Lcom/ubix/ssp/ad/e/w/e;->c(Ljava/util/HashMap;ILjava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method public m()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.ubix.ssp.open.comm.AdActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "dance"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public m(I)V
    .locals 2

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/a;->i:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/a;->m:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/a;->q:Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/x/g;->b()Lcom/ubix/ssp/ad/e/x/g;

    sget-object v0, Lcom/ubix/ssp/ad/e/x/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/a$k;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/a$k;-><init>(Lcom/ubix/ssp/ad/a;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/a;->z()V

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/a;->q:Z

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/a;->q:Z

    return-void
.end method

.method public q()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/a;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "EVENT_DURATION"

    invoke-virtual {p0, v1, v0}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->o(Ljava/util/HashMap;)V

    return-void
.end method

.method public r()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/a;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "EVENT_DURATION"

    invoke-virtual {p0, v1, v0}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->i(Ljava/util/HashMap;)V

    return-void
.end method

.method public s()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/a;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "EVENT_DURATION"

    invoke-virtual {p0, v1, v0}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method public t()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/a;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "EVENT_DURATION"

    invoke-virtual {p0, v1, v0}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->d(Ljava/util/HashMap;)V

    return-void
.end method

.method public u()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/a;->n:J

    iget-wide v2, p0, Lcom/ubix/ssp/ad/a;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "EVENT_DURATION"

    invoke-virtual {p0, v1, v0}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->m(Ljava/util/HashMap;)V

    return-void
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->f(Ljava/util/HashMap;)V

    return-void
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->n(Ljava/util/HashMap;)V

    return-void
.end method

.method public x()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->g(Ljava/util/HashMap;)V

    return-void
.end method

.method public y()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/a;->o:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/a;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "EVENT_DURATION"

    invoke-virtual {p0, v1, v0}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->t:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->k(Ljava/util/HashMap;)V

    return-void
.end method
